(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3883 0)
(declare-sort var638 0)
(declare-sort var3646 0)
(declare-sort var2575 0)
(declare-sort var2671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2575-init () var2575)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2671) String)
(declare-fun cast-from-var3646-to-var2671 (var3646) var2671)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2575 String) void)
(declare-const null-var3883 var3883)
(declare-const null-String String)
(declare-const null-var3646 var3646)
(declare-const var1801 var3883) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.HasMethod 
(assert (not (= var1801 null-var3883)))
(declare-const var2487 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2487 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2517 var3646) ; Statement: $r15 := @caughtexception 
(assert (not (= var2517 null-var3646)))
(define-const var1406 var2575 var2575-init) ; Statement: $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var190 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var190)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var190!1 String)
(assert (= var190!1 ""))
(assert true)
(define-const var2254 String (append/672562846 var190!1 "Could not load dependent class \u0022")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load dependent class \"") 
(declare-const var190!2 String)
(assert (= var190!2 (str.++ var190!1 "Could not load dependent class \u0022")))
(assert true)
(define-const var2649 String (getMessage/849299655 (cast-from-var3646-to-var2671 var2517))) ; Statement: $r18 = virtualinvoke $r15.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>() 
(assert true)
(define-const var2272 String (append/672562846 var2254 var2649)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2254!1 String)
(assert (= var2254!1 (str.++ var2254 var2649)))
(assert true)
(define-const var688 String (append/672562846 var2272 "\u0022 for class \u0022")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for class \"") 
(declare-const var2272!1 String)
(assert (= var2272!1 (str.++ var2272 "\u0022 for class \u0022")))
(assert true)
(define-const var2023 String (append/672562846 var688 var2487)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var688!1 String)
(assert (= var688!1 (str.++ var688 var2487)))
(assert true)
(define-const var1359 String (append/672562846 var2023 "\u0022")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2023!1 String)
(assert (= var2023!1 (str.++ var2023 "\u0022")))
(assert true)
(define-const var613 String (toString/-2075883882 var1359)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1406 var613)) ; Statement: specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24) 

(declare-const var1406!1 var2575)
(declare-const var613!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2575-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3646-to-var2671=([java.lang.NoClassDefFoundError], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3883=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.HasMethod, var1801=r0, var2487=r3, var638=null_type, var3646=java.lang.NoClassDefFoundError, var2517=$r15, var2575=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1406=$r16, var190=$r17, var2254=$r19, var2671=java.lang.Throwable, var2649=$r18, var2272=$r20, var688=$r21, var2023=$r22, var1359=$r23, var613=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.HasMethod=var3883, r0=var1801, r3=var2487, null_type=var638, java.lang.NoClassDefFoundError=var3646, $r15=var2517, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2575, $r16=var1406, $r17=var190, $r19=var2254, java.lang.Throwable=var2671, $r18=var2649, $r20=var2272, $r21=var688, $r22=var2023, $r23=var1359, $r24=var613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.HasMethod;	r3 := @parameter0: java.lang.String;	$r15 := @caughtexception;	$r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not load dependent class \"");	$r18 = virtualinvoke $r15.<java.lang.NoClassDefFoundError: java.lang.String getMessage()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" for class \"");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24);	throw $r16
;block_num 2