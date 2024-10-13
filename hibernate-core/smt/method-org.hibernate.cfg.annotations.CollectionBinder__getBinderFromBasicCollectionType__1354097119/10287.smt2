(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3124 0)
(declare-sort var1944 0)
(declare-sort var2972 0)
(declare-sort var2687 0)
(declare-sort var2811 0)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2972!class ClassObject)
(declare-const var2811!class ClassObject)
(declare-fun equals/-1650223740 (var2687 var2687) Bool)
(declare-fun cast-from-ClassObject-to-var2687 (ClassObject) var2687)
(declare-fun var3124_isAnnotationPresent/-1568090508 (var3124 ClassObject) Bool)
(declare-fun var2200-init () var2200)
(declare-fun <init>/378865975 (var2200 Bool) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3124 var3124)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2831 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2831 null-ClassObject)))
(declare-const var3982 var3124) ; Statement: r7 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var3982 null-var3124)))
(declare-const var2934 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2934 null-String)))
(declare-const var3033 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var3033 null-Bool)))
(define-const var1797 ClassObject var2972!class) ; Statement: $r1 = class "Ljava/util/Set;" 
(assert true)
(define-const var839 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2687 var1797) (cast-from-ClassObject-to-var2687 var2831))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Object: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = class "Ljava/util/SortedSet;" 
(assert (not (= (ite var839 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3445 Bool (var3124_isAnnotationPresent/-1568090508 var3982 var2811!class)) ; Statement: $z13 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Lorg/hibernate/annotations/CollectionId;") 
 ; Statement: if $z13 == 0 goto $r55 = new org.hibernate.cfg.annotations.SetBinder 
(assert (= (ite var3445 1 0) 0)) ; Cond: $z13 == 0 
(define-const var2750 var2200 var2200-init) ; Statement: $r55 = new org.hibernate.cfg.annotations.SetBinder 
(assert true)
;(assert (<init>/378865975 var2750 (ite (= 1 0) true false))) ; Statement: specialinvoke $r55.<org.hibernate.cfg.annotations.SetBinder: void <init>(boolean)>(0) 

(declare-const var2750!1 var2200)
(declare-const var2513 Int)
 ; Statement: return $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2687=([java.lang.Class], java.lang.Object), var3124_isAnnotationPresent/-1568090508=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], boolean), var2200-init=([], org.hibernate.cfg.annotations.SetBinder), <init>/378865975=([org.hibernate.cfg.annotations.SetBinder, boolean], void)}
; {var2831=r0, var3124=org.hibernate.annotations.common.reflection.XProperty, var3982=r7, var2934=r13, var1944=null_type, var3033=z6, var2972=java.util.Set, var1797=$r1, var2687=java.lang.Object, var839=$z0, var2811=org.hibernate.annotations.CollectionId, var3445=$z13, var2200=org.hibernate.cfg.annotations.SetBinder, var2750=$r55, var2513=0}
; {r0=var2831, org.hibernate.annotations.common.reflection.XProperty=var3124, r7=var3982, r13=var2934, null_type=var1944, z6=var3033, java.util.Set=var2972, $r1=var1797, java.lang.Object=var2687, $z0=var839, org.hibernate.annotations.CollectionId=var2811, $z13=var3445, org.hibernate.cfg.annotations.SetBinder=var2200, $r55=var2750, 0=var2513}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r7 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	r13 := @parameter2: java.lang.String;	z6 := @parameter3: boolean;	$r1 = class "Ljava/util/Set;";	$z0 = virtualinvoke $r1.<java.lang.Object: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = class "Ljava/util/SortedSet;";	$z13 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Lorg/hibernate/annotations/CollectionId;");	if $z13 == 0 goto $r55 = new org.hibernate.cfg.annotations.SetBinder;	$r55 = new org.hibernate.cfg.annotations.SetBinder;	specialinvoke $r55.<org.hibernate.cfg.annotations.SetBinder: void <init>(boolean)>(0);	return $r55
;block_num 3