// pages/mineimage/mineimage.js
const util = require('../../utils/util.js');
const app = getApp();

Page({

  /**
   * 页面的初始数据
   */
  data: {
    openId: null,
    key: null,
    imageUrl: null,
    widthheight: {},
    comments: [],
    imageinfo: {}
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      this.setData({
        openId: options.openId,
        key:options.key,
        imageUrl:options.imageUrl
      });
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
        console.info("获取图片信息以及评论的api调用状态码： " + res.statusCode);
        console.log("获取图片信息以及评论的api调用结果: ");
        console.log(res);

        that.setData({ imageinfo: res.data.imageinfo });
        that.setData({ comments: res.data.comments });
      }
    })
  },
  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    this.update();
  },
  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },
  reply: function (e) {
    console.log("======reply激发======");
    console.log("e.target.dataset", e.target.dataset);
    console.log("跳转到reply页面");
    wx.navigateTo({
      url: '../reply/reply?key=' + e.target.dataset.key + "&reply=" + e.target.dataset.reply + "&commentopenid=" + e.target.dataset.commentopenid + "&openid=" + this.data.openId + "&imageurl=" + this.data.imageUrl + "&comment=" + e.target.dataset.comment,
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
  formSubmitOwner: function (e) {
    //将formid保存到数据库
    util.saveFormId(e.detail.formId);


    console.log("======修改图片信息=====");
    // console.log('form发生了submit事件，携带数据为：', e.detail.value)
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/image/update',
      data: {
        "key": this.data.key,
        "openId": app.globalData.openId,
        "info": e.detail.value.info,
        "ispublic": e.detail.value.ispublic
      },
      header: { 'content-type': 'application/json' },
      method: "post",
      success: function (res) {
        // console.info("修改图片信息的api调用状态码： " + res.statusCode);
        // console.log("修改图片信息的api调用结果: ",res);
        wx.showToast({
          title: '修改信息成功',
          duration: 2000,
          complete: function () {
          }
        })
      }
    })
  }
})