
const util = require('../../utils/util.js')
const app=getApp();

Page({
  data: {
    logs: [],
    imagelist:[],
    largeseconds:0,
    smallseconds:0,
    pageSize:5//用于控制分页
  },
  getpublic:function(){
    
    wx.showNavigationBarLoading() //在标题栏中显示加载

    var that = this;
    wx.request({
      url: 'https://jianbujing.moontell.cn/api/imagelist/selectpublic?largeseconds=' + this.data.largeseconds + "&smallseconds=" + this.data.smallseconds + "&pageSize=" + this.data.pageSize,
      method: "post",
      success: function (res) {
        // console.info("select公开图片api调用状态码： " + res.statusCode);
        // console.log("select公开图片api调用结果: ");
        // console.log(res);
        if (res.data != "") {
          var images = res.data.concat(that.data.imagelist);
          that.setData({ imagelist: images });

          //设置最大最小seconds
          var tempsmallseconds = res.data[res.data.length - 1].seconds;
          if (tempsmallseconds < that.data.smallseconds || that.data.smallseconds == 0)
            that.setData({ smallseconds: tempsmallseconds });
          var templargeseconds = res.data[0].seconds;
          if (templargeseconds > that.data.largeseconds)
            that.setData({ largeseconds: templargeseconds });
          // console.log("最大最小秒数：" + that.data.largeseconds + ">" + that.data.smallseconds);
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
  onLoad: function () {
    this.setData({
      logs: (wx.getStorageSync('logs') || []).map(log => {
        return util.formatTime(new Date(log))
      })
    });
    console.log('--------第一次加载图片-------')
    this.getpublic();
  },
  //下拉刷新
  onPullDownRefresh() {
    console.log('--------下拉刷新-------')
    this.getpublic();
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
  tapimage:function(e){
    var image = this.data.imagelist;
    console.log("点击",image[e.target.dataset.index]);
    //如果是作者：
    if (image[e.target.dataset.index].openId == app.globalData.openId){
      wx.navigateTo({
        url: '../mineimage/mineimage?key=' + image[e.target.dataset.index].key + "&openId=" + image[e.target.dataset.index].openId + "&imageUrl=" + image[e.target.dataset.index].imageURL,
      })
    }
    else{
      wx.navigateTo({
        url: '../notmineimage/notmineimage?key=' + image[e.target.dataset.index].key + "&openId=" + image[e.target.dataset.index].openId + "&imageUrl=" + image[e.target.dataset.index].imageURL + "&curopenId=" + app.globalData.openId,
      })
    }
  }
  

})
