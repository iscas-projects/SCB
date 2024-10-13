(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2395 0)
(declare-sort var277 0)
(declare-sort var2927 0)
(declare-sort var490 0)
(declare-sort var493 0)
(declare-sort var2285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/-1469451909 (var2395) String)
(declare-fun var2927_getColumnsUsingProjection/1230993484 (var2927 var277 String) (Array Int String))
(declare-fun var2927_getTypeUsingProjection/-69700684 (var2927 var277 String) var490)
(declare-fun var2927_getFactory/960862227 (var2927) var493)
(declare-fun var490_sqlTypes/933625911 (var490 var2285) (Array Int Int))
(declare-fun cast-from-var493-to-var2285 (var493) var2285)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2395 var2395)
(declare-const null-var277 var277)
(declare-const null-var2927 var2927)
(declare-const var2458 var2395) ; Statement: r2 := @this: org.hibernate.criterion.Order 
(assert (not (= var2458 null-var2395)))
(declare-const var1034 var277) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1034 null-var277)))
(declare-const var2980 var2927) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2980 null-var2927)))
(define-const var3888 String (propertyName/-1469451909 var2458)) ; Statement: $r3 = r2.<org.hibernate.criterion.Order: java.lang.String propertyName> 
(define-const var3570 (Array Int String) (var2927_getColumnsUsingProjection/1230993484 var2980 var1034 var3888)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getColumnsUsingProjection(org.hibernate.Criteria,java.lang.String)>(r1, $r3) 
(define-const var2038 String (propertyName/-1469451909 var2458)) ; Statement: $r5 = r2.<org.hibernate.criterion.Order: java.lang.String propertyName> 
(define-const var1209 var490 (var2927_getTypeUsingProjection/-69700684 var2980 var1034 var2038)) ; Statement: r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.type.Type getTypeUsingProjection(org.hibernate.Criteria,java.lang.String)>(r1, $r5) 
(define-const var1883 var493 (var2927_getFactory/960862227 var2980)) ; Statement: r7 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2869 (Array Int Int) (var490_sqlTypes/933625911 var1209 (cast-from-var493-to-var2285 var1883))) ; Statement: r8 = interfaceinvoke r6.<org.hibernate.type.Type: int[] sqlTypes(org.hibernate.engine.spi.Mapping)>(r7) 
(define-const var1665 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1665)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1665!1 String)
(assert (= var1665!1 ""))
(define-const var409 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3909 Int (getLength-Arr-String-1 var3570)) ; Statement: $i0 = lengthof r4 
 ; Statement: if i2 >= $i0 goto $r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var409 var3909)) ; Cond: i2 >= $i0 
(assert true)
(define-const var3355 String (toString/-2075883882 var1665!1)) ; Statement: $r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/-1469451909=([org.hibernate.criterion.Order], java.lang.String), var2927_getColumnsUsingProjection/1230993484=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String[]), var2927_getTypeUsingProjection/-69700684=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], org.hibernate.type.Type), var2927_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var490_sqlTypes/933625911=([org.hibernate.type.Type, org.hibernate.engine.spi.Mapping], int[]), cast-from-var493-to-var2285=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.spi.Mapping), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2395=org.hibernate.criterion.Order, var2458=r2, var277=org.hibernate.Criteria, var1034=r1, var2927=org.hibernate.criterion.CriteriaQuery, var2980=r0, var3888=$r3, var3570=r4, var2038=$r5, var490=org.hibernate.type.Type, var1209=r6, var493=org.hibernate.engine.spi.SessionFactoryImplementor, var1883=r7, var2285=org.hibernate.engine.spi.Mapping, var2869=r8, var1665=$r23, var409=i2, var3909=$i0, var3355=$r10}
; {org.hibernate.criterion.Order=var2395, r2=var2458, org.hibernate.Criteria=var277, r1=var1034, org.hibernate.criterion.CriteriaQuery=var2927, r0=var2980, $r3=var3888, r4=var3570, $r5=var2038, org.hibernate.type.Type=var490, r6=var1209, org.hibernate.engine.spi.SessionFactoryImplementor=var493, r7=var1883, org.hibernate.engine.spi.Mapping=var2285, r8=var2869, $r23=var1665, i2=var409, $i0=var3909, $r10=var3355}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.criterion.Order;	r1 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r2.<org.hibernate.criterion.Order: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getColumnsUsingProjection(org.hibernate.Criteria,java.lang.String)>(r1, $r3);	$r5 = r2.<org.hibernate.criterion.Order: java.lang.String propertyName>;	r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.type.Type getTypeUsingProjection(org.hibernate.Criteria,java.lang.String)>(r1, $r5);	r7 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r8 = interfaceinvoke r6.<org.hibernate.type.Type: int[] sqlTypes(org.hibernate.engine.spi.Mapping)>(r7);	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i0 = lengthof r4;	if i2 >= $i0 goto $r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3