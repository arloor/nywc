//logs.js
const util = require('../../utils/util.js')

Page({
  data: {
    logs: [],
    imagelist:[]
  },
  onLoad: function () {
    this.setData({
      logs: (wx.getStorageSync('logs') || []).map(log => {
        return util.formatTime(new Date(log))
      })
    });

    var that=this;
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/imagelist/selectpublic',
      method: "post",
      success: function (res) {
        console.log("select所有公开图片api调用结果: ");
        console.log(res);
        console.info("select所有公开图片api调用状态码： " + res.statusCode);
        that.setData({ imagelist:res.data});
      }
    })
  }
})
