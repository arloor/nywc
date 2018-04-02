package com.arloor.jianbujing.model;

import com.arloor.jianbujing.domain.Comment;
import com.arloor.jianbujing.domain.Imageinfo;

import java.util.List;

public class ImageInfoWithComments {
    private Imageinfo imageinfo;
    private List<Comment> comments;

    public Imageinfo getImageinfo() {
        return imageinfo;
    }

    public void setImageinfo(Imageinfo imageinfo) {
        this.imageinfo = imageinfo;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
