(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3679 0)
(declare-sort var3484 0)
(declare-sort var3214 0)
(declare-sort var2064 0)
(declare-sort var1908 0)
(declare-sort var3108 0)
(declare-sort var1824 0)
(declare-sort var222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2064!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1908) Bool)
(declare-fun cast-from-var3484-to-var1908 (var3484) var1908)
(declare-fun var3108-init () var3108)
(declare-fun arr-var1908-init () (Array Int var1908))
(declare-fun var3214_getEntityPersister/292732637 (var3214) var1824)
(declare-fun var1824_getEntityName/-1914780628 (var1824) String)
(declare-fun cast-from-String-to-var1908 (String) var1908)
(declare-fun String_format/1339386452 (String (Array Int var1908)) String)
(declare-fun <init>/-1056956250 (var3108 String) void)
(declare-fun cast-from-var3108-to-var222 (var3108) var222)
(declare-const null-var3679 var3679)
(declare-const null-var3484 var3484)
(declare-const null-var3214 var3214)
(declare-const null-__Array__Int__var1908__ (Array Int var1908))
(declare-const var815 var3679) ; Statement: r12 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var815 null-var3679)))
(declare-const var3510 var3484) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingFetchSource 
(assert (not (= var3510 null-var3484)))
(declare-const var2417 var3214) ; Statement: r3 := @parameter1: org.hibernate.persister.walking.spi.EntityDefinition 
(assert (not (= var2417 null-var3214)))
(define-const var1960 ClassObject var2064!class) ; Statement: $r1 = class "Lorg/hibernate/loader/plan/spi/EntityReference;" 
(assert true)
(define-const var3734 Bool (isInstance/451912363 var1960 (cast-from-var3484-to-var1908 var3510))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto r2 = (org.hibernate.loader.plan.spi.EntityReference) r0 
(assert (not (not (= (ite var3734 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2698 var3108 var3108-init) ; Statement: $r13 = new org.hibernate.persister.walking.spi.WalkingException 
(define-const var1967 (Array Int var1908) arr-var1908-init) ; Statement: $r8 = newarray (java.lang.Object)[2] 
(define-const var1286 var1824 (var3214_getEntityPersister/292732637 var2417)) ; Statement: $r9 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var2014 String (var1824_getEntityName/-1914780628 var1286)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var1967!1 (Array Int var1908))
(assert (not (= var1967!1 null-__Array__Int__var1908__)))
(assert (= (select var1967!1 0) (cast-from-String-to-var1908 var2014))) ; Statement: $r8[0] = $r10 
(declare-const var1967!2 (Array Int var1908))
(assert (not (= var1967!2 null-__Array__Int__var1908__)))
(assert (= (select var1967!2 1) (cast-from-var3484-to-var1908 var3510))) ; Statement: $r8[1] = r0 
(define-const var3791 String (String_format/1339386452 "Mismatched FetchSource from stack on pop.  Expecting EntityReference(%s), but found %s" var1967!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mismatched FetchSource from stack on pop.  Expecting EntityReference(%s), but found %s", $r8) 
(assert true)
;(assert (<init>/-1056956250 var2698 var3791)) ; Statement: specialinvoke $r13.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r11) 

(declare-const var2698!1 var3108)
(declare-const var3791!1 String)
(define-const var3858 var222 (cast-from-var3108-to-var222 var2698!1)) ; Statement: $r15 = (java.lang.Throwable) $r13 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var3484-to-var1908=([org.hibernate.loader.plan.build.spi.ExpandingFetchSource], java.lang.Object), var3108-init=([], org.hibernate.persister.walking.spi.WalkingException), arr-var1908-init=([], java.lang.Object[]), var3214_getEntityPersister/292732637=([org.hibernate.persister.walking.spi.EntityDefinition], org.hibernate.persister.entity.EntityPersister), var1824_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-String-to-var1908=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1056956250=([org.hibernate.persister.walking.spi.WalkingException, java.lang.String], void), cast-from-var3108-to-var222=([org.hibernate.persister.walking.spi.WalkingException], java.lang.Throwable)}
; {var3679=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var815=r12, var3484=org.hibernate.loader.plan.build.spi.ExpandingFetchSource, var3510=r0, var3214=org.hibernate.persister.walking.spi.EntityDefinition, var2417=r3, var2064=org.hibernate.loader.plan.spi.EntityReference, var1960=$r1, var1908=java.lang.Object, var3734=$z0, var3108=org.hibernate.persister.walking.spi.WalkingException, var2698=$r13, var1967=$r8, var1824=org.hibernate.persister.entity.EntityPersister, var1286=$r9, var2014=$r10, var3791=$r11, var222=java.lang.Throwable, var3858=$r15}
; {org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var3679, r12=var815, org.hibernate.loader.plan.build.spi.ExpandingFetchSource=var3484, r0=var3510, org.hibernate.persister.walking.spi.EntityDefinition=var3214, r3=var2417, org.hibernate.loader.plan.spi.EntityReference=var2064, $r1=var1960, java.lang.Object=var1908, $z0=var3734, org.hibernate.persister.walking.spi.WalkingException=var3108, $r13=var2698, $r8=var1967, org.hibernate.persister.entity.EntityPersister=var1824, $r9=var1286, $r10=var2014, $r11=var3791, java.lang.Throwable=var222, $r15=var3858}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r12 := @this: org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy;	r0 := @parameter0: org.hibernate.loader.plan.build.spi.ExpandingFetchSource;	r3 := @parameter1: org.hibernate.persister.walking.spi.EntityDefinition;	$r1 = class "Lorg/hibernate/loader/plan/spi/EntityReference;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto r2 = (org.hibernate.loader.plan.spi.EntityReference) r0;	$r13 = new org.hibernate.persister.walking.spi.WalkingException;	$r8 = newarray (java.lang.Object)[2];	$r9 = interfaceinvoke r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r10 = interfaceinvoke $r9.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r8[0] = $r10;	$r8[1] = r0;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mismatched FetchSource from stack on pop.  Expecting EntityReference(%s), but found %s", $r8);	specialinvoke $r13.<org.hibernate.persister.walking.spi.WalkingException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r13;	throw $r15
;block_num 2