(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1448 0)
(declare-sort var504 0)
(declare-sort var160 0)
(declare-sort var3904 0)
(declare-sort var1451 0)
(declare-sort var3752 0)
(declare-sort var3824 0)
(declare-sort var1566 0)
(declare-sort var85 0)
(declare-sort var24 0)
(declare-sort var1572 0)
(declare-sort var3258 0)
(declare-sort var2597 0)
(declare-sort var22 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun callbackRegistry/-1502058472 (var1448) var1451)
(declare-fun var1451_preCreate/-1990620630 (var1451 var504) void)
(declare-fun var3824_bootstrap$/743004053 () var3752)
(declare-fun var1566_processIfSelfDirtinessTracker/-586937345 (var504 var3752) void)
(declare-fun var24_getEntityPersister/-556085740 (var24 String var504) var85)
(declare-fun cast-from-var3904-to-var24 (var3904) var24)
(declare-fun var85_getIdentifierGenerator/-674670546 (var85) var1572)
(declare-fun var1572_generate/-1036161514 (var1572 var24 var504) var3258)
(declare-fun var2597-init () var2597)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var504) ClassObject)
(declare-fun append/-1031950772 (String var504) String)
(declare-fun cast-from-ClassObject-to-var504 (ClassObject) var504)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/512344455 (var2597 String) void)
(declare-fun cast-from-var2597-to-var22 (var2597) var22)
(declare-const null-var1448 var1448)
(declare-const null-var504 var504)
(declare-const null-String String)
(declare-const null-var3904 var3904)
(declare-const null-Bool Bool)
(declare-const null-var3258 var3258)
(declare-const var613 var1448) ; Statement: r0 := @this: org.hibernate.event.internal.AbstractSaveEventListener 
(assert (not (= var613 null-var1448)))
(declare-const var3069 var504) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3069 null-var504)))
(declare-const var3458 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3458 null-String)))
(declare-const var522 var504) ; Statement: r12 := @parameter2: java.lang.Object 
(assert (not (= var522 null-var504)))
(declare-const var1131 var3904) ; Statement: r4 := @parameter3: org.hibernate.event.spi.EventSource 
(assert (not (= var1131 null-var3904)))
(declare-const var2439 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2439 null-Bool)))
(define-const var2818 var1451 (callbackRegistry/-1502058472 var613)) ; Statement: $r2 = r0.<org.hibernate.event.internal.AbstractSaveEventListener: org.hibernate.jpa.event.spi.CallbackRegistry callbackRegistry> 
;(assert (var1451_preCreate/-1990620630 var2818 var3069)) ; Statement: interfaceinvoke $r2.<org.hibernate.jpa.event.spi.CallbackRegistry: void preCreate(java.lang.Object)>(r1) 

(declare-const var2818!1 var1451)
(declare-const var3069!1 var504)
(define-const var2499 var3752 var3824_bootstrap$/743004053) ; Statement: $r3 = staticinvoke <org.hibernate.event.internal.AbstractSaveEventListener$___hibernate_clearDirtyAttributes__121: java.util.function.Consumer bootstrap$()>() 
;(assert (var1566_processIfSelfDirtinessTracker/-586937345 var3069!1 var2499)) ; Statement: staticinvoke <org.hibernate.engine.internal.ManagedTypeHelper: void processIfSelfDirtinessTracker(java.lang.Object,java.util.function.Consumer)>(r1, $r3) 

(declare-const var3069!2 var504)
(declare-const var2499!1 var3752)
(define-const var2449 var85 (var24_getEntityPersister/-556085740 (cast-from-var3904-to-var24 var1131) var3458 var3069!2)) ; Statement: r6 = interfaceinvoke r4.<org.hibernate.event.spi.EventSource: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r5, r1) 
(define-const var579 var1572 (var85_getIdentifierGenerator/-674670546 var2449)) ; Statement: $r7 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: org.hibernate.id.IdentifierGenerator getIdentifierGenerator()>() 
(define-const var3938 var3258 (var1572_generate/-1036161514 var579 (cast-from-var3904-to-var24 var1131) var3069!2)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.id.IdentifierGenerator: java.io.Serializable generate(org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r4, r1) 
 ; Statement: if r8 != null goto $r9 = <org.hibernate.id.IdentifierGeneratorHelper: java.io.Serializable SHORT_CIRCUIT_INDICATOR> 
(assert (not (not (= var3938 null-var3258)))) ; Negate: Cond: r8 != null  
(define-const var3440 var2597 var2597-init) ; Statement: $r30 = new org.hibernate.id.IdentifierGenerationException 
(define-const var3461 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3461)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3461!1 String)
(assert (= var3461!1 ""))
(assert true)
(define-const var711 String (append/672562846 var3461!1 "null id generated for:")) ; Statement: $r26 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null id generated for:") 
(declare-const var3461!2 String)
(assert (= var3461!2 (str.++ var3461!1 "null id generated for:")))
(assert true)
(define-const var758 ClassObject (getClass/1258963082 var3069!2)) ; Statement: $r25 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var483 String (append/-1031950772 var711 (cast-from-ClassObject-to-var504 var758))) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var711!1 String)
(assert (str.prefixof var711 var711!1))
(assert true)
(define-const var786 String (toString/-2075883882 var483)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/512344455 var3440 var786)) ; Statement: specialinvoke $r30.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r28) 

