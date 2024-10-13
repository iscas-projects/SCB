(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2425 0)
(declare-sort var1486 0)
(declare-sort var1838 0)
(declare-sort var1692 0)
(declare-sort var275 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1692-init () var1692)
(declare-fun arr-var275-init () (Array Int var275))
(declare-fun cast-from-String-to-var275 (String) var275)
(declare-fun getTypeName/1732526627 (var2339) String)
(declare-fun cast-from-var2425-to-var2339 (var2425) var2339)
(declare-fun String_format/1339386452 (String (Array Int var275)) String)
(declare-fun <init>/875830710 (var1692 String) void)
(declare-const null-var2425 var2425)
(declare-const null-String String)
(declare-const null-var1838 var1838)
(declare-const null-__Array__Int__var275__ (Array Int var275))
(declare-const var397 var2425) ; Statement: r5 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var397 null-var2425)))
(declare-const var3178 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3178 null-String)))
(declare-const var496 var1838) ; Statement: r0 := @parameter1: javax.persistence.metamodel.Attribute 
(assert (not (= var496 null-var1838)))
(declare-const var1674 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1674 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (not (= var496 null-var1838)))) ; Negate: Cond: r0 != null  
(define-const var1082 var1692 var1692-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var3369 (Array Int var275) arr-var275-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(declare-const var3369!1 (Array Int var275))
(assert (not (= var3369!1 null-__Array__Int__var275__)))
(assert (= (select var3369!1 0) (cast-from-String-to-var275 var3178))) ; Statement: $r2[0] = r3 
(declare-const var3369!2 (Array Int var275))
(assert (not (= var3369!2 null-__Array__Int__var275__)))
(assert (= (select var3369!2 1) (cast-from-String-to-var275 var1674))) ; Statement: $r2[1] = r4 
(assert true)
(define-const var2684 String (getTypeName/1732526627 (cast-from-var2425-to-var2339 var397))) ; Statement: $r6 = virtualinvoke r5.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: java.lang.String getTypeName()>() 
(declare-const var3369!3 (Array Int var275))
(assert (not (= var3369!3 null-__Array__Int__var275__)))
(assert (= (select var3369!3 2) (cast-from-String-to-var275 var2684))) ; Statement: $r2[2] = $r6 
(define-const var2149 String (String_format/1339386452 "Unable to locate %s with the the given name [%s] on this ManagedType [%s]" var3369!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate %s with the the given name [%s] on this ManagedType [%s]", $r2) 
(assert true)
;(assert (<init>/875830710 var1082 var2149)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1082!1 var1692)
(declare-const var2149!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1692-init=([], java.lang.IllegalArgumentException), arr-var275-init=([], java.lang.Object[]), cast-from-String-to-var275=([java.lang.String], java.lang.Object), getTypeName/1732526627=([org.hibernate.metamodel.model.domain.internal.AbstractType], java.lang.String), cast-from-var2425-to-var2339=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType], org.hibernate.metamodel.model.domain.internal.AbstractType), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2425=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var397=r5, var3178=r3, var1486=null_type, var1838=javax.persistence.metamodel.Attribute, var496=r0, var1674=r4, var1692=java.lang.IllegalArgumentException, var1082=$r1, var275=java.lang.Object, var3369=$r2, var2339=org.hibernate.metamodel.model.domain.internal.AbstractType, var2684=$r6, var2149=$r7}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var2425, r5=var397, r3=var3178, null_type=var1486, javax.persistence.metamodel.Attribute=var1838, r0=var496, r4=var1674, java.lang.IllegalArgumentException=var1692, $r1=var1082, java.lang.Object=var275, $r2=var3369, org.hibernate.metamodel.model.domain.internal.AbstractType=var2339, $r6=var2684, $r7=var2149}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r5 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: javax.persistence.metamodel.Attribute;	r4 := @parameter2: java.lang.String;	if r0 != null goto return;	$r1 = new java.lang.IllegalArgumentException;	$r2 = newarray (java.lang.Object)[3];	$r2[0] = r3;	$r2[1] = r4;	$r6 = virtualinvoke r5.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType: java.lang.String getTypeName()>();	$r2[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate %s with the the given name [%s] on this ManagedType [%s]", $r2);	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r1
;block_num 2