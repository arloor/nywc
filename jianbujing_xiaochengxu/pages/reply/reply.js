// pages/reply/reply.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    key:"",
    commentopenid:"",
    reply:"",
    openid: "",
    imageURL: "",
    comment:"",
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      console.log("页面跳转options:",options);
      this.setData({
        key:options.key,
        commentopenid: options.commentopenid,
        reply: options.reply,
        openid:options.openid,
        imageURL:options.imageurl,
        comment:options.comment
      });
      console.log(this.data);
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
    console.log("======回复评论=====");
    console.log(e);
    console.log(e.detail.formId);
    var reply = e.detail.value.reply;
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/user/updatereply?openid=' + this.data.commentopenid + "&key=" + this.data.key + "&reply=" + reply,
    })
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/weixin/sendtemplatemessage',
      data: {
        touser: this.data.commentopenid,
        //template_id: "0Qh28GZNMujyYvtIFtMM4Iun4wsW4Vq-g0l7QCQCYtI",//评论提交成功通知
        template_id: "H0RMhfAjU4G_5KUH5EWap_2lg1Jb35Heb8ik9BKtniU",//评论回复通知
        page: "pages/imagedetail/imagedetail?openid=" + this.data.commentopenid + "&key=" + this.data.key + "&imageurl=" + this.data.imageURL,
        data: {
          "keyword1": {
            "value": this.data.comment,
            "color": "#173177"
          },
          "keyword2": {
            "value": this.data.reply,
            "color": "#173177"
          },
          "keyword3": {
            "value": this.data.openid,
            "color": "#173177"
          }
        },
        form_id: e.detail.formId
      },
      method: "post",
      success: function (res) {
        console.log(res);
      }
    })
    console.log("发送模板消息")
    //返回图片详情页
    wx.showToast({
      title: '回复成功',
      duration:2000,
      complete:function(){
        wx.navigateBack({
          
        })
      }
    })

  }
})