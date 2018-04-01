//app.js
App({
  onLaunch: function () {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    //
    var that = this;
    wx.login({
      success: function (res) {
        if (res.code) {
          //获取openId
          wx.request({
            url: 'https://api.weixin.qq.com/sns/jscode2session',
            data: {
              //小程序唯一标识
              appid: 'wx4dc6362275b751ba',
              //小程序的 app secret
              secret: 'b7906e3dfa3aa49eb56764e9697056d6',
              grant_type: 'authorization_code',
              js_code: res.code
            },
            method: 'GET',
            header: { 'content-type': 'application/json' },
            success: function (openIdRes) {
              console.info("登录成功返回的openId：" + openIdRes.data.openid);
              
              // 判断openId是否获取成功
              if (openIdRes.data.openid != null & openIdRes.data.openid != undefined) {
                that.globalData.openId = openIdRes.data.openid;
                console.info("app.globalData.openId： "+that.globalData.openId);
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
    //
  },
  globalData:{
    userInfo:null,
    openId:null
  }
})



