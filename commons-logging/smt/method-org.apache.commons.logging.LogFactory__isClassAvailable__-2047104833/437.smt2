(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var523 0)
(declare-sort var1041 0)
(declare-sort var3828 0)
(declare-sort var693 0)
(declare-sort var3070 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3828!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var1041)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3828_objectId/1952731062 (var693) String)
(declare-fun cast-from-var1041-to-var693 (var1041) var693)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3828_logDiagnostic/1268238408 (String) void)
(declare-fun getMessage/849299655 (var3070) String)
(declare-const null-String String)
(declare-const null-var1041 var1041)
(declare-const null-var3070 var3070)
(declare-const var1315 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1315 null-String)))
(declare-const var1196 var1041) ; Statement: r10 := @parameter1: java.lang.ClassLoader 
(assert (not (= var1196 null-var1041)))
(define-const var3823 ClassObject var3828!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/LogFactory;" 
(assert true)
(define-const var3403 var1041 (getClassLoader/-563698447 var3823)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var1205 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1205)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1205!1 String)
(assert (= var1205!1 ""))
(assert true)
(define-const var88 String (append/672562846 var1205!1 "Checking if class \u0027")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking if class \'") 
(declare-const var1205!2 String)
(assert (= var1205!2 (str.++ var1205!1 "Checking if class \u0027")))
(assert true)
(define-const var2908 String (append/672562846 var88 var1315)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var88!1 String)
(assert (= var88!1 (str.++ var88 var1315)))
(assert true)
(define-const var3232 String (append/672562846 var2908 "\u0027 is available in class loader ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available in class loader ") 
(declare-const var2908!1 String)
(assert (= var2908!1 (str.++ var2908 "\u0027 is available in class loader ")))
(define-const var2975 String (var3828_objectId/1952731062 (cast-from-var1041-to-var693 var3403))) ; Statement: $r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r1) 
(assert true)
(define-const var2571 String (append/672562846 var3232 var2975)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3232!1 String)
(assert (= var3232!1 (str.++ var3232 var2975)))
(assert true)
(define-const var2451 String (toString/-2075883882 var2571)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3828_logDiagnostic/1268238408 var2451)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9) 

(declare-const var2451!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3960 var3070) ; Statement: $r11 := @caughtexception 
(assert (not (= var3960 null-var3070)))
(define-const var2666 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2666)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2666!1 String)
(assert (= var2666!1 ""))
(assert true)
(define-const var3789 String (append/672562846 var2666!1 "Failed to load class \u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to load class \'") 
(declare-const var2666!2 String)
(assert (= var2666!2 (str.++ var2666!1 "Failed to load class \u0027")))
(assert true)
(define-const var2867 String (append/672562846 var3789 var1315)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3789!1 String)
(assert (= var3789!1 (str.++ var3789 var1315)))
(assert true)
(define-const var1317 String (append/672562846 var2867 "\u0027 from class loader ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from class loader ") 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 "\u0027 from class loader ")))
(define-const var376 String (var3828_objectId/1952731062 (cast-from-var1041-to-var693 var3403))) ; Statement: $r15 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r1) 
(assert true)
(define-const var495 String (append/672562846 var1317 var376)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1317!1 String)
(assert (= var1317!1 (str.++ var1317 var376)))
(assert true)
(define-const var2373 String (append/672562846 var495 ": ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var495!1 String)
(assert (= var495!1 (str.++ var495 ": ")))
(assert true)
(define-const var948 String (getMessage/849299655 var3960)) ; Statement: $r18 = virtualinvoke $r11.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var3728 String (append/672562846 var2373 var948)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2373!1 String)
(assert (= var2373!1 (str.++ var2373 var948)))
(assert true)
(define-const var1619 String (toString/-2075883882 var3728)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3828_logDiagnostic/1268238408 var1619)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r21) 

(declare-const var1619!1 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3828_objectId/1952731062=([java.lang.Object], java.lang.String), cast-from-var1041-to-var693=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3828_logDiagnostic/1268238408=([java.lang.String], void), getMessage/849299655=([java.lang.Throwable], java.lang.String)}
; {var1315=r3, var523=null_type, var1041=java.lang.ClassLoader, var1196=r10, var3828=org.apache.commons.logging.LogFactory, var3823=$r0, var3403=r1, var1205=$r2, var88=$r4, var2908=$r5, var3232=$r7, var693=java.lang.Object, var2975=$r6, var2571=$r8, var2451=$r9, var3070=java.lang.Throwable, var3960=$r11, var2666=$r12, var3789=$r13, var2867=$r14, var1317=$r16, var376=$r15, var495=$r17, var2373=$r19, var948=$r18, var3728=$r20, var1619=$r21}
; {r3=var1315, null_type=var523, java.lang.ClassLoader=var1041, r10=var1196, org.apache.commons.logging.LogFactory=var3828, $r0=var3823, r1=var3403, $r2=var1205, $r4=var88, $r5=var2908, $r7=var3232, java.lang.Object=var693, $r6=var2975, $r8=var2571, $r9=var2451, java.lang.Throwable=var3070, $r11=var3960, $r12=var2666, $r13=var3789, $r14=var2867, $r16=var1317, $r15=var376, $r17=var495, $r19=var2373, $r18=var948, $r20=var3728, $r21=var1619}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r3 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.ClassLoader;	$r0 = class "Lorg/apache/commons/logging/LogFactory;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking if class \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available in class loader ");	$r6 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r9);	$r11 := @caughtexception;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to load class \'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from class loader ");	$r15 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r18 = virtualinvoke $r11.<java.lang.Throwable: java.lang.String getMessage()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r21);	return 0
;block_num 2