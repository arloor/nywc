// pages/reply/reply.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    key:"",
    commentopenid:"",
    reply:""
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      console.log("页面跳转options:",options);
      this.setData({
        key:options.key,
        commentopenid: options.commentopenid,
        reply: options.reply
      });
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  }
  ,
  formSubmitReply:function(e){
    console.log("======评论图片=====");
    console.log(e);
    var reply = e.detail.value.reply;
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/user/updatereply?openid=' + this.data.commentopenid + "&key=" + this.data.key + "&reply=" + reply,
    })
    //返回图片详情页
    wx.navigateBack({
    })
  }
})