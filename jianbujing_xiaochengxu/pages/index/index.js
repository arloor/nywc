//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    motto: '南大IP',
    userInfo: {},
    hasUserInfo: false,
    canIUse: wx.canIUse('button.open-type.getUserInfo')
  },
  //事件处理函数
  bindViewTap: function () {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  bindNavTap: function () {
    wx.navigateTo({
      url: '../home/home',
    })
  },
  onLoad: function () {
    var that=this;
    wx.getUserInfo({
      success: function (res) {
        app.globalData.userInfo = res.userInfo;
        that.setData({userInfo: res.userInfo})
      },
      fail: function (failData) {
        console.info("用户拒绝授权");
      }
    })
  }
})
