// pages/home/home.js

const app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    userInfo:{},
    openId:"",
    minebuttonmsg:"点击查看我的作品",
    imagelist: [],
    largeseconds: 0,
    smallseconds: 0,
    pageSize: 5//用于控制分页
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({ userInfo: app.globalData.userInfo});
    this.setData({ openId: app.globalData.openId });

    //更新数据库中的用户信息
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/user/updateuser?openid='+this.data.openId+"&nickname="+this.data.userInfo.nickName,
    })


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
  
  },
  /**
   * 事件处理函数
   */
  getmine:function(){
    console.log('--------点击刷新-------')
    wx.showNavigationBarLoading() //在标题栏中显示加载

    this.setData({ minebuttonmsg:"刷新查看更多"});

    var that = this;
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/user/viewmine?largeseconds=' + this.data.largeseconds + "&smallseconds=" + this.data.smallseconds + "&pageSize=" + this.data.pageSize + "&openid="+this.data.openId,
      method: "post",
      success: function (res) {
        console.info("select我的图片api调用状态码： " + res.statusCode);
        console.log("select我的图片api调用结果: ");
        console.log(res);
        if (res.data != "") {
          var images = res.data.concat(that.data.imagelist);
          that.setData({ imagelist: images });

          //设置最大最小seconds
          var tempsmallseconds = res.data[res.data.length - 1].seconds;
          if (tempsmallseconds < that.data.smallseconds || that.data.smallseconds==0)
            that.setData({ smallseconds: tempsmallseconds });
          var templargeseconds = res.data[0].seconds;
          if (templargeseconds > that.data.largeseconds)
            that.setData({ largeseconds: templargeseconds });
          console.log("最大最小秒数：" + that.data.largeseconds + ">" + that.data.smallseconds);
        }
        // console.log(that.data.imagelist);
      }
      , complete: function () {
        // complete
        wx.hideNavigationBarLoading() //完成停止加载
        wx.stopPullDownRefresh() //停止下拉刷新
      }
    }) 
  },
  //调整图片大小
  imageLoad: function (e) {
    var width = e.detail.width,    //获取图片真实宽度
      height = e.detail.height,
      ratio = width / height;    //图片的真实宽高比例
    var viewWidth = 750,           //设置图片显示宽度，左右留有16rpx边距
      viewHeight = 750 / ratio;    //计算的高度值
    var image = this.data.imagelist;
    //将图片的datadata-index作为image对象的key,然后存储图片的宽高值
    image[e.target.dataset.index].width = viewWidth;
    image[e.target.dataset.index].height = viewHeight;
    this.setData({
      images: image
    })
  },
  //图片被点击的事件
  tapimage: function (e) {
    var image = this.data.imagelist;
    console.log(image[e.target.dataset.index].key + " 被点击");
    wx.navigateTo({
      url: '../imagedetail/imagedetail?key=' + image[e.target.dataset.index].key + "&openid=" + image[e.target.dataset.index].openId + "&imageurl=" + image[e.target.dataset.index].imageURL,
    })
  }
  
})