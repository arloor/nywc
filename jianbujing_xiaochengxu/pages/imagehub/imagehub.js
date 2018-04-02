//logs.js
const util = require('../../utils/util.js')

Page({
  data: {
    logs: [],
    imagelist:[],
    pageStart:1,//用于控制分页
    pageSize:7//用于控制分页
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
        var newpageStart = that.data.pageStart + that.data.pageSize;
        that.setData({ pageStart: newpageStart });
      }
    })
    
  },
  //下拉刷新
  onPullDownRefresh() {
    　　console.log('--------下拉刷新-------')
    　　wx.showNavigationBarLoading() //在标题栏中显示加载

        var that=this;
    　　wx.request({
        url: 'https://jianbujing.moontell.cn/api/imagelist/selectpublic?start='+this.data.pageStart,
        method: "post",
        success: function (res) {
          console.log("select所有公开图片api调用结果: ");
          console.log(res);
          console.info("select所有公开图片api调用状态码： " + res.statusCode);
          if (res.data!=""){
            var images = res.data.concat(that.data.imagelist);
            that.setData({ imagelist: images });
            var newpageStart = that.data.pageStart + that.data.pageSize;
            that.setData({ pageStart: newpageStart });
          }
          // console.log(that.data.imagelist);
        }
        ,complete: function () {
          // complete
          wx.hideNavigationBarLoading() //完成停止加载
          wx.stopPullDownRefresh() //停止下拉刷新
        }
    })    
  }
  ,
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
  }
  

})
