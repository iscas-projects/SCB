(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2249 0)
(declare-sort var3265 0)
(declare-sort var530 0)
(declare-sort var1518 0)
(declare-sort var2390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enhancedForLazyLoading/-794794581 (var2249) Bool)
(declare-fun var1518-init () var1518)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityClass/-794794581 (var2249) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1153053209 (var1518 String) void)
(declare-fun cast-from-var1518-to-var2390 (var1518) var2390)
(declare-const null-var2249 var2249)
(declare-const null-var3265 var3265)
(declare-const null-var530 var530)
(declare-const var3268 var2249) ; Statement: r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl 
(assert (not (= var3268 null-var2249)))
(declare-const var1479 var3265) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1479 null-var3265)))
(declare-const var373 var3265) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var373 null-var3265)))
(declare-const var2318 var530) ; Statement: r6 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2318 null-var530)))
(define-const var3949 Bool (enhancedForLazyLoading/-794794581 var3268)) ; Statement: $z0 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: boolean enhancedForLazyLoading> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass> 
(assert (not (not (= (ite var3949 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3503 var1518 var1518-init) ; Statement: $r22 = new org.hibernate.bytecode.spi.NotInstrumentedException 
(define-const var1669 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1669)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1669!1 String)
(assert (= var1669!1 ""))
(assert true)
(define-const var1763 String (append/672562846 var1669!1 "Entity class [")) ; Statement: $r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity class [") 
(declare-const var1669!2 String)
(assert (= var1669!2 (str.++ var1669!1 "Entity class [")))
(define-const var2339 ClassObject (entityClass/-794794581 var3268)) ; Statement: $r15 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass> 
(assert true)
(define-const var2302 String (getName/-1958580599 var2339)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1136 String (append/672562846 var1763 var2302)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1763!1 String)
(assert (= var1763!1 (str.++ var1763 var2302)))
(assert true)
(define-const var2314 String (append/672562846 var1136 "] is not enhanced for lazy loading")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not enhanced for lazy loading") 
(declare-const var1136!1 String)
(assert (= var1136!1 (str.++ var1136 "] is not enhanced for lazy loading")))
(assert true)
(define-const var3666 String (toString/-2075883882 var2314)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1153053209 var3503 var3666)) ; Statement: specialinvoke $r22.<org.hibernate.bytecode.spi.NotInstrumentedException: void <init>(java.lang.String)>($r20) 

(declare-const var3503!1 var1518)
(declare-const var3666!1 String)
(define-const var1248 var2390 (cast-from-var1518-to-var2390 var3503!1)) ; Statement: $r25 = (java.lang.Throwable) $r22 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {enhancedForLazyLoading/-794794581=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl], boolean), var1518-init=([], org.hibernate.bytecode.spi.NotInstrumentedException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityClass/-794794581=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1153053209=([org.hibernate.bytecode.spi.NotInstrumentedException, java.lang.String], void), cast-from-var1518-to-var2390=([org.hibernate.bytecode.spi.NotInstrumentedException], java.lang.Throwable)}
; {var2249=org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl, var3268=r0, var3265=java.lang.Object, var1479=r1, var373=r4, var530=org.hibernate.engine.spi.SharedSessionContractImplementor, var2318=r6, var3949=$z0, var1518=org.hibernate.bytecode.spi.NotInstrumentedException, var3503=$r22, var1669=$r21, var1763=$r17, var2339=$r15, var2302=$r16, var1136=$r18, var2314=$r19, var3666=$r20, var2390=java.lang.Throwable, var1248=$r25}
; {org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl=var2249, r0=var3268, java.lang.Object=var3265, r1=var1479, r4=var373, org.hibernate.engine.spi.SharedSessionContractImplementor=var530, r6=var2318, $z0=var3949, org.hibernate.bytecode.spi.NotInstrumentedException=var1518, $r22=var3503, $r21=var1669, $r17=var1763, $r15=var2339, $r16=var2302, $r18=var1136, $r19=var2314, $r20=var3666, java.lang.Throwable=var2390, $r25=var1248}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl;	r1 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.Object;	r6 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: boolean enhancedForLazyLoading>;	if $z0 != 0 goto $r2 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass>;	$r22 = new org.hibernate.bytecode.spi.NotInstrumentedException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity class [");	$r15 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass>;	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not enhanced for lazy loading");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.bytecode.spi.NotInstrumentedException: void <init>(java.lang.String)>($r20);	$r25 = (java.lang.Throwable) $r22;	throw $r25
;block_num 2