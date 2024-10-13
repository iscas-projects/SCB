(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var87 0)
(declare-sort var3906 0)
(declare-sort var2062 0)
(declare-sort var487 0)
(declare-sort var3440 0)
(declare-sort var3966 0)
(declare-sort var713 0)
(declare-sort var2725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultImplClassByMode/-1641524947 (var87) var3440)
(declare-fun var3440_get/1088891777 (var3440 var3966) var3966)
(declare-fun cast-from-var3906-to-var3966 (var3906) var3966)
(declare-fun cast-from-var3966-to-ClassObject (var3966) ClassObject)
(declare-fun var713-init () var713)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3966) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var713 String) void)
(declare-fun cast-from-var713-to-var2725 (var713) var2725)
(declare-const null-var87 var87)
(declare-const null-var3906 var3906)
(declare-const null-var2062 var2062)
(declare-const null-var487 var487)
(declare-const null-ClassObject ClassObject)
(declare-const var1912 var87) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory 
(assert (not (= var1912 null-var87)))
(declare-const var3565 var3906) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var3565 null-var3906)))
(declare-const var3722 var2062) ; Statement: r5 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var3722 null-var2062)))
(declare-const var1998 var487) ; Statement: r6 := @parameter2: org.hibernate.mapping.PersistentClass 
(assert (not (= var1998 null-var487)))
(define-const var988 var3440 (defaultImplClassByMode/-1641524947 var1912)) ; Statement: $r2 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode> 
(define-const var2189 var3966 (var3440_get/1088891777 var988 (cast-from-var3906-to-var3966 var3565))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1413 ClassObject (cast-from-var3966-to-ClassObject var2189)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto $r7 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: org.hibernate.tuple.entity.EntityTuplizer constructTuplizer(java.lang.Class,org.hibernate.tuple.entity.EntityMetamodel,org.hibernate.mapping.PersistentClass)>(r4, r5, r6) 
(assert (not (not (= var1413 null-ClassObject)))) ; Negate: Cond: r4 != null  
(define-const var3919 var713 var713-init) ; Statement: $r15 = new org.hibernate.HibernateException 
(define-const var1434 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1434)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1434!1 String)
(assert (= var1434!1 ""))
(assert true)
(define-const var1433 String (append/672562846 var1434!1 "could not determine default tuplizer class to use [")) ; Statement: $r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not determine default tuplizer class to use [") 
(declare-const var1434!2 String)
(assert (= var1434!2 (str.++ var1434!1 "could not determine default tuplizer class to use [")))
(assert true)
(define-const var2554 String (append/-1031950772 var1433 (cast-from-var3906-to-var3966 var3565))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1433!1 String)
(assert (str.prefixof var1433 var1433!1))
(assert true)
(define-const var3304 String (append/672562846 var2554 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2554!1 String)
(assert (= var2554!1 (str.++ var2554 "]")))
(assert true)
(define-const var2602 String (toString/-2075883882 var3304)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3919 var2602)) ; Statement: specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r13) 

(declare-const var3919!1 var713)
(declare-const var2602!1 String)
(define-const var2014 var2725 (cast-from-var713-to-var2725 var3919!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultImplClassByMode/-1641524947=([org.hibernate.tuple.entity.EntityTuplizerFactory], java.util.Map), var3440_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3906-to-var3966=([org.hibernate.EntityMode], java.lang.Object), cast-from-var3966-to-ClassObject=([java.lang.Object], java.lang.Class), var713-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var713-to-var2725=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var87=org.hibernate.tuple.entity.EntityTuplizerFactory, var1912=r0, var3906=org.hibernate.EntityMode, var3565=r1, var2062=org.hibernate.tuple.entity.EntityMetamodel, var3722=r5, var487=org.hibernate.mapping.PersistentClass, var1998=r6, var3440=java.util.Map, var988=$r2, var3966=java.lang.Object, var2189=$r3, var1413=r4, var713=org.hibernate.HibernateException, var3919=$r15, var1434=$r14, var1433=$r10, var2554=$r11, var3304=$r12, var2602=$r13, var2725=java.lang.Throwable, var2014=$r16}
; {org.hibernate.tuple.entity.EntityTuplizerFactory=var87, r0=var1912, org.hibernate.EntityMode=var3906, r1=var3565, org.hibernate.tuple.entity.EntityMetamodel=var2062, r5=var3722, org.hibernate.mapping.PersistentClass=var487, r6=var1998, java.util.Map=var3440, $r2=var988, java.lang.Object=var3966, $r3=var2189, r4=var1413, org.hibernate.HibernateException=var713, $r15=var3919, $r14=var1434, $r10=var1433, $r11=var2554, $r12=var3304, $r13=var2602, java.lang.Throwable=var2725, $r16=var2014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r5 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel;	r6 := @parameter2: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto $r7 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: org.hibernate.tuple.entity.EntityTuplizer constructTuplizer(java.lang.Class,org.hibernate.tuple.entity.EntityMetamodel,org.hibernate.mapping.PersistentClass)>(r4, r5, r6);	$r15 = new org.hibernate.HibernateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not determine default tuplizer class to use [");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r13);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 2