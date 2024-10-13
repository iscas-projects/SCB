(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3974 0)
(declare-sort var3484 0)
(declare-sort var338 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReadOnlySettingAvailable/-1072136912 (var3974) Bool)
(declare-fun var3484-init () var3484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/752502022 (var3974) String)
(declare-fun id/752502022 (var3974) var338)
(declare-fun append/-1031950772 (String var2253) String)
(declare-fun cast-from-var338-to-var2253 (var338) var2253)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3484 String) void)
(declare-const null-var3974 var3974)
(declare-const var1633 var3974) ; Statement: r0 := @this: org.hibernate.proxy.AbstractLazyInitializer 
(assert (not (= var1633 null-var3974)))
(assert true)
(define-const var1111 Bool (isReadOnlySettingAvailable/-1072136912 var1633)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>() 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> 
(assert (not (= (ite var1111 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2050 var3484 var3484-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var740 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var740)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var740!1 String)
(assert (= var740!1 ""))
(assert true)
(define-const var3189 String (append/672562846 var740!1 "Cannot call isReadOnlyBeforeAttachedToSession when isReadOnlySettingAvailable == true [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot call isReadOnlyBeforeAttachedToSession when isReadOnlySettingAvailable == true [") 
(declare-const var740!2 String)
(assert (= var740!2 (str.++ var740!1 "Cannot call isReadOnlyBeforeAttachedToSession when isReadOnlySettingAvailable == true [")))
(define-const var348 String (entityName/752502022 var1633)) ; Statement: $r4 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName> 
(assert true)
(define-const var1972 String (append/672562846 var3189 var348)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3189!1 String)
(assert (= var3189!1 (str.++ var3189 var348)))
(assert true)
(define-const var3757 String (append/672562846 var1972 "#")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1972!1 String)
(assert (= var1972!1 (str.++ var1972 "#")))
(define-const var3941 var338 (id/752502022 var1633)) ; Statement: $r7 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id> 
(assert true)
(define-const var1071 String (append/-1031950772 var3757 (cast-from-var338-to-var2253 var3941))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3757!1 String)
(assert (str.prefixof var3757 var3757!1))
(assert true)
(define-const var2143 String (append/672562846 var1071 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1071!1 String)
(assert (= var1071!1 (str.++ var1071 "]")))
(assert true)
(define-const var1765 String (toString/-2075883882 var2143)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2050 var1765)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var2050!1 var3484)
(declare-const var1765!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isReadOnlySettingAvailable/-1072136912=([org.hibernate.proxy.AbstractLazyInitializer], boolean), var3484-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.String), id/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var338-to-var2253=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3974=org.hibernate.proxy.AbstractLazyInitializer, var1633=r0, var1111=$z0, var3484=java.lang.IllegalStateException, var2050=$r2, var740=$r3, var3189=$r5, var348=$r4, var1972=$r6, var3757=$r8, var338=java.io.Serializable, var3941=$r7, var2253=java.lang.Object, var1071=$r9, var2143=$r10, var1765=$r11}
; {org.hibernate.proxy.AbstractLazyInitializer=var3974, r0=var1633, $z0=var1111, java.lang.IllegalStateException=var3484, $r2=var2050, $r3=var740, $r5=var3189, $r4=var348, $r6=var1972, $r8=var3757, java.io.Serializable=var338, $r7=var3941, java.lang.Object=var2253, $r9=var1071, $r10=var2143, $r11=var1765}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.proxy.AbstractLazyInitializer;	$z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>();	if $z0 == 0 goto $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession>;	$r2 = new java.lang.IllegalStateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot call isReadOnlyBeforeAttachedToSession when isReadOnlySettingAvailable == true [");	$r4 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r7 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	throw $r2
;block_num 2