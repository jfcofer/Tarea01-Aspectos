package com.mycompany.seccionb;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;

@Aspect
public aspect AdapterAspect {

    @After("execution(void com.mycompany.seccionb.Target+.request()) && !execution(void com.mycompany.seccionb.Adaptado+.request())")
    public void interceptRequest(JoinPoint joinPoint) {
        Object target = joinPoint.getTarget();
        if (target instanceof Adaptado) {
            ((Adaptado) target).specificRequest();
        }
    }
}
