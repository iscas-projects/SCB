(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var813 0)
(declare-sort var2032 0)
(declare-sort var1291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1291_getPackageName/1877938390 (String) String)
(declare-fun var2032_getDeclaringClass/893815379 (var2032) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2032 var2032)
(declare-const var2770 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2770 null-Int)))
(declare-const var2954 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2954 null-String)))
(declare-const var2434 var2032) ; Statement: r2 := @parameter2: java.lang.reflect.Member 
(assert (not (= var2434 null-var2032)))
(define-const var2627 Int (bv2nat (bvand ((_ int2bv 64) var2770) ((_ int2bv 64) 2)))) ; Statement: $i1 = i0 & 2 
 ; Statement: if $i1 == 0 goto $i2 = i0 & 5 
(assert (= var2627 0)) ; Cond: $i1 == 0 
(define-const var2144 Int (bv2nat (bvand ((_ int2bv 64) var2770) ((_ int2bv 64) 5)))) ; Statement: $i2 = i0 & 5 
 ; Statement: if $i2 == 0 goto r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0) 
(assert (= var2144 0)) ; Cond: $i2 == 0 
(define-const var3215 String (var1291_getPackageName/1877938390 var2954)) ; Statement: r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0) 
(define-const var2981 ClassObject (var2032_getDeclaringClass/893815379 var2434)) ; Statement: $r3 = interfaceinvoke r2.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var1946 String (getName/-1958580599 var2981)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(define-const var1553 String (var1291_getPackageName/1877938390 var1946)) ; Statement: r5 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>($r4) 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
(assert (not (not (= var3215 null-String)))) ; Negate: Cond: r1 != null  
 ; Statement: if r5 != null goto $z1 = 0 
(assert (not (= var1553 null-String))) ; Cond: r5 != null 
(define-const var3900 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1291_getPackageName/1877938390=([java.lang.String], java.lang.String), var2032_getDeclaringClass/893815379=([java.lang.reflect.Member], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2770=i0, var2954=r0, var813=null_type, var2032=java.lang.reflect.Member, var2434=r2, var2627=$i1, var2144=$i2, var1291=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var3215=r1, var2981=$r3, var1946=$r4, var1553=r5, var3900=$z1}
; {i0=var2770, r0=var2954, null_type=var813, java.lang.reflect.Member=var2032, r2=var2434, $i1=var2627, $i2=var2144, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1291, r1=var3215, $r3=var2981, $r4=var1946, r5=var1553, $z1=var3900}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.reflect.Member;	$i1 = i0 & 2;	if $i1 == 0 goto $i2 = i0 & 5;	$i2 = i0 & 5;	if $i2 == 0 goto r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0);	r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0);	$r3 = interfaceinvoke r2.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r5 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>($r4);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if r5 != null goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 6