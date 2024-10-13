(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var420 0)
(declare-sort var3714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var420) String)
(declare-fun cast-from-var1777-to-var420 (var1777) var420)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3714_logDiagnostic/1268238408 (String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1777 var1777)
(declare-const var2319 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2319 null-ClassObject)))
(define-const var3103 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
 ; Statement: if r0 == null goto return z0 
(assert (not (= var2319 null-ClassObject))) ; Negate: Cond: r0 == null  
(declare-const var1527 var1777) ; Statement: $r14 := @caughtexception 
(assert (not (= var1527 null-var1777)))
(define-const var1979 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1979)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1979!1 String)
(assert (= var1979!1 ""))
(assert true)
(define-const var1584 String (append/672562846 var1979!1 "[CUSTOM LOG FACTORY] LinkageError caught trying to determine whether the compatibility was caused by a class loader conflict: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CUSTOM LOG FACTORY] LinkageError caught trying to determine whether the compatibility was caused by a class loader conflict: ") 
(declare-const var1979!2 String)
(assert (= var1979!2 (str.++ var1979!1 "[CUSTOM LOG FACTORY] LinkageError caught trying to determine whether the compatibility was caused by a class loader conflict: ")))
(assert true)
(define-const var2493 String (getMessage/849299655 (cast-from-var1777-to-var420 var1527))) ; Statement: $r16 = virtualinvoke $r14.<java.lang.LinkageError: java.lang.String getMessage()>() 
(assert true)
(define-const var1757 String (append/672562846 var1584 var2493)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1584!1 String)
(assert (= var1584!1 (str.++ var1584 var2493)))
(assert true)
(define-const var3779 String (toString/-2075883882 var1757)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3714_logDiagnostic/1268238408 var3779)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r19) 

(declare-const var3779!1 String)
 ; Statement: goto [?= return z0] 
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1777-to-var420=([java.lang.LinkageError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3714_logDiagnostic/1268238408=([java.lang.String], void)}
; {var2319=r0, var3103=z0, var1777=java.lang.LinkageError, var1527=$r14, var1979=$r15, var1584=$r17, var420=java.lang.Throwable, var2493=$r16, var1757=$r18, var3779=$r19, var3714=org.apache.commons.logging.LogFactory}
; {r0=var2319, z0=var3103, java.lang.LinkageError=var1777, $r14=var1527, $r15=var1979, $r17=var1584, java.lang.Throwable=var420, $r16=var2493, $r18=var1757, $r19=var3779, org.apache.commons.logging.LogFactory=var3714}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	z0 = 0;	if r0 == null goto return z0;	$r14 := @caughtexception;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CUSTOM LOG FACTORY] LinkageError caught trying to determine whether the compatibility was caused by a class loader conflict: ");	$r16 = virtualinvoke $r14.<java.lang.LinkageError: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r19);	goto [?= return z0];	return z0
;block_num 3