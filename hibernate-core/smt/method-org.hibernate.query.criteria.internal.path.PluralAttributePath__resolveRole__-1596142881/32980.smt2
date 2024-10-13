(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2034 0)
(declare-sort var238 0)
(declare-sort var3616 0)
(declare-sort var1356 0)
(declare-sort var2033 0)
(declare-sort var2077 0)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var238_getDeclaringType/1333673417 (var238) var1356)
(declare-fun var1356_getPersistenceType/863684684 (var1356) var2033)
(declare-fun ordinal/1565526271 (var2033) Int)
(declare-fun var2077-init () var2077)
(declare-fun arr-var2325-init () (Array Int var2325))
(declare-fun cast-from-var2033-to-var2325 (var2033) var2325)
(declare-fun String_format/1339386452 (String (Array Int var2325)) String)
(declare-fun <init>/1590914260 (var2077 String) void)
(declare-const null-var2034 var2034)
(declare-const null-var238 var238)
(declare-const var3616-$SwitchMap$javax$persistence$metamodel$Type$PersistenceType (Array Int Int))
(declare-const null-__Array__Int__var2325__ (Array Int var2325))
(declare-const var3327 var2034) ; Statement: r7 := @this: org.hibernate.query.criteria.internal.path.PluralAttributePath 
(assert (not (= var3327 null-var2034)))
(declare-const var3069 var238) ; Statement: r0 := @parameter0: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var3069 null-var238)))
(define-const var3096 (Array Int Int) var3616-$SwitchMap$javax$persistence$metamodel$Type$PersistenceType) ; Statement: $r1 = <org.hibernate.query.criteria.internal.path.PluralAttributePath$1: int[] $SwitchMap$javax$persistence$metamodel$Type$PersistenceType> 
(define-const var1276 var1356 (var238_getDeclaringType/1333673417 var3069)) ; Statement: $r2 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>() 
(define-const var261 var2033 (var1356_getPersistenceType/863684684 var1276)) ; Statement: $r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>() 
(assert true)
(define-const var236 Int (ordinal/1565526271 var261)) ; Statement: $i0 = virtualinvoke $r3.<javax.persistence.metamodel.Type$PersistenceType: int ordinal()>() 
(define-const var3473 Int (select var3096 var236)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r58 = new java.lang.StringBuilder;     case 2: goto $r34 = virtualinvoke r7.<org.hibernate.query.criteria.internal.path.PluralAttributePath: org.hibernate.query.criteria.internal.PathSource getPathSource()>();     case 3: goto $r4 = new java.lang.StringBuilder;     default: goto $r67 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var3473 3)) (and (not (= var3473 2)) (and (not (= var3473 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3870 var2077 var2077-init) ; Statement: $r67 = new org.hibernate.AssertionFailure 
(define-const var2386 (Array Int var2325) arr-var2325-init) ; Statement: $r68 = newarray (java.lang.Object)[1] 
(define-const var3586 var1356 (var238_getDeclaringType/1333673417 var3069)) ; Statement: $r69 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>() 
(define-const var1333 var2033 (var1356_getPersistenceType/863684684 var3586)) ; Statement: $r70 = interfaceinvoke $r69.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>() 
(declare-const var2386!1 (Array Int var2325))
(assert (not (= var2386!1 null-__Array__Int__var2325__)))
(assert (= (select var2386!1 0) (cast-from-var2033-to-var2325 var1333))) ; Statement: $r68[0] = $r70 
(define-const var2651 String (String_format/1339386452 "Unexpected PersistenceType: [%s]" var2386!1)) ; Statement: $r71 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unexpected PersistenceType: [%s]", $r68) 
(assert true)
;(assert (<init>/1590914260 var3870 var2651)) ; Statement: specialinvoke $r67.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r71) 

(declare-const var3870!1 var2077)
(declare-const var2651!1 String)
 ; Statement: throw $r67 
(check-sat)
(get-model)
(get-unsat-core)
; {var238_getDeclaringType/1333673417=([javax.persistence.metamodel.PluralAttribute], javax.persistence.metamodel.ManagedType), var1356_getPersistenceType/863684684=([javax.persistence.metamodel.ManagedType], javax.persistence.metamodel.Type$PersistenceType), ordinal/1565526271=([javax.persistence.metamodel.Type$PersistenceType], int), var2077-init=([], org.hibernate.AssertionFailure), arr-var2325-init=([], java.lang.Object[]), cast-from-var2033-to-var2325=([javax.persistence.metamodel.Type$PersistenceType], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2034=org.hibernate.query.criteria.internal.path.PluralAttributePath, var3327=r7, var238=javax.persistence.metamodel.PluralAttribute, var3069=r0, var3616=org.hibernate.query.criteria.internal.path.PluralAttributePath$1, var3096=$r1, var1356=javax.persistence.metamodel.ManagedType, var1276=$r2, var2033=javax.persistence.metamodel.Type$PersistenceType, var261=$r3, var236=$i0, var3473=$i1, var2077=org.hibernate.AssertionFailure, var3870=$r67, var2325=java.lang.Object, var2386=$r68, var3586=$r69, var1333=$r70, var2651=$r71}
; {org.hibernate.query.criteria.internal.path.PluralAttributePath=var2034, r7=var3327, javax.persistence.metamodel.PluralAttribute=var238, r0=var3069, org.hibernate.query.criteria.internal.path.PluralAttributePath$1=var3616, $r1=var3096, javax.persistence.metamodel.ManagedType=var1356, $r2=var1276, javax.persistence.metamodel.Type$PersistenceType=var2033, $r3=var261, $i0=var236, $i1=var3473, org.hibernate.AssertionFailure=var2077, $r67=var3870, java.lang.Object=var2325, $r68=var2386, $r69=var3586, $r70=var1333, $r71=var2651}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: org.hibernate.query.criteria.internal.path.PluralAttributePath;	r0 := @parameter0: javax.persistence.metamodel.PluralAttribute;	$r1 = <org.hibernate.query.criteria.internal.path.PluralAttributePath$1: int[] $SwitchMap$javax$persistence$metamodel$Type$PersistenceType>;	$r2 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>();	$r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>();	$i0 = virtualinvoke $r3.<javax.persistence.metamodel.Type$PersistenceType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r58 = new java.lang.StringBuilder;     case 2: goto $r34 = virtualinvoke r7.<org.hibernate.query.criteria.internal.path.PluralAttributePath: org.hibernate.query.criteria.internal.PathSource getPathSource()>();     case 3: goto $r4 = new java.lang.StringBuilder;     default: goto $r67 = new org.hibernate.AssertionFailure; };	$r67 = new org.hibernate.AssertionFailure;	$r68 = newarray (java.lang.Object)[1];	$r69 = interfaceinvoke r0.<javax.persistence.metamodel.PluralAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>();	$r70 = interfaceinvoke $r69.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>();	$r68[0] = $r70;	$r71 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unexpected PersistenceType: [%s]", $r68);	specialinvoke $r67.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r71);	throw $r67
;block_num 2