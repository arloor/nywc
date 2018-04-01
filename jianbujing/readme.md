#翦不惊的小本本 小程序后端

##springboot ssl配置
使用了腾讯云的免费ssl证书   
将文件夹中用于tomcat的证书复制到`main/resources`文件夹下   
`server.port= 443`   
`server.ssl.key-store= classpath:jianbujing.moontell.cn.jks`   
`server.ssl.key-store-password=123456`  
`server.ssl.keyStoreType= PKCS12`  
`server.ssl.keyAlias= jianbujing.moontell.cn`  
注意：比较坑的是，使用jdk8来执行打包好的jar包会报错，必须使用jdk9  


下面的自建ssl证书被证明无用   
`keytool -genkey -alias jianbujing  -storetype PKCS12 -keyalg RSA -keysize 2048  -keystore keystore.p12`   
创建名为`keystore.p12`的密钥库，并将它移动到`main/resources`下。  

application.properties如下   
`server.port= 8443`  
`server.ssl.key-store= classpath:keystore.p12`  
`server.ssl.key-store-password= 123456`  
`server.ssl.keyStoreType= PKCS12`   
`server.ssl.keyAlias= jianbujing`   
