(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3872 0)
(declare-sort var102 0)
(declare-sort var1262 0)
(declare-sort var2247 0)
(declare-sort var521 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReadOnlySettingAvailable/-1072136912 (var3872) Bool)
(declare-fun var2247-init () var2247)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/752502022 (var3872) String)
(declare-fun id/752502022 (var3872) var521)
(declare-fun append/-1031950772 (String var2043) String)
(declare-fun cast-from-var521-to-var2043 (var521) var2043)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2247 String) void)
(declare-const null-var3872 var3872)
(declare-const null-var102 var102)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var365 var3872) ; Statement: r0 := @this: org.hibernate.proxy.AbstractLazyInitializer 
(assert (not (= var365 null-var3872)))
(declare-const var3341 var102) ; Statement: r1 := @parameter0: java.lang.Boolean 
(assert (not (= var3341 null-var102)))
(declare-const var650 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var650 null-String)))
(declare-const var3546 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3546 null-Bool)))
(assert true)
(define-const var516 Bool (isReadOnlySettingAvailable/-1072136912 var365)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>() 
 ; Statement: if $z0 == 0 goto r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> = r1 
(assert (not (= (ite var516 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2605 var2247 var2247-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var2931 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2931)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2931!1 String)
(assert (= var2931!1 ""))
(assert true)
(define-const var1877 String (append/672562846 var2931!1 "Cannot call afterDeserialization when isReadOnlySettingAvailable == true [")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot call afterDeserialization when isReadOnlySettingAvailable == true [") 
(declare-const var2931!2 String)
(assert (= var2931!2 (str.++ var2931!1 "Cannot call afterDeserialization when isReadOnlySettingAvailable == true [")))
(define-const var265 String (entityName/752502022 var365)) ; Statement: $r5 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName> 
(assert true)
(define-const var2329 String (append/672562846 var1877 var265)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 var265)))
(assert true)
(define-const var781 String (append/672562846 var2329 "#")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2329!1 String)
(assert (= var2329!1 (str.++ var2329 "#")))
(define-const var173 var521 (id/752502022 var365)) ; Statement: $r8 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id> 
(assert true)
(define-const var3828 String (append/-1031950772 var781 (cast-from-var521-to-var2043 var173))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var781!1 String)
(assert (str.prefixof var781 var781!1))
(assert true)
(define-const var730 String (append/672562846 var3828 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3828!1 String)
(assert (= var3828!1 (str.++ var3828 "]")))
(assert true)
(define-const var3426 String (toString/-2075883882 var730)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2605 var3426)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var2605!1 var2247)
(declare-const var3426!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isReadOnlySettingAvailable/-1072136912=([org.hibernate.proxy.AbstractLazyInitializer], boolean), var2247-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.String), id/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var521-to-var2043=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3872=org.hibernate.proxy.AbstractLazyInitializer, var365=r0, var102=java.lang.Boolean, var3341=r1, var650=r2, var1262=null_type, var3546=z1, var516=$z0, var2247=java.lang.IllegalStateException, var2605=$r3, var2931=$r4, var1877=$r6, var265=$r5, var2329=$r7, var781=$r9, var521=java.io.Serializable, var173=$r8, var2043=java.lang.Object, var3828=$r10, var730=$r11, var3426=$r12}
; {org.hibernate.proxy.AbstractLazyInitializer=var3872, r0=var365, java.lang.Boolean=var102, r1=var3341, r2=var650, null_type=var1262, z1=var3546, $z0=var516, java.lang.IllegalStateException=var2247, $r3=var2605, $r4=var2931, $r6=var1877, $r5=var265, $r7=var2329, $r9=var781, java.io.Serializable=var521, $r8=var173, java.lang.Object=var2043, $r10=var3828, $r11=var730, $r12=var3426}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.proxy.AbstractLazyInitializer;	r1 := @parameter0: java.lang.Boolean;	r2 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$z0 = virtualinvoke r0.<org.hibernate.proxy.AbstractLazyInitializer: boolean isReadOnlySettingAvailable()>();	if $z0 == 0 goto r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.Boolean readOnlyBeforeAttachedToSession> = r1;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot call afterDeserialization when isReadOnlySettingAvailable == true [");	$r5 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r3
;block_num 2