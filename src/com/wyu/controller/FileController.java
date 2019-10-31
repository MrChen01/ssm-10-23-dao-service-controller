package com.wyu.controller;

import com.wyu.pojo.FileBean;
import org.apache.commons.io.FileUtils;
import org.omg.CORBA.Request;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/29
 * Time: 22:20
 */

@Controller
@RequestMapping
public class FileController {

    @RequestMapping(value = "/upLoadFile", method = RequestMethod.POST, produces = {"application/text;charset=UTF-8"})
//    @ResponseBody
    public String fileUpLoad(@RequestParam("name") String name, @RequestParam("uploadfile") List<MultipartFile> uploadfile, Model model) {
        String uploadInfoReturn = "0";
        System.out.println("name--->" + name);

        if (!uploadfile.isEmpty() && uploadfile.size() != 0) {
            for (MultipartFile file : uploadfile) {
                System.out.println(file.getOriginalFilename());
                String path = "C:\\Users\\mi\\Desktop\\uploadfile\\";
                File fileDes = new File(path);
                if (!fileDes.exists()) {
                    fileDes.mkdirs();
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss-sss");
                String formatDate = simpleDateFormat.format(new Date());
                String fileName = name + formatDate + file.getOriginalFilename();
                uploadInfoReturn = "1";
                model.addAttribute("uploadInfoReturn", uploadInfoReturn);
                try {
                    System.out.println("-------->" + path + fileName);
                    file.transferTo(new File(path + fileName));
                } catch (IOException e) {
                    e.printStackTrace();
                    uploadInfoReturn = "0";
                }
            }
        }
        return "file_down_upload";
    }


    @RequestMapping(value = "/downFile")
    public String fileDown(Model model) {
        String path = "C:\\Users\\mi\\Desktop\\uploadfile";
        Queue<File> queue = new LinkedList<>();
        queue.offer(new File(path));

        List<FileBean> fileBeanList = new LinkedList<>();
        while (!queue.isEmpty()) {
            File poll = queue.poll();
            File[] files = poll.listFiles();
            for (File file : files) {
                if (file.isFile()) {
                    try {
                        FileBean fileBean = new FileBean(file.getCanonicalPath(), file.getName());
                        fileBeanList.add(fileBean);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                } else {
                    queue.offer(file);
                }
            }
        }

        fileBeanList.forEach(li -> System.out.println("---------->" + li.toString()));
        model.addAttribute("fileBeanList", fileBeanList);
        return "FileDownLoad";
    }


    @RequestMapping("/download")
    public ResponseEntity<byte[]> download(HttpServletRequest request, String filename) throws IOException {
        String path = "C:\\Users\\mi\\Desktop\\uploadfile\\";
        System.out.println("path路径为:----->" + path + filename);
        File file = new File(path + filename);
        HttpHeaders headers = new HttpHeaders();
        try {
            filename = this.getFilename(request, filename);
        } catch (Exception e) {
            e.printStackTrace();
        }
        headers.setContentDispositionFormData("attachment", filename);
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.OK);
    }

    //处理字符串编码
    //得到文件的名字方法
    public String getFilename(HttpServletRequest request, String filename) throws Exception {
        System.out.println("filename===" + filename);
        String[] IEBrowserKeyWord = {"MSIE", "Trident", "Edge"};
        String userAgent = request.getHeader("User-Agent");
        for (String keyWord : IEBrowserKeyWord) {
            if (userAgent.contains(keyWord)) {
                return URLEncoder.encode(filename, "UTF-8");
            }
        }
        return new String(filename.getBytes("UTF-8"), "ISO-8859-1");
    }

}
