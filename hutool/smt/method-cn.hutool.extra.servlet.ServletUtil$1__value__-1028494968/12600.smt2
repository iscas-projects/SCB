(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort var3068 0)
(declare-sort var3505 0)
(declare-sort var2110 0)
(declare-sort var1355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$request/-171360921 (var283) var3505)
(declare-fun var3505_getParameterValues/1435641857 (var3505 String) (Array Int String))
(declare-fun var2110_isEmpty/916532361 ((Array Int var1355)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1355__ ((Array Int String)) (Array Int var1355))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var283 var283)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var200 var283) ; Statement: r0 := @this: cn.hutool.extra.servlet.ServletUtil$1 
(assert (not (= var200 null-var283)))
(declare-const var1047 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1047 null-String)))
(declare-const var2812 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var2812 null-ClassObject)))
(define-const var2900 var3505 (val$request/-171360921 var200)) ; Statement: $r2 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request> 
(define-const var1075 (Array Int String) (var3505_getParameterValues/1435641857 var2900 var1047)) ; Statement: r12 = interfaceinvoke $r2.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1) 
(define-const var809 Bool (var2110_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var1355__ var1075))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r12 
(assert (= (ite var809 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3874 Int (getLength-Arr-String-1 var1075)) ; Statement: $i0 = lengthof r12 
 ; Statement: if 1 != $i0 goto return r12 
(assert (not (not (= 1 var3874)))) ; Negate: Cond: 1 != $i0  
(define-const var1510 String (select var1075 0)) ; Statement: $r3 = r12[0] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {val$request/-171360921=([cn.hutool.extra.servlet.ServletUtil$1], javax.servlet.ServletRequest), var3505_getParameterValues/1435641857=([javax.servlet.ServletRequest, java.lang.String], java.lang.String[]), var2110_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var1355__=([java.lang.String[]], java.lang.Object[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var283=cn.hutool.extra.servlet.ServletUtil$1, var200=r0, var1047=r1, var3068=null_type, var2812=r11, var3505=javax.servlet.ServletRequest, var2900=$r2, var1075=r12, var2110=cn.hutool.core.util.ArrayUtil, var1355=java.lang.Object, var809=$z0, var3874=$i0, var1510=$r3}
; {cn.hutool.extra.servlet.ServletUtil$1=var283, r0=var200, r1=var1047, null_type=var3068, r11=var2812, javax.servlet.ServletRequest=var3505, $r2=var2900, r12=var1075, cn.hutool.core.util.ArrayUtil=var2110, java.lang.Object=var1355, $z0=var809, $i0=var3874, $r3=var1510}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.extra.servlet.ServletUtil$1;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.reflect.Type;	$r2 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request>;	r12 = interfaceinvoke $r2.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z0 == 0 goto $i0 = lengthof r12;	$i0 = lengthof r12;	if 1 != $i0 goto return r12;	$r3 = r12[0];	return $r3
;block_num 3