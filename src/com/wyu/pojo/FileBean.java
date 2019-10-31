package com.wyu.pojo;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/30
 * Time: 20:14
 */
public class FileBean {
    private String filePath;
    private String fileName;

    public FileBean() {
    }

    public FileBean(String filePath, String fileName) {
        this.filePath = filePath;
        this.fileName = fileName;
    }

    @Override
    public String toString() {
        return "FileBean{" +
                "filePath='" + filePath + '\'' +
                ", fileName='" + fileName + '\'' +
                '}';
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
