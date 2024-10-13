(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1001 0)
(declare-sort var1608 0)
(declare-sort var112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var112_getPackageName/1877938390 (String) String)
(declare-fun var1608_getDeclaringClass/893815379 (var1608) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var1608 var1608)
(declare-const var2035 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2035 null-Int)))
(declare-const var105 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var105 null-String)))
(declare-const var3057 var1608) ; Statement: r2 := @parameter2: java.lang.reflect.Member 
(assert (not (= var3057 null-var1608)))
(define-const var1999 Int (bv2nat (bvand ((_ int2bv 64) var2035) ((_ int2bv 64) 2)))) ; Statement: $i1 = i0 & 2 
 ; Statement: if $i1 == 0 goto $i2 = i0 & 5 
(assert (= var1999 0)) ; Cond: $i1 == 0 
(define-const var441 Int (bv2nat (bvand ((_ int2bv 64) var2035) ((_ int2bv 64) 5)))) ; Statement: $i2 = i0 & 5 
 ; Statement: if $i2 == 0 goto r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0) 
(assert (= var441 0)) ; Cond: $i2 == 0 
(define-const var1957 String (var112_getPackageName/1877938390 var105)) ; Statement: r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0) 
(define-const var1072 ClassObject (var1608_getDeclaringClass/893815379 var3057)) ; Statement: $r3 = interfaceinvoke r2.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var831 String (getName/-1958580599 var1072)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(define-const var541 String (var112_getPackageName/1877938390 var831)) ; Statement: r5 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>($r4) 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
(assert (not (= var1957 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3962 Bool (= var1957 var541)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var112_getPackageName/1877938390=([java.lang.String], java.lang.String), var1608_getDeclaringClass/893815379=([java.lang.reflect.Member], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2035=i0, var105=r0, var1001=null_type, var1608=java.lang.reflect.Member, var3057=r2, var1999=$i1, var441=$i2, var112=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1957=r1, var1072=$r3, var831=$r4, var541=r5, var3962=$z0}
; {i0=var2035, r0=var105, null_type=var1001, java.lang.reflect.Member=var1608, r2=var3057, $i1=var1999, $i2=var441, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var112, r1=var1957, $r3=var1072, $r4=var831, r5=var541, $z0=var3962}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.reflect.Member;	$i1 = i0 & 2;	if $i1 == 0 goto $i2 = i0 & 5;	$i2 = i0 & 5;	if $i2 == 0 goto r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0);	r1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>(r0);	$r3 = interfaceinvoke r2.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r5 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String getPackageName(java.lang.String)>($r4);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r5);	return $z0
;block_num 4