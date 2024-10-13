(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var6 0)
(declare-sort var2443 0)
(declare-sort var1641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBindableJavaType/-1643913493 (var6) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var2443-init () var2443)
(declare-fun arr-var1641-init () (Array Int var1641))
(declare-fun getName/768453340 (var6) String)
(declare-fun cast-from-String-to-var1641 (String) var1641)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String_format/1339386452 (String (Array Int var1641)) String)
(declare-fun <init>/875830710 (var2443 String) void)
(declare-const null-var6 var6)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var1641__ (Array Int var1641))
(declare-const var3287 var6) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.EntityTypeImpl 
(assert (not (= var3287 null-var6)))
(declare-const var973 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var973 null-ClassObject)))
(assert true)
(define-const var3789 ClassObject (getBindableJavaType/-1643913493 var3287)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: java.lang.Class getBindableJavaType()>() 
(assert true)
(define-const var2475 Bool (isAssignableFrom/-1028998700 var3789 var973)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = new org.hibernate.graph.internal.SubGraphImpl 
(assert (not (not (= (ite var2475 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2439 var2443 var2443-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1772 (Array Int var1641) arr-var1641-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var1481 String (getName/768453340 var3287)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: java.lang.String getName()>() 
(declare-const var1772!1 (Array Int var1641))
(assert (not (= var1772!1 null-__Array__Int__var1641__)))
(assert (= (select var1772!1 0) (cast-from-String-to-var1641 var1481))) ; Statement: $r6[0] = $r7 
(assert true)
(define-const var3796 String (getName/-1958580599 var973)) ; Statement: $r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1772!2 (Array Int var1641))
(assert (not (= var1772!2 null-__Array__Int__var1641__)))
(assert (= (select var1772!2 1) (cast-from-String-to-var1641 var3796))) ; Statement: $r6[1] = $r8 
(define-const var2800 String (String_format/1339386452 "Entity type [%s] cannot be treated as requested sub-type [%s]" var1772!2)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Entity type [%s] cannot be treated as requested sub-type [%s]", $r6) 
(assert true)
;(assert (<init>/875830710 var2439 var2800)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2439!1 var2443)
(declare-const var2800!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getBindableJavaType/-1643913493=([org.hibernate.metamodel.model.domain.internal.EntityTypeImpl], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var2443-init=([], java.lang.IllegalArgumentException), arr-var1641-init=([], java.lang.Object[]), getName/768453340=([org.hibernate.metamodel.model.domain.internal.EntityTypeImpl], java.lang.String), cast-from-String-to-var1641=([java.lang.String], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var6=org.hibernate.metamodel.model.domain.internal.EntityTypeImpl, var3287=r0, var973=r1, var3789=$r2, var2475=$z0, var2443=java.lang.IllegalArgumentException, var2439=$r5, var1641=java.lang.Object, var1772=$r6, var1481=$r7, var3796=$r8, var2800=$r9}
; {org.hibernate.metamodel.model.domain.internal.EntityTypeImpl=var6, r0=var3287, r1=var973, $r2=var3789, $z0=var2475, java.lang.IllegalArgumentException=var2443, $r5=var2439, java.lang.Object=var1641, $r6=var1772, $r7=var1481, $r8=var3796, $r9=var2800}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.EntityTypeImpl;	r1 := @parameter0: java.lang.Class;	$r2 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: java.lang.Class getBindableJavaType()>();	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r3 = new org.hibernate.graph.internal.SubGraphImpl;	$r5 = new java.lang.IllegalArgumentException;	$r6 = newarray (java.lang.Object)[2];	$r7 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: java.lang.String getName()>();	$r6[0] = $r7;	$r8 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r6[1] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Entity type [%s] cannot be treated as requested sub-type [%s]", $r6);	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2