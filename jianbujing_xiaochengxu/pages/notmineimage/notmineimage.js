// pages/notmineimage/notmineimage.js
var util = require('../../utils/util.js');

Page({

  /**
   * 页面的初始数据
   */
  data: {
    curopenId: null,
    mycomment: "",
    mycommentreply: "",
    openId: null,
    key: null,
    imageURL: null,
    widthheight: {},
    comments: [],
    imageinfo: {}
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log(options);
    this.setData({
      openId: options.openId,
      key: options.key,
      imageUrl: options.imageUrl,
      curopenId: options.curopenId
    });
    this.update();
  },
  update: function () {
    var that = this;

    wx.request({
      url: 'https://jianbujing.moontell.cn/api/image/viewdetail',
      data: {
        "key": this.data.key,
        "openId": this.data.openId
      },
      header: { 'content-type': 'application/json' },
      method: "post",
      success: function (res) {
        console.log("====成功获取图片和评论详情====");
        // console.info("获取图片信息以及评论的api调用状态码： " + res.statusCode);
        // console.log("获取图片信息以及评论的api调用结果: ");
        // console.log(res);

        that.setData({ imageinfo: res.data.imageinfo });
        for (var i = 0; i < res.data.comments.length; i++) {
          if (res.data.comments[i].commentopenid == that.data.curopenId) {
            console.log("当前评论者openid", res.data.comments[i].commentopenid);
            that.setData({ mycomment: res.data.comments[i].comment });
            that.setData({ mycommentreply: res.data.comments[i].reply });
            console.log("我的评论是", that.data.mycomment);
            res.data.comments.splice(i, 1);
            break;
          }
        }
        that.setData({ comments: res.data.comments });
      }
    })
  },
  //调整图片大小
  imageLoad: function (e) {
    var width = e.detail.width,    //获取图片真实宽度
      height = e.detail.height,
      ratio = width / height;    //图片的真实宽高比例
    var viewWidth = 750,           //设置图片显示宽度，左右留有16rpx边距
      viewHeight = 750 / ratio;    //计算的高度值
    var widthheight = this.data.widthheight;
    //将图片的datadata-index作为image对象的key,然后存储图片的宽高值
    widthheight.width = viewWidth;
    widthheight.height = viewHeight;
    this.setData({
      widthheight: widthheight
    })
  },
  formSubmitComment: function (e) {
    //将formid保存到数据库
    util.saveFormId(e.detail.formId);

    console.log("======评论图片=====");
    // console.log("submit",e);
    var mycomment = e.detail.value.mycomment;


    wx.request({
      url: 'https://jianbujing.moontell.cn/api/user/updatecomment?openid=' + this.data.curopenId + "&key=" + this.data.key + "&comment=" + mycomment,
    })
    console.log(this.data);
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/weixin/sendtemplatemessage',
      data: {
        data: {
          "keyword1": {
            "value": "您的作品被评论啦",
            "color": "#173177"
          },
          "keyword2": {
            "value": mycomment,
            "color": "#173177"
          }
        },
        "form_id": "{toreplaceforformid}",
        "touser": "{start}" + this.data.openId + "{end}",
        "template_id": "0Qh28GZNMujyYvtIFtMM4Iun4wsW4Vq-g0l7QCQCYtI",//评论提交成功通知
        //template_id: "H0RMhfAjU4G_5KUH5EWap_2lg1Jb35Heb8ik9BKtniU",//评论回复通知

        //调到/mineimage/mineimage
        "page": "pages/mineimage/mineimage?openId=" + this.data.openId + "&key=" + this.data.key + "&imageUrl=" + this.data.imageUrl
      },
      method: "post",
      success: function (res) {
        console.log("====发送模板消息结果", res.data, "====");
      }
    })
    wx.showToast({
      title: '评论成功',
      duration: 2000,
      complete: function () {
      }
    })
  }
  
})