(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var2818 0)
(declare-sort var2183 0)
(declare-sort var3162 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enhancedForLazyLoading/-794794581 (var1064) Bool)
(declare-fun var2183-init () var2183)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityClass/-794794581 (var1064) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1153053209 (var2183 String) void)
(declare-fun cast-from-var2183-to-var3162 (var2183) var3162)
(declare-const null-var1064 var1064)
(declare-const null-var2818 var2818)
(declare-const var3771 var1064) ; Statement: r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl 
(assert (not (= var3771 null-var1064)))
(declare-const var2213 var2818) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2213 null-var2818)))
(define-const var3506 Bool (enhancedForLazyLoading/-794794581 var3771)) ; Statement: $z0 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: boolean enhancedForLazyLoading> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass> 
(assert (not (not (= (ite var3506 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3457 var2183 var2183-init) ; Statement: $r19 = new org.hibernate.bytecode.spi.NotInstrumentedException 
(define-const var3924 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3924)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3924!1 String)
(assert (= var3924!1 ""))
(assert true)
(define-const var541 String (append/672562846 var3924!1 "Entity class [")) ; Statement: $r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity class [") 
(declare-const var3924!2 String)
(assert (= var3924!2 (str.++ var3924!1 "Entity class [")))
(define-const var207 ClassObject (entityClass/-794794581 var3771)) ; Statement: $r12 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass> 
(assert true)
(define-const var3861 String (getName/-1958580599 var207)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1275 String (append/672562846 var541 var3861)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var541!1 String)
(assert (= var541!1 (str.++ var541 var3861)))
(assert true)
(define-const var1352 String (append/672562846 var1275 "] is not enhanced for lazy loading")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not enhanced for lazy loading") 
(declare-const var1275!1 String)
(assert (= var1275!1 (str.++ var1275 "] is not enhanced for lazy loading")))
(assert true)
(define-const var653 String (toString/-2075883882 var1352)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1153053209 var3457 var653)) ; Statement: specialinvoke $r19.<org.hibernate.bytecode.spi.NotInstrumentedException: void <init>(java.lang.String)>($r17) 

(declare-const var3457!1 var2183)
(declare-const var653!1 String)
(define-const var2581 var3162 (cast-from-var2183-to-var3162 var3457!1)) ; Statement: $r21 = (java.lang.Throwable) $r19 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {enhancedForLazyLoading/-794794581=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl], boolean), var2183-init=([], org.hibernate.bytecode.spi.NotInstrumentedException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityClass/-794794581=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1153053209=([org.hibernate.bytecode.spi.NotInstrumentedException, java.lang.String], void), cast-from-var2183-to-var3162=([org.hibernate.bytecode.spi.NotInstrumentedException], java.lang.Throwable)}
; {var1064=org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl, var3771=r0, var2818=java.lang.Object, var2213=r1, var3506=$z0, var2183=org.hibernate.bytecode.spi.NotInstrumentedException, var3457=$r19, var3924=$r18, var541=$r14, var207=$r12, var3861=$r13, var1275=$r15, var1352=$r16, var653=$r17, var3162=java.lang.Throwable, var2581=$r21}
; {org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl=var1064, r0=var3771, java.lang.Object=var2818, r1=var2213, $z0=var3506, org.hibernate.bytecode.spi.NotInstrumentedException=var2183, $r19=var3457, $r18=var3924, $r14=var541, $r12=var207, $r13=var3861, $r15=var1275, $r16=var1352, $r17=var653, java.lang.Throwable=var3162, $r21=var2581}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl;	r1 := @parameter0: java.lang.Object;	$z0 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: boolean enhancedForLazyLoading>;	if $z0 != 0 goto $r2 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass>;	$r19 = new org.hibernate.bytecode.spi.NotInstrumentedException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity class [");	$r12 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass>;	$r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not enhanced for lazy loading");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.bytecode.spi.NotInstrumentedException: void <init>(java.lang.String)>($r17);	$r21 = (java.lang.Throwable) $r19;	throw $r21
;block_num 2