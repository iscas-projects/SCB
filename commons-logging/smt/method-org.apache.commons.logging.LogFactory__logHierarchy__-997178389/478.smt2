(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2126 0)
(declare-sort var3529 0)
(declare-sort var2161 0)
(declare-sort var3803 0)
(declare-sort var1130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2161_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun toString/-522406933 (var3803) String)
(declare-fun cast-from-var3529-to-var3803 (var3529) var3803)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2161_objectId/1952731062 (var3803) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2161_logDiagnostic/1268238408 (String) void)
(declare-fun var3529_getSystemClassLoader/-483392723 () var3529)
(declare-const null-String String)
(declare-const null-var3529 var3529)
(declare-const null-var1130 var1130)
(declare-const var2808 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2808 null-String)))
(declare-const var836 var3529) ; Statement: r24 := @parameter1: java.lang.ClassLoader 
(assert (not (= var836 null-var3529)))
(define-const var2351 Bool var2161_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var2351 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert (not (= var836 null-var3529))) ; Negate: Cond: r24 == null  
(assert true)
(define-const var45 String (toString/-522406933 (cast-from-var3529-to-var3803 var836))) ; Statement: r25 = virtualinvoke r24.<java.lang.Object: java.lang.String toString()>() 
(define-const var1519 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1519)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1519!1 String)
(assert (= var1519!1 ""))
(assert true)
(define-const var519 String (append/672562846 var1519!1 var2808)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1519!2 String)
(assert (= var1519!2 (str.++ var1519!1 var2808)))
(define-const var3286 String (var2161_objectId/1952731062 (cast-from-var3529-to-var3803 var836))) ; Statement: $r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r24) 
(assert true)
(define-const var1661 String (append/672562846 var519 var3286)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var519!1 String)
(assert (= var519!1 (str.++ var519 var3286)))
(assert true)
(define-const var3288 String (append/672562846 var1661 " == \u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" == \'") 
(declare-const var1661!1 String)
(assert (= var1661!1 (str.++ var1661 " == \u0027")))
(assert true)
(define-const var812 String (append/672562846 var3288 var45)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var3288!1 String)
(assert (= var3288!1 (str.++ var3288 var45)))
(assert true)
(define-const var2859 String (append/672562846 var812 "\u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var812!1 String)
(assert (= var812!1 (str.++ var812 "\u0027")))
(assert true)
(define-const var2236 String (toString/-2075883882 var2859)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2161_logDiagnostic/1268238408 var2236)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r16) 

(declare-const var2236!1 String)
(assert true) ; Non Conditional
(define-const var2904 var3529 var3529_getSystemClassLoader/-483392723) ; Statement: $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var649 var1130) ; Statement: $r19 := @caughtexception 
(assert (not (= var649 null-var1130)))
(define-const var2415 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2415)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2415!1 String)
(assert (= var2415!1 ""))
(assert true)
(define-const var2669 String (append/672562846 var2415!1 var2808)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2415!2 String)
(assert (= var2415!2 (str.++ var2415!1 var2808)))
(assert true)
(define-const var2935 String (append/672562846 var2669 "Security forbids determining the system class loader.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.") 
(declare-const var2669!1 String)
(assert (= var2669!1 (str.++ var2669 "Security forbids determining the system class loader.")))
(assert true)
(define-const var621 String (toString/-2075883882 var2935)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2161_logDiagnostic/1268238408 var621)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23) 

(declare-const var621!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2161_isDiagnosticsEnabled/-1004161365=([], boolean), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3529-to-var3803=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2161_objectId/1952731062=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2161_logDiagnostic/1268238408=([java.lang.String], void), var3529_getSystemClassLoader/-483392723=([], java.lang.ClassLoader)}
; {var2808=r2, var2126=null_type, var3529=java.lang.ClassLoader, var836=r24, var2161=org.apache.commons.logging.LogFactory, var2351=$z0, var3803=java.lang.Object, var45=r25, var1519=$r9, var519=$r11, var3286=$r10, var1661=$r12, var3288=$r13, var812=$r14, var2859=$r15, var2236=$r16, var2904=$r17, var1130=java.lang.SecurityException, var649=$r19, var2415=$r20, var2669=$r21, var2935=$r22, var621=$r23}
; {r2=var2808, null_type=var2126, java.lang.ClassLoader=var3529, r24=var836, org.apache.commons.logging.LogFactory=var2161, $z0=var2351, java.lang.Object=var3803, r25=var45, $r9=var1519, $r11=var519, $r10=var3286, $r12=var1661, $r13=var3288, $r14=var812, $r15=var2859, $r16=var2236, $r17=var2904, java.lang.SecurityException=var1130, $r19=var649, $r20=var2415, $r21=var2669, $r22=var2935, $r23=var621}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	r24 := @parameter1: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto (branch);	if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	r25 = virtualinvoke r24.<java.lang.Object: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" == \'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r16);	$r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r19 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23);	return
;block_num 5