(declare-const var3440!1 var2597)
(declare-const var786!1 String)
(define-const var3896 var22 (cast-from-var2597-to-var22 var3440!1)) ; Statement: $r31 = (java.lang.Throwable) $r30 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {callbackRegistry/-1502058472=([org.hibernate.event.internal.AbstractSaveEventListener], org.hibernate.jpa.event.spi.CallbackRegistry), var1451_preCreate/-1990620630=([org.hibernate.jpa.event.spi.CallbackRegistry, java.lang.Object], void), var3824_bootstrap$/743004053=([], java.util.function.Consumer), var1566_processIfSelfDirtinessTracker/-586937345=([java.lang.Object, java.util.function.Consumer], void), var24_getEntityPersister/-556085740=([org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.String, java.lang.Object], org.hibernate.persister.entity.EntityPersister), cast-from-var3904-to-var24=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.SharedSessionContractImplementor), var85_getIdentifierGenerator/-674670546=([org.hibernate.persister.entity.EntityPersister], org.hibernate.id.IdentifierGenerator), var1572_generate/-1036161514=([org.hibernate.id.IdentifierGenerator, org.hibernate.engine.spi.SharedSessionContractImplementor, java.lang.Object], java.io.Serializable), var2597-init=([], org.hibernate.id.IdentifierGenerationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var504=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/512344455=([org.hibernate.id.IdentifierGenerationException, java.lang.String], void), cast-from-var2597-to-var22=([org.hibernate.id.IdentifierGenerationException], java.lang.Throwable)}
; {var1448=org.hibernate.event.internal.AbstractSaveEventListener, var613=r0, var504=java.lang.Object, var3069=r1, var3458=r5, var160=null_type, var522=r12, var3904=org.hibernate.event.spi.EventSource, var1131=r4, var2439=z1, var1451=org.hibernate.jpa.event.spi.CallbackRegistry, var2818=$r2, var3752=java.util.function.Consumer, var3824=org.hibernate.event.internal.AbstractSaveEventListener$___hibernate_clearDirtyAttributes__121, var2499=$r3, var1566=org.hibernate.engine.internal.ManagedTypeHelper, var85=org.hibernate.persister.entity.EntityPersister, var24=org.hibernate.engine.spi.SharedSessionContractImplementor, var2449=r6, var1572=org.hibernate.id.IdentifierGenerator, var579=$r7, var3258=java.io.Serializable, var3938=r8, var2597=org.hibernate.id.IdentifierGenerationException, var3440=$r30, var3461=$r29, var711=$r26, var758=$r25, var483=$r27, var786=$r28, var22=java.lang.Throwable, var3896=$r31}
; {org.hibernate.event.internal.AbstractSaveEventListener=var1448, r0=var613, java.lang.Object=var504, r1=var3069, r5=var3458, null_type=var160, r12=var522, org.hibernate.event.spi.EventSource=var3904, r4=var1131, z1=var2439, org.hibernate.jpa.event.spi.CallbackRegistry=var1451, $r2=var2818, java.util.function.Consumer=var3752, org.hibernate.event.internal.AbstractSaveEventListener$___hibernate_clearDirtyAttributes__121=var3824, $r3=var2499, org.hibernate.engine.internal.ManagedTypeHelper=var1566, org.hibernate.persister.entity.EntityPersister=var85, org.hibernate.engine.spi.SharedSessionContractImplementor=var24, r6=var2449, org.hibernate.id.IdentifierGenerator=var1572, $r7=var579, java.io.Serializable=var3258, r8=var3938, org.hibernate.id.IdentifierGenerationException=var2597, $r30=var3440, $r29=var3461, $r26=var711, $r25=var758, $r27=var483, $r28=var786, java.lang.Throwable=var22, $r31=var3896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.internal.AbstractSaveEventListener;	r1 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.Object;	r4 := @parameter3: org.hibernate.event.spi.EventSource;	z1 := @parameter4: boolean;	$r2 = r0.<org.hibernate.event.internal.AbstractSaveEventListener: org.hibernate.jpa.event.spi.CallbackRegistry callbackRegistry>;	interfaceinvoke $r2.<org.hibernate.jpa.event.spi.CallbackRegistry: void preCreate(java.lang.Object)>(r1);	$r3 = staticinvoke <org.hibernate.event.internal.AbstractSaveEventListener$___hibernate_clearDirtyAttributes__121: java.util.function.Consumer bootstrap$()>();	staticinvoke <org.hibernate.engine.internal.ManagedTypeHelper: void processIfSelfDirtinessTracker(java.lang.Object,java.util.function.Consumer)>(r1, $r3);	r6 = interfaceinvoke r4.<org.hibernate.event.spi.EventSource: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String,java.lang.Object)>(r5, r1);	$r7 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: org.hibernate.id.IdentifierGenerator getIdentifierGenerator()>();	r8 = interfaceinvoke $r7.<org.hibernate.id.IdentifierGenerator: java.io.Serializable generate(org.hibernate.engine.spi.SharedSessionContractImplementor,java.lang.Object)>(r4, r1);	if r8 != null goto $r9 = <org.hibernate.id.IdentifierGeneratorHelper: java.io.Serializable SHORT_CIRCUIT_INDICATOR>;	$r30 = new org.hibernate.id.IdentifierGenerationException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null id generated for:");	$r25 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<org.hibernate.id.IdentifierGenerationException: void <init>(java.lang.String)>($r28);	$r31 = (java.lang.Throwable) $r30;	throw $r31
;block_num 2