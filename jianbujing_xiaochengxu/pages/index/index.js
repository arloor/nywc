//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    appinfo: ["翦不惊的小本本\r\n" , "为了美的设计\r\n", "from NJUlgh\r\n", "——2018.04.01\r\n"],
    userInfo: {},
    openId:""
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
    //获得用户数据，并设置到app.globalData
    var that = this;
    wx.login({
      success: function (res) {
        if (res.code) {
          // //获取openId
          // wx.request({
          //   url: 'https://api.weixin.qq.com/sns/jscode2session',
          //   data: {
          //     //小程序唯一标识
          //     appid: '',
          //     //小程序的 app secret
          //     secret: '',
          //     grant_type: 'authorization_code',
          //     js_code: res.code
          //   },
          //   method: 'GET',
          //   header: { 'content-type': 'application/json' },
          wx.request({
            url:'https://jianbujing.moontell.cn/api/weixin/openid?js_code='+res.code,
            method:"get",
            success: function (openIdRes) {
              // console.info("登录成功返回的openId：" + openIdRes.data.openid);

              // 判断openId是否获取成功
              if (openIdRes.data.openid != null & openIdRes.data.openid != undefined) {
                app.globalData.openId = openIdRes.data.openid;
                that.setData({ openId: openIdRes.data.openid});
                console.info("openId： " + that.data.openId);
                wx.getUserInfo({
                  success: function (res) {
                    app.globalData.userInfo = res.userInfo;
                    that.setData({userInfo:res.userInfo});
                    console.info("nickName： " + that.data.userInfo.nickName);
                    console.info("avatarUrl: " + that.data.userInfo.avatarUrl);
                  },
                  fail: function (failData) {
                    console.info("用户拒绝授权");
                  }
                })
              } else {
                console.info("获取用户openId失败");
              }
            },
            fail: function (error) {
              console.info("获取用户openId失败");
              console.info(error);
            }
          })
        }
      }
    });
    //获得用户数据，并设置到app.globalData-----结束
  }
})
