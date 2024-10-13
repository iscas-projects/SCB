(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort var779 0)
(declare-sort var2646 0)
(declare-sort var1081 0)
(declare-sort var442 0)
(declare-sort var3781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/1155273117 (var1739) String)
(declare-fun var2646_findColumns/-631918876 (var2646 String var779) (Array Int String))
(declare-fun var2646_getTypeUsingProjection/-69700684 (var2646 var779 String) var1081)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2646_getFactory/960862227 (var2646) var442)
(declare-fun var1081_sqlTypes/933625911 (var1081 var3781) (Array Int Int))
(declare-fun cast-from-var442-to-var3781 (var442) var3781)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1739 var1739)
(declare-const null-var779 var779)
(declare-const null-var2646 var2646)
(declare-const var2724 var1739) ; Statement: r1 := @this: org.hibernate.criterion.SimpleExpression 
(assert (not (= var2724 null-var1739)))
(declare-const var3858 var779) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3858 null-var779)))
(declare-const var3660 var2646) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3660 null-var2646)))
(define-const var1993 String (propertyName/1155273117 var2724)) ; Statement: $r3 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName> 
(define-const var1398 (Array Int String) (var2646_findColumns/-631918876 var3660 var1993 var3858)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var1553 String (propertyName/1155273117 var2724)) ; Statement: $r5 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName> 
(define-const var120 var1081 (var2646_getTypeUsingProjection/-69700684 var3660 var3858 var1553)) ; Statement: r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.type.Type getTypeUsingProjection(org.hibernate.Criteria,java.lang.String)>(r2, $r5) 
(define-const var3680 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3680)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3680!1 String)
(assert (= var3680!1 ""))
(define-const var264 Int (getLength-Arr-String-1 var1398)) ; Statement: $i0 = lengthof r4 
 ; Statement: if $i0 <= 1 goto $r15 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (<= var264 1)) ; Cond: $i0 <= 1 
(define-const var3328 var442 (var2646_getFactory/960862227 var3660)) ; Statement: $r15 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3801 (Array Int Int) (var1081_sqlTypes/933625911 var120 (cast-from-var442-to-var3781 var3328))) ; Statement: $r16 = interfaceinvoke r6.<org.hibernate.type.Type: int[] sqlTypes(org.hibernate.engine.spi.Mapping)>($r15) 
(define-const var208 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var1000 Int (getLength-Arr-String-1 var1398)) ; Statement: $i9 = lengthof r4 
 ; Statement: if i8 >= $i9 goto $i1 = lengthof r4 
(assert (>= var208 var1000)) ; Cond: i8 >= $i9 
(define-const var2096 Int (getLength-Arr-String-1 var1398)) ; Statement: $i1 = lengthof r4 
 ; Statement: if $i1 <= 1 goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var2096 1)) ; Cond: $i1 <= 1 
(assert true)
(define-const var3833 String (toString/-2075883882 var3680!1)) ; Statement: $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.String), var2646_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), var2646_getTypeUsingProjection/-69700684=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], org.hibernate.type.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), var2646_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var1081_sqlTypes/933625911=([org.hibernate.type.Type, org.hibernate.engine.spi.Mapping], int[]), cast-from-var442-to-var3781=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.spi.Mapping), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1739=org.hibernate.criterion.SimpleExpression, var2724=r1, var779=org.hibernate.Criteria, var3858=r2, var2646=org.hibernate.criterion.CriteriaQuery, var3660=r0, var1993=$r3, var1398=r4, var1553=$r5, var1081=org.hibernate.type.Type, var120=r6, var3680=$r17, var264=$i0, var442=org.hibernate.engine.spi.SessionFactoryImplementor, var3328=$r15, var3781=org.hibernate.engine.spi.Mapping, var3801=$r16, var208=i8, var1000=$i9, var2096=$i1, var3833=$r8}
; {org.hibernate.criterion.SimpleExpression=var1739, r1=var2724, org.hibernate.Criteria=var779, r2=var3858, org.hibernate.criterion.CriteriaQuery=var2646, r0=var3660, $r3=var1993, r4=var1398, $r5=var1553, org.hibernate.type.Type=var1081, r6=var120, $r17=var3680, $i0=var264, org.hibernate.engine.spi.SessionFactoryImplementor=var442, $r15=var3328, org.hibernate.engine.spi.Mapping=var3781, $r16=var3801, i8=var208, $i9=var1000, $i1=var2096, $r8=var3833}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.SimpleExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName>;	r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.type.Type getTypeUsingProjection(org.hibernate.Criteria,java.lang.String)>(r2, $r5);	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$i0 = lengthof r4;	if $i0 <= 1 goto $r15 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r15 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r16 = interfaceinvoke r6.<org.hibernate.type.Type: int[] sqlTypes(org.hibernate.engine.spi.Mapping)>($r15);	i8 = 0;	$i9 = lengthof r4;	if i8 >= $i9 goto $i1 = lengthof r4;	$i1 = lengthof r4;	if $i1 <= 1 goto $r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5