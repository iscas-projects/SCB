(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1275 0)
(declare-sort var1937 0)
(declare-sort var1755 0)
(declare-sort var834 0)
(declare-sort var642 0)
(declare-sort var3651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enhancedForLazyLoading/-794794581 (var1275) Bool)
(declare-fun var642-init () var642)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityClass/-794794581 (var1275) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1153053209 (var642 String) void)
(declare-fun cast-from-var642-to-var3651 (var642) var3651)
(declare-const null-var1275 var1275)
(declare-const null-var1937 var1937)
(declare-const null-var1755 var1755)
(declare-const null-var834 var834)
(declare-const var286 var1275) ; Statement: r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl 
(assert (not (= var286 null-var1275)))
(declare-const var1065 var1937) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1065 null-var1937)))
(declare-const var3987 var1755) ; Statement: r3 := @parameter1: org.hibernate.engine.spi.PersistentAttributeInterceptor 
(assert (not (= var3987 null-var1755)))
(declare-const var1892 var834) ; Statement: r17 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1892 null-var834)))
(define-const var2543 Bool (enhancedForLazyLoading/-794794581 var286)) ; Statement: $z0 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: boolean enhancedForLazyLoading> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass> 
(assert (not (not (= (ite var2543 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2843 var642 var642-init) ; Statement: $r19 = new org.hibernate.bytecode.spi.NotInstrumentedException 
(define-const var2396 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2396)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2396!1 String)
(assert (= var2396!1 ""))
(assert true)
(define-const var531 String (append/672562846 var2396!1 "Entity class [")) ; Statement: $r13 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity class [") 
(declare-const var2396!2 String)
(assert (= var2396!2 (str.++ var2396!1 "Entity class [")))
(define-const var1415 ClassObject (entityClass/-794794581 var286)) ; Statement: $r11 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass> 
(assert true)
(define-const var904 String (getName/-1958580599 var1415)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1486 String (append/672562846 var531 var904)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var531!1 String)
(assert (= var531!1 (str.++ var531 var904)))
(assert true)
(define-const var2720 String (append/672562846 var1486 "] is not enhanced for lazy loading")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not enhanced for lazy loading") 
(declare-const var1486!1 String)
(assert (= var1486!1 (str.++ var1486 "] is not enhanced for lazy loading")))
(assert true)
(define-const var3803 String (toString/-2075883882 var2720)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1153053209 var2843 var3803)) ; Statement: specialinvoke $r19.<org.hibernate.bytecode.spi.NotInstrumentedException: void <init>(java.lang.String)>($r16) 

(declare-const var2843!1 var642)
(declare-const var3803!1 String)
(define-const var3098 var3651 (cast-from-var642-to-var3651 var2843!1)) ; Statement: $r21 = (java.lang.Throwable) $r19 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {enhancedForLazyLoading/-794794581=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl], boolean), var642-init=([], org.hibernate.bytecode.spi.NotInstrumentedException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityClass/-794794581=([org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1153053209=([org.hibernate.bytecode.spi.NotInstrumentedException, java.lang.String], void), cast-from-var642-to-var3651=([org.hibernate.bytecode.spi.NotInstrumentedException], java.lang.Throwable)}
; {var1275=org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl, var286=r0, var1937=java.lang.Object, var1065=r1, var1755=org.hibernate.engine.spi.PersistentAttributeInterceptor, var3987=r3, var834=org.hibernate.engine.spi.SharedSessionContractImplementor, var1892=r17, var2543=$z0, var642=org.hibernate.bytecode.spi.NotInstrumentedException, var2843=$r19, var2396=$r18, var531=$r13, var1415=$r11, var904=$r12, var1486=$r14, var2720=$r15, var3803=$r16, var3651=java.lang.Throwable, var3098=$r21}
; {org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl=var1275, r0=var286, java.lang.Object=var1937, r1=var1065, org.hibernate.engine.spi.PersistentAttributeInterceptor=var1755, r3=var3987, org.hibernate.engine.spi.SharedSessionContractImplementor=var834, r17=var1892, $z0=var2543, org.hibernate.bytecode.spi.NotInstrumentedException=var642, $r19=var2843, $r18=var2396, $r13=var531, $r11=var1415, $r12=var904, $r14=var1486, $r15=var2720, $r16=var3803, java.lang.Throwable=var3651, $r21=var3098}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl;	r1 := @parameter0: java.lang.Object;	r3 := @parameter1: org.hibernate.engine.spi.PersistentAttributeInterceptor;	r17 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: boolean enhancedForLazyLoading>;	if $z0 != 0 goto $r2 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass>;	$r19 = new org.hibernate.bytecode.spi.NotInstrumentedException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Entity class [");	$r11 = r0.<org.hibernate.tuple.entity.BytecodeEnhancementMetadataPojoImpl: java.lang.Class entityClass>;	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is not enhanced for lazy loading");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<org.hibernate.bytecode.spi.NotInstrumentedException: void <init>(java.lang.String)>($r16);	$r21 = (java.lang.Throwable) $r19;	throw $r21
;block_num 2