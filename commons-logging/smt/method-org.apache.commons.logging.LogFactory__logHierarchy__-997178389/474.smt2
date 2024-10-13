(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var229 0)
(declare-sort var2337 0)
(declare-sort var1398 0)
(declare-sort var3895 0)
(declare-sort var1378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1398_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun toString/-522406933 (var3895) String)
(declare-fun cast-from-var2337-to-var3895 (var2337) var3895)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1398_objectId/1952731062 (var3895) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1398_logDiagnostic/1268238408 (String) void)
(declare-const null-String String)
(declare-const null-var2337 var2337)
(declare-const null-var1378 var1378)
(declare-const var1195 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1195 null-String)))
(declare-const var3245 var2337) ; Statement: r24 := @parameter1: java.lang.ClassLoader 
(assert (not (= var3245 null-var2337)))
(define-const var1784 Bool var1398_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var1784 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert (not (= var3245 null-var2337))) ; Negate: Cond: r24 == null  
(assert true)
(define-const var383 String (toString/-522406933 (cast-from-var2337-to-var3895 var3245))) ; Statement: r25 = virtualinvoke r24.<java.lang.Object: java.lang.String toString()>() 
(define-const var1876 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1876)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1876!1 String)
(assert (= var1876!1 ""))
(assert true)
(define-const var2960 String (append/672562846 var1876!1 var1195)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1876!2 String)
(assert (= var1876!2 (str.++ var1876!1 var1195)))
(define-const var520 String (var1398_objectId/1952731062 (cast-from-var2337-to-var3895 var3245))) ; Statement: $r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r24) 
(assert true)
(define-const var3113 String (append/672562846 var2960 var520)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2960!1 String)
(assert (= var2960!1 (str.++ var2960 var520)))
(assert true)
(define-const var644 String (append/672562846 var3113 " == \u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" == \'") 
(declare-const var3113!1 String)
(assert (= var3113!1 (str.++ var3113 " == \u0027")))
(assert true)
(define-const var2612 String (append/672562846 var644 var383)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25) 
(declare-const var644!1 String)
(assert (= var644!1 (str.++ var644 var383)))
(assert true)
(define-const var3766 String (append/672562846 var2612 "\u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2612!1 String)
(assert (= var2612!1 (str.++ var2612 "\u0027")))
(assert true)
(define-const var2175 String (toString/-2075883882 var3766)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1398_logDiagnostic/1268238408 var2175)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r16) 

(declare-const var2175!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2099 var1378) ; Statement: $r19 := @caughtexception 
(assert (not (= var2099 null-var1378)))
(define-const var2726 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2726)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2726!1 String)
(assert (= var2726!1 ""))
(assert true)
(define-const var2140 String (append/672562846 var2726!1 var1195)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2726!2 String)
(assert (= var2726!2 (str.++ var2726!1 var1195)))
(assert true)
(define-const var2050 String (append/672562846 var2140 "Security forbids determining the system class loader.")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.") 
(declare-const var2140!1 String)
(assert (= var2140!1 (str.++ var2140 "Security forbids determining the system class loader.")))
(assert true)
(define-const var1523 String (toString/-2075883882 var2050)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1398_logDiagnostic/1268238408 var1523)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23) 

(declare-const var1523!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1398_isDiagnosticsEnabled/-1004161365=([], boolean), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2337-to-var3895=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1398_objectId/1952731062=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1398_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1195=r2, var229=null_type, var2337=java.lang.ClassLoader, var3245=r24, var1398=org.apache.commons.logging.LogFactory, var1784=$z0, var3895=java.lang.Object, var383=r25, var1876=$r9, var2960=$r11, var520=$r10, var3113=$r12, var644=$r13, var2612=$r14, var3766=$r15, var2175=$r16, var1378=java.lang.SecurityException, var2099=$r19, var2726=$r20, var2140=$r21, var2050=$r22, var1523=$r23}
; {r2=var1195, null_type=var229, java.lang.ClassLoader=var2337, r24=var3245, org.apache.commons.logging.LogFactory=var1398, $z0=var1784, java.lang.Object=var3895, r25=var383, $r9=var1876, $r11=var2960, $r10=var520, $r12=var3113, $r13=var644, $r14=var2612, $r15=var3766, $r16=var2175, java.lang.SecurityException=var1378, $r19=var2099, $r20=var2726, $r21=var2140, $r22=var2050, $r23=var1523}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: java.lang.String;	r24 := @parameter1: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto (branch);	if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	r25 = virtualinvoke r24.<java.lang.Object: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String objectId(java.lang.Object)>(r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" == \'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r25);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r16);	$r19 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Security forbids determining the system class loader.");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r23);	return
;block_num 4