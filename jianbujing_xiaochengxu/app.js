//app.js
App({
  onLaunch: function () {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    //获得用户数据，并设置到app.globalData
    var that = this;
    wx.login({
      success: function (res) {
        if (res.code) {
          wx.request({
            url: 'https://jianbujing.moontell.cn/api/weixin/openid?js_code=' + res.code,
            method: "get",
            success: function (openIdRes) {
              console.log(openIdRes);
              // console.info("登录成功返回的openId：" + openIdRes.data.openid);

              // 判断openId是否获取成功
              if (openIdRes.data.openid != null & openIdRes.data.openid != undefined) {
                that.globalData.openId = openIdRes.data.openid;
                console.info("openId： " + that.globalData.openId);
                
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

  },
  globalData:{
    userInfo:null,
    openId:null
  }
})



