(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var2495 0)
(declare-sort var2304 0)
(declare-sort var1606 0)
(declare-sort var1245 0)
(declare-sort var1241 0)
(declare-sort var1213 0)
(declare-sort var246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2542_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun arr-var2304-init () (Array Int var2304))
(declare-fun cast-from-String-to-var2304 (String) var2304)
(declare-fun getBaseClassLoader/1550304965 (var2542) var1241)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1213_objectId/1952731062 (var2304) String)
(declare-fun cast-from-var1241-to-var2304 (var1241) var2304)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var2542 String) void)
(declare-const null-var2542 var2542)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2304__ (Array Int var2304))
(declare-const null-var1606 var1606)
(declare-const null-var1245 var1245)
(declare-const null-ClassObject ClassObject)
(declare-const null-var246 var246)
(declare-const var2566 var2542) ; Statement: r2 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2566 null-var2542)))
(declare-const var1918 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1918 null-String)))
(declare-const var1832 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1832 null-String)))
(declare-const var2219 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2219 null-Bool)))
(define-const var495 Bool var2542_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r0 = newarray (java.lang.Object)[1] 
(assert (= (ite var495 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3087 (Array Int var2304) arr-var2304-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var3087!1 (Array Int var2304))
(assert (not (= var3087!1 null-__Array__Int__var2304__)))
(assert (= (select var3087!1 0) (cast-from-String-to-var2304 var1832))) ; Statement: $r0[0] = r1 
(define-const var342 var1606 null-var1606) ; Statement: r102 = null 
(define-const var3217 var1245 null-var1245) ; Statement: r103 = null 
(define-const var363 ClassObject null-ClassObject) ; Statement: r104 = null 
(assert true)
(define-const var3798 var1241 (getBaseClassLoader/1550304965 var2566)) ; Statement: r105 = specialinvoke r2.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getBaseClassLoader()>() 
(assert true) ; Non Conditional
(define-const var3243 String String-init) ; Statement: $r106 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3243)) ; Statement: specialinvoke $r106.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3243!1 String)
(assert (= var3243!1 ""))
(assert true)
(define-const var2088 String (append/672562846 var3243!1 "Trying to load \u0027")) ; Statement: $r107 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Trying to load \'") 
(declare-const var3243!2 String)
(assert (= var3243!2 (str.++ var3243!1 "Trying to load \u0027")))
(assert true)
(define-const var1729 String (append/672562846 var2088 var1918)) ; Statement: $r108 = virtualinvoke $r107.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2088!1 String)
(assert (= var2088!1 (str.++ var2088 var1918)))
(assert true)
(define-const var3764 String (append/672562846 var1729 "\u0027 from class loader ")) ; Statement: $r109 = virtualinvoke $r108.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from class loader ") 
(declare-const var1729!1 String)
(assert (= var1729!1 (str.++ var1729 "\u0027 from class loader ")))
(define-const var353 String (var1213_objectId/1952731062 (cast-from-var1241-to-var2304 var3798))) ; Statement: $r110 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r105) 
(assert true)
(define-const var3183 String (append/672562846 var3764 var353)) ; Statement: $r111 = virtualinvoke $r109.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r110) 
(declare-const var3764!1 String)
(assert (= var3764!1 (str.++ var3764 var353)))
(assert true)
(define-const var2818 String (toString/-2075883882 var3183)) ; Statement: $r112 = virtualinvoke $r111.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var2566 var2818)) ; Statement: virtualinvoke r2.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r112) 

(declare-const var2566!1 var2542)
(declare-const var2818!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2927 var246) ; Statement: $r58 := @caughtexception 
(assert (not (= var2927 null-var246)))
 ; Statement: throw $r58 
(check-sat)
(get-model)
(get-unsat-core)
; {var2542_isDiagnosticsEnabled/-1107982053=([], boolean), arr-var2304-init=([], java.lang.Object[]), cast-from-String-to-var2304=([java.lang.String], java.lang.Object), getBaseClassLoader/1550304965=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1213_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var1241-to-var2304=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void)}
; {var2542=org.apache.commons.logging.impl.LogFactoryImpl, var2566=r2, var1918=r3, var2495=null_type, var1832=r1, var2219=z2, var495=$z0, var2304=java.lang.Object, var3087=$r0, var1606=org.apache.commons.logging.Log, var342=r102, var1245=java.lang.reflect.Constructor, var3217=r103, var363=r104, var1241=java.lang.ClassLoader, var3798=r105, var3243=$r106, var2088=$r107, var1729=$r108, var3764=$r109, var1213=org.apache.commons.logging.LogFactory, var353=$r110, var3183=$r111, var2818=$r112, var246=org.apache.commons.logging.LogConfigurationException, var2927=$r58}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2542, r2=var2566, r3=var1918, null_type=var2495, r1=var1832, z2=var2219, $z0=var495, java.lang.Object=var2304, $r0=var3087, org.apache.commons.logging.Log=var1606, r102=var342, java.lang.reflect.Constructor=var1245, r103=var3217, r104=var363, java.lang.ClassLoader=var1241, r105=var3798, $r106=var3243, $r107=var2088, $r108=var1729, $r109=var3764, org.apache.commons.logging.LogFactory=var1213, $r110=var353, $r111=var3183, $r112=var2818, org.apache.commons.logging.LogConfigurationException=var246, $r58=var2927}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z2 := @parameter2: boolean;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r0 = newarray (java.lang.Object)[1];	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	r102 = null;	r103 = null;	r104 = null;	r105 = specialinvoke r2.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.ClassLoader getBaseClassLoader()>();	$r106 = new java.lang.StringBuilder;	specialinvoke $r106.<java.lang.StringBuilder: void <init>()>();	$r107 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Trying to load \'");	$r108 = virtualinvoke $r107.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r109 = virtualinvoke $r108.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from class loader ");	$r110 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String objectId(java.lang.Object)>(r105);	$r111 = virtualinvoke $r109.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r110);	$r112 = virtualinvoke $r111.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r112);	$r58 := @caughtexception;	throw $r58
;block_num 4