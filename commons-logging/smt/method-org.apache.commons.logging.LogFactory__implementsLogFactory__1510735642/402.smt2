(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2499 0)
(declare-sort var455 0)
(declare-sort var3858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var455) String)
(declare-fun cast-from-var2499-to-var455 (var2499) var455)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3858_logDiagnostic/1268238408 (String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2499 var2499)
(declare-const var1684 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1684 null-ClassObject)))
(define-const var2882 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
 ; Statement: if r0 == null goto return z0 
(assert (not (= var1684 null-ClassObject))) ; Negate: Cond: r0 == null  
(declare-const var2963 var2499) ; Statement: $r20 := @caughtexception 
(assert (not (= var2963 null-var2499)))
(define-const var662 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var662)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var662!1 String)
(assert (= var662!1 ""))
(assert true)
(define-const var2107 String (append/672562846 var662!1 "[CUSTOM LOG FACTORY] SecurityException caught trying to determine whether the compatibility was caused by a class loader conflict: ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CUSTOM LOG FACTORY] SecurityException caught trying to determine whether the compatibility was caused by a class loader conflict: ") 
(declare-const var662!2 String)
(assert (= var662!2 (str.++ var662!1 "[CUSTOM LOG FACTORY] SecurityException caught trying to determine whether the compatibility was caused by a class loader conflict: ")))
(assert true)
(define-const var1811 String (getMessage/849299655 (cast-from-var2499-to-var455 var2963))) ; Statement: $r22 = virtualinvoke $r20.<java.lang.SecurityException: java.lang.String getMessage()>() 
(assert true)
(define-const var2106 String (append/672562846 var2107 var1811)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2107!1 String)
(assert (= var2107!1 (str.++ var2107 var1811)))
(assert true)
(define-const var2117 String (toString/-2075883882 var2106)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3858_logDiagnostic/1268238408 var2117)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r25) 

(declare-const var2117!1 String)
 ; Statement: goto [?= return z0] 
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2499-to-var455=([java.lang.SecurityException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3858_logDiagnostic/1268238408=([java.lang.String], void)}
; {var1684=r0, var2882=z0, var2499=java.lang.SecurityException, var2963=$r20, var662=$r21, var2107=$r23, var455=java.lang.Throwable, var1811=$r22, var2106=$r24, var2117=$r25, var3858=org.apache.commons.logging.LogFactory}
; {r0=var1684, z0=var2882, java.lang.SecurityException=var2499, $r20=var2963, $r21=var662, $r23=var2107, java.lang.Throwable=var455, $r22=var1811, $r24=var2106, $r25=var2117, org.apache.commons.logging.LogFactory=var3858}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	z0 = 0;	if r0 == null goto return z0;	$r20 := @caughtexception;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CUSTOM LOG FACTORY] SecurityException caught trying to determine whether the compatibility was caused by a class loader conflict: ");	$r22 = virtualinvoke $r20.<java.lang.SecurityException: java.lang.String getMessage()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r25);	goto [?= return z0];	return z0
;block_num 3