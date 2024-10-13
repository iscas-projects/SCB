(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1151 0)
(declare-sort var1186 0)
(declare-sort var1559 0)
(declare-sort var2684 0)
(declare-sort var1454 0)
(declare-sort var3558 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1186_get/1088891777 (var1186 var1559) var1559)
(declare-fun cast-from-String-to-var1559 (String) var1559)
(declare-fun var1454_toBoolean/1248062886 (var1559 Bool) var2684)
(declare-fun var3558-init () var3558)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1559) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1271795250 (var3558 String) void)
(declare-fun cast-from-var3558-to-var1386 (var3558) var1386)
(declare-const null-String String)
(declare-const null-var1186 var1186)
(declare-const null-Bool Bool)
(declare-const null-var2684 var2684)
(declare-const var226 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var226 null-String)))
(declare-const var358 var1186) ; Statement: r0 := @parameter1: java.util.Map 
(assert (not (= var358 null-var1186)))
(declare-const var1911 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1911 null-Bool)))
(define-const var2592 var1559 (var1186_get/1088891777 var358 (cast-from-String-to-var1559 var226))) ; Statement: r2 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var620 var2684 (var1454_toBoolean/1248062886 var2592 var1911)) ; Statement: r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.Boolean toBoolean(java.lang.Object,boolean)>(r2, z0) 
 ; Statement: if r3 != null goto $z1 = virtualinvoke r3.<java.lang.Boolean: boolean booleanValue()>() 
(assert (not (not (= var620 null-var2684)))) ; Negate: Cond: r3 != null  
(define-const var274 var3558 var3558-init) ; Statement: $r13 = new org.hibernate.internal.util.config.ConfigurationException 
(define-const var2613 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2613)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2613!1 String)
(assert (= var2613!1 ""))
(assert true)
(define-const var1635 String (append/672562846 var2613!1 "Could not determine how to handle configuration raw [name=")) ; Statement: $r6 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine how to handle configuration raw [name=") 
(declare-const var2613!2 String)
(assert (= var2613!2 (str.++ var2613!1 "Could not determine how to handle configuration raw [name=")))
(assert true)
(define-const var224 String (append/672562846 var1635 var226)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1635!1 String)
(assert (= var1635!1 (str.++ var1635 var226)))
(assert true)
(define-const var1591 String (append/672562846 var224 ", value=")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=") 
(declare-const var224!1 String)
(assert (= var224!1 (str.++ var224 ", value=")))
(assert true)
(define-const var2110 String (append/-1031950772 var1591 var2592)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1591!1 String)
(assert (str.prefixof var1591 var1591!1))
(assert true)
(define-const var3565 String (append/672562846 var2110 "] as boolean")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as boolean") 
(declare-const var2110!1 String)
(assert (= var2110!1 (str.++ var2110 "] as boolean")))
(assert true)
(define-const var3343 String (toString/-2075883882 var3565)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1271795250 var274 var3343)) ; Statement: specialinvoke $r13.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r11) 

(declare-const var274!1 var3558)
(declare-const var3343!1 String)
(define-const var739 var1386 (cast-from-var3558-to-var1386 var274!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1186_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1559=([java.lang.String], java.lang.Object), var1454_toBoolean/1248062886=([java.lang.Object, boolean], java.lang.Boolean), var3558-init=([], org.hibernate.internal.util.config.ConfigurationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1271795250=([org.hibernate.internal.util.config.ConfigurationException, java.lang.String], void), cast-from-var3558-to-var1386=([org.hibernate.internal.util.config.ConfigurationException], java.lang.Throwable)}
; {var226=r1, var1151=null_type, var1186=java.util.Map, var358=r0, var1911=z0, var1559=java.lang.Object, var2592=r2, var2684=java.lang.Boolean, var1454=org.hibernate.internal.util.config.ConfigurationHelper, var620=r3, var3558=org.hibernate.internal.util.config.ConfigurationException, var274=$r13, var2613=$r12, var1635=$r6, var224=$r7, var1591=$r8, var2110=$r9, var3565=$r10, var3343=$r11, var1386=java.lang.Throwable, var739=$r14}
; {r1=var226, null_type=var1151, java.util.Map=var1186, r0=var358, z0=var1911, java.lang.Object=var1559, r2=var2592, java.lang.Boolean=var2684, org.hibernate.internal.util.config.ConfigurationHelper=var1454, r3=var620, org.hibernate.internal.util.config.ConfigurationException=var3558, $r13=var274, $r12=var2613, $r6=var1635, $r7=var224, $r8=var1591, $r9=var2110, $r10=var3565, $r11=var3343, java.lang.Throwable=var1386, $r14=var739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Map;	z0 := @parameter2: boolean;	r2 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.Boolean toBoolean(java.lang.Object,boolean)>(r2, z0);	if r3 != null goto $z1 = virtualinvoke r3.<java.lang.Boolean: boolean booleanValue()>();	$r13 = new org.hibernate.internal.util.config.ConfigurationException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine how to handle configuration raw [name=");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value=");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as boolean");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2