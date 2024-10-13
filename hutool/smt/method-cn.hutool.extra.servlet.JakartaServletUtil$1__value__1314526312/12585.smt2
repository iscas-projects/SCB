(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1024 0)
(declare-sort var2354 0)
(declare-sort var2653 0)
(declare-sort var2638 0)
(declare-sort var3913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$request/1565802319 (var1024) var2653)
(declare-fun var2653_getParameterValues/142980261 (var2653 String) (Array Int String))
(declare-fun var2638_isEmpty/916532361 ((Array Int var3913)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3913__ ((Array Int String)) (Array Int var3913))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1024 var1024)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3576 var1024) ; Statement: r0 := @this: cn.hutool.extra.servlet.JakartaServletUtil$1 
(assert (not (= var3576 null-var1024)))
(declare-const var3344 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3344 null-String)))
(declare-const var3963 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3963 null-ClassObject)))
(define-const var1295 var2653 (val$request/1565802319 var3576)) ; Statement: $r2 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request> 
(define-const var3201 (Array Int String) (var2653_getParameterValues/142980261 var1295 var3344)) ; Statement: r12 = interfaceinvoke $r2.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1) 
(define-const var15 Bool (var2638_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var3913__ var3201))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r12 
(assert (= (ite var15 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2371 Int (getLength-Arr-String-1 var3201)) ; Statement: $i0 = lengthof r12 
 ; Statement: if 1 != $i0 goto return r12 
(assert (not (= 1 var2371))) ; Cond: 1 != $i0 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {val$request/1565802319=([cn.hutool.extra.servlet.JakartaServletUtil$1], jakarta.servlet.ServletRequest), var2653_getParameterValues/142980261=([jakarta.servlet.ServletRequest, java.lang.String], java.lang.String[]), var2638_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var3913__=([java.lang.String[]], java.lang.Object[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1024=cn.hutool.extra.servlet.JakartaServletUtil$1, var3576=r0, var3344=r1, var2354=null_type, var3963=r11, var2653=jakarta.servlet.ServletRequest, var1295=$r2, var3201=r12, var2638=cn.hutool.core.util.ArrayUtil, var3913=java.lang.Object, var15=$z0, var2371=$i0}
; {cn.hutool.extra.servlet.JakartaServletUtil$1=var1024, r0=var3576, r1=var3344, null_type=var2354, r11=var3963, jakarta.servlet.ServletRequest=var2653, $r2=var1295, r12=var3201, cn.hutool.core.util.ArrayUtil=var2638, java.lang.Object=var3913, $z0=var15, $i0=var2371}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.extra.servlet.JakartaServletUtil$1;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.reflect.Type;	$r2 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request>;	r12 = interfaceinvoke $r2.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z0 == 0 goto $i0 = lengthof r12;	$i0 = lengthof r12;	if 1 != $i0 goto return r12;	return r12
;block_num 3