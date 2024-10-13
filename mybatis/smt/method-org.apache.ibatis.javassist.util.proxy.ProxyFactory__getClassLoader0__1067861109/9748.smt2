(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2029 0)
(declare-sort var3876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var2029) ClassObject)
(declare-fun interfaces/-1028346880 (var2029) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-const null-var2029 var2029)
(declare-const null-var3876 var3876)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var83 var2029) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var83 null-var2029)))
(define-const var2841 var3876 null-var3876) ; Statement: r11 = null 
(define-const var3358 ClassObject (superClass/-1028346880 var83)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (= var3358 null-ClassObject)) ; Cond: $r1 == null 
(define-const var156 (Array Int ClassObject) (interfaces/-1028346880 var83)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto (branch) 
(assert (not (= var156 null-__Array__Int__ClassObject__))) ; Negate: Cond: $r2 == null  
(define-const var3868 (Array Int ClassObject) (interfaces/-1028346880 var83)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var885 Int (getLength-Arr-ClassObject-1 var3868)) ; Statement: $i0 = lengthof $r5 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var885 0)) ; Cond: $i0 <= 0 
 ; Statement: if r11 != null goto return r11 
(assert (not (= var2841 null-var3876))) ; Cond: r11 != null 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int)}
; {var2029=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var83=r0, var3876=java.lang.ClassLoader, var2841=r11, var3358=$r1, var156=$r2, var3868=$r5, var885=$i0}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2029, r0=var83, java.lang.ClassLoader=var3876, r11=var2841, $r1=var3358, $r2=var156, $r5=var3868, $i0=var885}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r11 = null;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto (branch);	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i0 = lengthof $r5;	if $i0 <= 0 goto (branch);	if r11 != null goto return r11;	return r11
;block_num 5