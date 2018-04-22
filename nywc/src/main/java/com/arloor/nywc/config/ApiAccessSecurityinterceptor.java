package com.arloor.nywc.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ApiAccessSecurityinterceptor implements HandlerInterceptor {
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //进行一下限制，禁止未授权的对api的访问
        //todo：完善这部分的认证代码，去掉注释
//        if(request.getHeader("token")==null){
//            response.addHeader("Content-Type" , "application/json;charset=UTF-8");
//            Writer writer=response.getWriter();
//            writer.write("{\"errcode\":600,\"errmsg\":\"未经授权的对翦不惊api的访问\"}");
//            writer.flush();
//            writer.close();
//            logger.info("阻止来自："+request.getRemoteAddr()+"对"+request.getRequestURI()+"未经授权的访问");
//            return false;
//        }
        return true;
    }
}
