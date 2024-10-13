(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1191 0)
(declare-sort var1541 0)
(declare-sort var3454 0)
(declare-sort var3809 0)
(declare-sort var1958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$request/-171360921 (var1191) var3454)
(declare-fun var3454_getParameterValues/1435641857 (var3454 String) (Array Int String))
(declare-fun var3809_isEmpty/916532361 ((Array Int var1958)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1958__ ((Array Int String)) (Array Int var1958))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1191 var1191)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1649 var1191) ; Statement: r0 := @this: cn.hutool.extra.servlet.ServletUtil$1 
(assert (not (= var1649 null-var1191)))
(declare-const var780 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var780 null-String)))
(declare-const var268 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var268 null-ClassObject)))
(define-const var2062 var3454 (val$request/-171360921 var1649)) ; Statement: $r2 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request> 
(define-const var3366 (Array Int String) (var3454_getParameterValues/1435641857 var2062 var780)) ; Statement: r12 = interfaceinvoke $r2.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1) 
(define-const var1770 Bool (var3809_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var1958__ var3366))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r12 
(assert (= (ite var1770 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1654 Int (getLength-Arr-String-1 var3366)) ; Statement: $i0 = lengthof r12 
 ; Statement: if 1 != $i0 goto return r12 
(assert (not (= 1 var1654))) ; Cond: 1 != $i0 
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {val$request/-171360921=([cn.hutool.extra.servlet.ServletUtil$1], javax.servlet.ServletRequest), var3454_getParameterValues/1435641857=([javax.servlet.ServletRequest, java.lang.String], java.lang.String[]), var3809_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var1958__=([java.lang.String[]], java.lang.Object[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1191=cn.hutool.extra.servlet.ServletUtil$1, var1649=r0, var780=r1, var1541=null_type, var268=r11, var3454=javax.servlet.ServletRequest, var2062=$r2, var3366=r12, var3809=cn.hutool.core.util.ArrayUtil, var1958=java.lang.Object, var1770=$z0, var1654=$i0}
; {cn.hutool.extra.servlet.ServletUtil$1=var1191, r0=var1649, r1=var780, null_type=var1541, r11=var268, javax.servlet.ServletRequest=var3454, $r2=var2062, r12=var3366, cn.hutool.core.util.ArrayUtil=var3809, java.lang.Object=var1958, $z0=var1770, $i0=var1654}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.extra.servlet.ServletUtil$1;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.reflect.Type;	$r2 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request>;	r12 = interfaceinvoke $r2.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z0 == 0 goto $i0 = lengthof r12;	$i0 = lengthof r12;	if 1 != $i0 goto return r12;	return r12
;block_num 3