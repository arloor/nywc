const app=getApp();
function formatTime(date) {
  var year = date.getFullYear()
  var month = date.getMonth() + 1
  var day = date.getDate()

  var hour = date.getHours()
  var minute = date.getMinutes()
  var second = date.getSeconds();


  return [year, month, day].map(formatNumber).join('/') + ' ' + [hour, minute, second].map(formatNumber).join(':')
}

function formatNumber(n) {
  n = n.toString()
  return n[1] ? n : '0' + n
}

function saveFormId(formId){
  //todo：这里保存用户的formid，包括openid和formid
  
  var data={
    openId:app.globalData.openId,
    formId: formId
  }
  console.log("====开始保存formid",data,"======");
  if (data.formId =="the formId is a mock one"){
    console.log("不保存虚假的formid，返回！");
    return;
  }
  wx.request({
    url: 'https://jianbujing.moontell.cn/api/weixin/saveformid',
    data:data
  })
}

module.exports = {
  formatTime: formatTime,
  saveFormId: saveFormId
}
