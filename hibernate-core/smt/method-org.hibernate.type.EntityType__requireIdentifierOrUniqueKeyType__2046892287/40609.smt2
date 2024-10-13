(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var25 0)
(declare-sort var2315 0)
(declare-sort var3389 0)
(declare-sort var1255 0)
(declare-sort var53 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierOrUniqueKeyType/-1917173520 (var25 var2315) var3389)
(declare-fun var1255-init () var1255)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAssociatedEntityName/1229864409 (var25) String)
(declare-fun getLHSPropertyName/377804342 (var25) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1255 String) void)
(declare-fun cast-from-var1255-to-var53 (var1255) var53)
(declare-const null-var25 var25)
(declare-const null-var2315 var2315)
(declare-const null-var3389 var3389)
(declare-const var3562 var25) ; Statement: r0 := @this: org.hibernate.type.EntityType 
(assert (not (= var3562 null-var25)))
(declare-const var1356 var2315) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var1356 null-var2315)))
(assert true)
(define-const var2914 var3389 (getIdentifierOrUniqueKeyType/-1917173520 var3562 var1356)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.type.EntityType: org.hibernate.type.Type getIdentifierOrUniqueKeyType(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var2914 null-var3389)))) ; Negate: Cond: r2 != null  
(define-const var997 var1255 var1255-init) ; Statement: $r14 = new org.hibernate.MappingException 
(define-const var1561 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1561)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1561!1 String)
(assert (= var1561!1 ""))
(assert true)
(define-const var1340 String (append/672562846 var1561!1 "Unable to determine FK target Type for many-to-one or one-to-one mapping: referenced-entity-name=[")) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine FK target Type for many-to-one or one-to-one mapping: referenced-entity-name=[") 
(declare-const var1561!2 String)
(assert (= var1561!2 (str.++ var1561!1 "Unable to determine FK target Type for many-to-one or one-to-one mapping: referenced-entity-name=[")))
(assert true)
(define-const var559 String (getAssociatedEntityName/1229864409 var3562)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>() 
(assert true)
(define-const var3354 String (append/672562846 var1340 var559)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1340!1 String)
(assert (= var1340!1 (str.++ var1340 var559)))
(assert true)
(define-const var2132 String (append/672562846 var3354 "], referenced-entity-attribute-name=[")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("], referenced-entity-attribute-name=[") 
(declare-const var3354!1 String)
(assert (= var3354!1 (str.++ var3354 "], referenced-entity-attribute-name=[")))
(assert true)
(define-const var533 String (getLHSPropertyName/377804342 var3562)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.type.EntityType: java.lang.String getLHSPropertyName()>() 
(assert true)
(define-const var630 String (append/672562846 var2132 var533)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2132!1 String)
(assert (= var2132!1 (str.++ var2132 var533)))
(assert true)
(define-const var2865 String (append/672562846 var630 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var630!1 String)
(assert (= var630!1 (str.++ var630 "]")))
(assert true)
(define-const var83 String (toString/-2075883882 var2865)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var997 var83)) ; Statement: specialinvoke $r14.<org.hibernate.MappingException: void <init>(java.lang.String)>($r12) 

(declare-const var997!1 var1255)
(declare-const var83!1 String)
(define-const var2429 var53 (cast-from-var1255-to-var53 var997!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierOrUniqueKeyType/-1917173520=([org.hibernate.type.EntityType, org.hibernate.engine.spi.Mapping], org.hibernate.type.Type), var1255-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAssociatedEntityName/1229864409=([org.hibernate.type.EntityType], java.lang.String), getLHSPropertyName/377804342=([org.hibernate.type.EntityType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1255-to-var53=([org.hibernate.MappingException], java.lang.Throwable)}
; {var25=org.hibernate.type.EntityType, var3562=r0, var2315=org.hibernate.engine.spi.Mapping, var1356=r1, var3389=org.hibernate.type.Type, var2914=r2, var1255=org.hibernate.MappingException, var997=$r14, var1561=$r13, var1340=$r6, var559=$r5, var3354=$r7, var2132=$r9, var533=$r8, var630=$r10, var2865=$r11, var83=$r12, var53=java.lang.Throwable, var2429=$r15}
; {org.hibernate.type.EntityType=var25, r0=var3562, org.hibernate.engine.spi.Mapping=var2315, r1=var1356, org.hibernate.type.Type=var3389, r2=var2914, org.hibernate.MappingException=var1255, $r14=var997, $r13=var1561, $r6=var1340, $r5=var559, $r7=var3354, $r9=var2132, $r8=var533, $r10=var630, $r11=var2865, $r12=var83, java.lang.Throwable=var53, $r15=var2429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.EntityType;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	r2 = virtualinvoke r0.<org.hibernate.type.EntityType: org.hibernate.type.Type getIdentifierOrUniqueKeyType(org.hibernate.engine.spi.Mapping)>(r1);	if r2 != null goto return r2;	$r14 = new org.hibernate.MappingException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine FK target Type for many-to-one or one-to-one mapping: referenced-entity-name=[");	$r5 = virtualinvoke r0.<org.hibernate.type.EntityType: java.lang.String getAssociatedEntityName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("], referenced-entity-attribute-name=[");	$r8 = virtualinvoke r0.<org.hibernate.type.EntityType: java.lang.String getLHSPropertyName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.MappingException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2