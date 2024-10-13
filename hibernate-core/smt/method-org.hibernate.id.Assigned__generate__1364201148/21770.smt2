(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3143 0)
(declare-sort var1978 0)
(declare-sort var1002 0)
(declare-sort var2304 0)
(declare-sort var2502 0)
(declare-sort var1101 0)
(declare-sort var772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityName/-1055556037 (var3143) String)
(declare-fun var1978_getEntityPersister/-556085740 (var1978 String var1002) var2304)
(declare-fun var2304_getIdentifier/1578938541 (var2304 var1002 var1978) var2502)
(declare-fun var1101-init () var1101)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/512344455 (var1101 String) void)
(declare-fun cast-from-var1101-to-var772 (var1101) var772)
(declare-const null-var3143 var3143)
(declare-const null-var1978 var1978)
(declare-const null-var1002 var1002)
(declare-const null-var2502 var2502)
(declare-const var795 var3143) ; Statement: r1 := @this: org.hibernate.id.Assigned 
(assert (not (= var795 null-var3143)))
(declare-const var2539 var1978) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2539 null-var1978)))
(declare-const var2339 var1002) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2339 null-var1002)))
(define-const var943 String (entityName/-1055556037 var795)) ; Statement: $r3 = r1.<org.hibernate.id.Assigned: java.lang.String entityName> 
(define-const var1449 var2304 (var1978_getEntityPersister/-556085740 var2539 var943 var2339)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>($r3, r2) 
(define-const var1350 var2502 (var2304_getIdentifier/1578938541 var1449 var2339 var2539)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r2, r0) 
 ; Statement: if r5 != null goto return r5 
(assert (not (not (= var1350 null-var2502)))) ; Negate: Cond: r5 != null  
(define-const var2822 var1101 var1101-init) ; Statement: $r13 = new org.hibernate.id.IdentifierGenerationException 
(define-const var3301 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3301)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3301!1 String)
(assert (= var3301!1 ""))
(assert true)
(define-const var1921 String (append/672562846 var3301!1 "ids for this class must be manually assigned before calling save(): ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ids for this class must be manually assigned before calling save(): ") 
(declare-const var3301!2 String)
(assert (= var3301!2 (str.++ var3301!1 "ids for this class must be manually assigned before calling save(): ")))
(define-const var2823 String (entityName/-1055556037 var795)) ; Statement: $r8 = r1.<org.hibernate.id.Assigned: java.lang.String entityName> 
(assert true)
(define-const var2937 String (append/672562846 var1921 var2823)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1921!1 String)
(assert (= var1921!1 (str.++ var1921 var2823)))
(assert true)
(define-const var2994 String (toString/-2075883882 var2937)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/512344455 var2822 var2994)) ; Statement: specialinvoke $r13.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r11) 

(declare-const var2822!1 var1101)
(declare-const var2994!1 String)
(define-const var1559 var772 (cast-from-var1101-to-var772 var2822!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entityName/-1055556037=([org.hibernate.id.Assigned], java.lang.String), var1978_getEntityPersister/-556085740=([org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.String, java.lang.Object], org.hibernate.persister.entity.EntityPersister), var2304_getIdentifier/1578938541=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.io.Serializable), var1101-init=([], org.hibernate.id.IdentifierGenerationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/512344455=([org.hibernate.id.IdentifierGenerationException, java.lang.String], void), cast-from-var1101-to-var772=([org.hibernate.id.IdentifierGenerationException], java.lang.Throwable)}
; {var3143=org.hibernate.id.Assigned, var795=r1, var1978=org.hibernate.engine.spi.SharedSessionContractImplementor, var2539=r0, var1002=java.lang.Object, var2339=r2, var943=$r3, var2304=org.hibernate.persister.entity.EntityPersister, var1449=$r4, var2502=java.io.Serializable, var1350=r5, var1101=org.hibernate.id.IdentifierGenerationException, var2822=$r13, var3301=$r12, var1921=$r9, var2823=$r8, var2937=$r10, var2994=$r11, var772=java.lang.Throwable, var1559=$r14}
; {org.hibernate.id.Assigned=var3143, r1=var795, org.hibernate.engine.spi.SharedSessionContractImplementor=var1978, r0=var2539, java.lang.Object=var1002, r2=var2339, $r3=var943, org.hibernate.persister.entity.EntityPersister=var2304, $r4=var1449, java.io.Serializable=var2502, r5=var1350, org.hibernate.id.IdentifierGenerationException=var1101, $r13=var2822, $r12=var3301, $r9=var1921, $r8=var2823, $r10=var2937, $r11=var2994, java.lang.Throwable=var772, $r14=var1559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.Assigned;	r0 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r2 := @parameter1: java.lang.Object;	$r3 = r1.<org.hibernate.id.Assigned: java.lang.String entityName>;	$r4 = interfaceinvoke r0.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>($r3, r2);	r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: java.io.Serializable getIdentifier(java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r2, r0);	if r5 != null goto return r5;	$r13 = new org.hibernate.id.IdentifierGenerationException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ids for this class must be manually assigned before calling save(): ");	$r8 = r1.<org.hibernate.id.Assigned: java.lang.String entityName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2