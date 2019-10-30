package com.wyu.controller;

import org.aspectj.weaver.ast.Var;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.jws.WebParam;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
    public String fileDown(){

        return "";
    }




}
