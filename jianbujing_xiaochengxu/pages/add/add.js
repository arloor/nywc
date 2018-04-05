const qiniuUploader = require("../../utils/qiniuUploader");
const util = require('../../utils/util.js');
//index.js

// 初始化七牛相关参数
function initQiniu() {
  var options = {
    region: 'NCN', // 华北区
    uptokenURL: 'https://jianbujing.moontell.cn/api/qiniu/uptoken',
    domain: 'http://om319jsda.bkt.clouddn.com',
    shouldUseQiniuFileName: true
  };
  qiniuUploader.init(options);
}

//获取应用实例
var app = getApp()
Page({
  data: {
    imageObject: {},
    progress:0
  },
  //事件处理函数
  onLoad: function () {
    // console.log('onLoad')
    var that = this;
  },
  didPressChooesImage: function () {
    var that = this;
    didPressChooesImage(that);
  },
  formSubmit: function (e) {
    //将formid保存到数据库
    util.saveFormId(e.detail.formId);

    console.log('form发生了submit事件，携带数据为：', e.detail.value)
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/image/update',
      data: {
        "key": this.data.imageObject.key,
        "openId": app.globalData.openId,
        "info": e.detail.value.info,
        "ispublic": e.detail.value.ispublic
      },
      header: { 'content-type': 'application/json' },
      method: "post",
      success: function (res) {
        wx.showToast({
          title: '修改信息成功',
        })
        // console.log("修改图片信息的api调用结果: ");
        // console.log(res);
        // console.info("修改图片信息的api调用状态码： " + res.statusCode);
      }
    })
  },
  formReset: function () {
    console.log('form发生了reset事件')
  }
});

function didPressChooesImage(that) {
  initQiniu();
  // 微信 API 选文件
  wx.chooseImage({
    count: 1,
    success: function (res) {
      var filePath = res.tempFilePaths[0];
      // 交给七牛上传
      qiniuUploader.upload(filePath, (res) => {
        that.setData({
          'imageObject': res
        });
        //调用存储到数据库的api
        wx.request({
          url: 'https://jianbujing.moontell.cn/api/image/insert',
          data:{
            "key": that.data.imageObject.key,
            "imageURL": that.data.imageObject.imageURL,
            "openId":app.globalData.openId,
            "nickName":app.globalData.userInfo.nickName,
            "info":""
          },
          header: { 'content-type': 'application/json' },
          method:"post",
          success:function(res){
            // console.log("插入图片信息的api调用结果: ");
            // console.log(res);
            // console.info("插入图片信息的api调用状态码： "+res.statusCode);
            wx.showToast({
              title: '上传成功',
            })
          }
        })
      }, (error) => {
        console.error('error: ' + JSON.stringify(error));
      },
        // , {
        //     region: 'NCN', // 华北区
        //     uptokenURL: 'https://[yourserver.com]/api/uptoken',
        //     domain: 'http://[yourBucketId].bkt.clouddn.com',
        //     shouldUseQiniuFileName: false
        //     key: 'testKeyNameLSAKDKASJDHKAS'
        //     uptokenURL: 'myServer.com/api/uptoken'
        // }
        null,// 可以使用上述参数，或者使用 null 作为参数占位符
        (progress) => {
          that.setData({ progress: progress.progress})
          console.log('上传进度', progress.progress)
          // console.log('已经上传的数据长度', progress.totalBytesSent)
          // console.log('预期需要上传的数据总长度', progress.totalBytesExpectedToSend)
        }
      );
    }
  })
  that.setData({ progress: 0 })
}