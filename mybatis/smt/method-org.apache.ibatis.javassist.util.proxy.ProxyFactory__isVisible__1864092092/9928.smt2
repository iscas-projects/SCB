(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3303 0)
(declare-sort var3007 0)
(declare-sort var991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var991_getPackageName/1877938390 (String) String)
(declare-fun var3007_getDeclaringClass/893815379 (var3007) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var3007 var3007)
(declare-const var2419 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2419 null-Int)))
(declare-const var1271 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1271 null-String)))
(declare-const var1673 var3007) ; Statement: r2 := @parameter2: java.lang.reflect.Member 
(assert (not (= var1673 null-var3007)))
(define-const var3472 Int (bv2nat (bvand ((_ int2bv 64) var2419) ((_ int2bv 64) 2)))) ; Statement: $i1 = i0 & 2 
 ; Statement: if $i1 == 0 goto $i2 = i0 & 5 
(assert (= var3472 0)) ; Cond: $i1 == 0 
(define-const var793 Int (bv2nat (bvand ((_ int2bv 64) var2419) ((_ int2bv 64) 5)))) ; Statement: $i2 = i0 & 5 
 ; Statement: if $i2 == 0 goto r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0) 
(assert (= var793 0)) ; Cond: $i2 == 0 
(define-const var2854 String (var991_getPackageName/1877938390 var1271)) ; Statement: r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0) 
(define-const var1086 ClassObject (var3007_getDeclaringClass/893815379 var1673)) ; Statement: $r3 = interfaceinvoke r2.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var377 String (getName/-1958580599 var1086)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(define-const var3174 String (var991_getPackageName/1877938390 var377)) ; Statement: r5 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>($r4) 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
(assert (not (not (= var2854 null-String)))) ; Negate: Cond: r1 != null  
 ; Statement: if r5 != null goto $z1 = 0 
(assert (not (not (= var3174 null-String)))) ; Negate: Cond: r5 != null  
(define-const var2693 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var991_getPackageName/1877938390=([java.lang.String], java.lang.String), var3007_getDeclaringClass/893815379=([java.lang.reflect.Member], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2419=i0, var1271=r0, var3303=null_type, var3007=java.lang.reflect.Member, var1673=r2, var3472=$i1, var793=$i2, var991=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2854=r1, var1086=$r3, var377=$r4, var3174=r5, var2693=$z1}
; {i0=var2419, r0=var1271, null_type=var3303, java.lang.reflect.Member=var3007, r2=var1673, $i1=var3472, $i2=var793, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var991, r1=var2854, $r3=var1086, $r4=var377, r5=var3174, $z1=var2693}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.reflect.Member;	$i1 = i0 & 2;	if $i1 == 0 goto $i2 = i0 & 5;	$i2 = i0 & 5;	if $i2 == 0 goto r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0);	r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0);	$r3 = interfaceinvoke r2.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r5 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>($r4);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if r5 != null goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 6