package com.arloor.nywc.utils;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;

/**
 * Created by arloor on 17-5-7.
 */



@Component
public class MyHttpClient {
    private  CloseableHttpClient client;

    /**
     * 构造方法
     * 可以使用ssl
     */
    public MyHttpClient() {
    // Create a trust manager that does not validate certificate chains
        TrustManager[] trustAllCerts = new TrustManager[]{
                new X509TrustManager() {
                    public X509Certificate[] getAcceptedIssuers() {
                        return null;
                    }

                    public void checkClientTrusted(X509Certificate[] certs, String authType) {
                        // don't check
                    }

                    public void checkServerTrusted(X509Certificate[] certs, String authType) {
                        // don't check
                    }
                }
        };

        SSLContext ctx = null;
        try {
            ctx = SSLContext.getInstance("TLS");
            ctx.init(null, trustAllCerts, null);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (KeyManagementException e) {
            e.printStackTrace();
        }


        LayeredConnectionSocketFactory sslSocketFactory = new SSLConnectionSocketFactory(ctx);

        RequestConfig requestConfig = RequestConfig.custom().setCookieSpec(CookieSpecs.STANDARD_STRICT).build();
        client = HttpClients.custom().setDefaultRequestConfig(requestConfig).setSSLSocketFactory(sslSocketFactory).build();
    }

    /**
     * 发送post请求，请求体json
     * @param apiUrl
     * @param json
     * @return
     */
    public String doPostJson(String apiUrl, String json) {
        String httpStr = null;
        HttpPost httpPost = new HttpPost(apiUrl);
        CloseableHttpResponse response = null;

        try {
            StringEntity stringEntity = new StringEntity(json,"UTF-8");//解决中文乱码问题
            stringEntity.setContentEncoding("UTF-8");
            stringEntity.setContentType("application/json");
            httpPost.setEntity(stringEntity);
            response = client.execute(httpPost);
            HttpEntity entity = response.getEntity();
            httpStr = EntityUtils.toString(entity, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (response != null) {
                try {
                    EntityUtils.consume(response.getEntity());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return httpStr;
    }

    /**
     * 发送 get请求
     */
    public String get(String getUrl) {

        String result="";
        try {
            // 创建httpget.
            HttpGet httpget = new HttpGet(getUrl);
            // 执行get请求.
            CloseableHttpResponse response = client.execute(httpget);
            try {
                // 获取响应实体
                HttpEntity entity = response.getEntity();
//                System.out.println("--------------------------------------");
                // 打印响应状态
//                System.out.println(response.getStatusLine());
                if (entity != null) {
                    // 打印响应内容长度
//                    System.out.println("Response content length: " + entity.getContentLength());
                    // 打印响应内容
                    result= EntityUtils.toString(entity);
//                    System.out.println("Response content: " +result);
                }
//                System.out.println("------------------------------------");
            } finally {
                if (response != null) {
                    try {
                        EntityUtils.consume(response.getEntity());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            //由于client需要服用，不能关闭
            // 关闭连接,释放资源
//            try {
//                client.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
        }
        return result;
    }


}