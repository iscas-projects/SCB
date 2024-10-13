(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var2957 0)
(declare-sort var2123 0)
(declare-sort var544 0)
(declare-sort var677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$request/1565802319 (var315) var2123)
(declare-fun var2123_getParameterValues/142980261 (var2123 String) (Array Int String))
(declare-fun var544_isEmpty/916532361 ((Array Int var677)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var677__ ((Array Int String)) (Array Int var677))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var315 var315)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3221 var315) ; Statement: r0 := @this: cn.hutool.extra.servlet.JakartaServletUtil$1 
(assert (not (= var3221 null-var315)))
(declare-const var1750 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1750 null-String)))
(declare-const var3926 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3926 null-ClassObject)))
(define-const var1002 var2123 (val$request/1565802319 var3221)) ; Statement: $r2 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request> 
(define-const var2584 (Array Int String) (var2123_getParameterValues/142980261 var1002 var1750)) ; Statement: r12 = interfaceinvoke $r2.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1) 
(define-const var1067 Bool (var544_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var677__ var2584))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r12 
(assert (= (ite var1067 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1722 Int (getLength-Arr-String-1 var2584)) ; Statement: $i0 = lengthof r12 
 ; Statement: if 1 != $i0 goto return r12 
(assert (not (not (= 1 var1722)))) ; Negate: Cond: 1 != $i0  
(define-const var2574 String (select var2584 0)) ; Statement: $r3 = r12[0] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {val$request/1565802319=([cn.hutool.extra.servlet.JakartaServletUtil$1], jakarta.servlet.ServletRequest), var2123_getParameterValues/142980261=([jakarta.servlet.ServletRequest, java.lang.String], java.lang.String[]), var544_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var677__=([java.lang.String[]], java.lang.Object[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var315=cn.hutool.extra.servlet.JakartaServletUtil$1, var3221=r0, var1750=r1, var2957=null_type, var3926=r11, var2123=jakarta.servlet.ServletRequest, var1002=$r2, var2584=r12, var544=cn.hutool.core.util.ArrayUtil, var677=java.lang.Object, var1067=$z0, var1722=$i0, var2574=$r3}
; {cn.hutool.extra.servlet.JakartaServletUtil$1=var315, r0=var3221, r1=var1750, null_type=var2957, r11=var3926, jakarta.servlet.ServletRequest=var2123, $r2=var1002, r12=var2584, cn.hutool.core.util.ArrayUtil=var544, java.lang.Object=var677, $z0=var1067, $i0=var1722, $r3=var2574}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.extra.servlet.JakartaServletUtil$1;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.reflect.Type;	$r2 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request>;	r12 = interfaceinvoke $r2.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z0 == 0 goto $i0 = lengthof r12;	$i0 = lengthof r12;	if 1 != $i0 goto return r12;	$r3 = r12[0];	return $r3
;block_num 3