//index.js
//获取应用实例

const app=getApp();

Page({
  data: {
    appinfo: ["翦不惊的小本本\r\n" , "为了美的设计\r\n", "from NJUlgh\r\n", "——2018.04.01\r\n"],
    userInfo: {}
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
        that.setData({
          userInfo: res.userInfo
        });
        app.globalData.userInfo=that.data.userInfo;
      },
      fail: function (failData) {
        console.info("用户拒绝授权");
      }
    })
  }
})
