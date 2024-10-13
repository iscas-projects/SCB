(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2196 0)
(declare-sort var3151 0)
(declare-sort var3410 0)
(declare-sort var2920 0)
(declare-sort var536 0)
(declare-sort var689 0)
(declare-sort var1013 0)
(declare-sort var542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2920-init () var2920)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var536) String)
(declare-fun cast-from-var3151-to-var536 (var3151) var536)
(declare-fun getMessage/849299655 (var689) String)
(declare-fun cast-from-var3410-to-var689 (var3410) var689)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var542) var1013)
(declare-fun cast-from-var2196-to-var542 (var2196) var542)
(declare-fun <init>/1933136886 (var2920 String var689 var1013) void)
(declare-const null-var2196 var2196)
(declare-const null-var3151 var3151)
(declare-const null-Bool Bool)
(declare-const null-var3410 var3410)
(declare-const var1553 var2196) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move 
(assert (not (= var1553 null-var2196)))
(declare-const var409 var3151) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var409 null-var3151)))
(declare-const var1390 var3151) ; Statement: r5 := @parameter1: java.io.File 
(assert (not (= var1390 null-var3151)))
(declare-const var1022 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1022 null-Bool)))
(declare-const var1389 Bool) ; Statement: z4 := @parameter3: boolean 
(assert (not (= var1389 null-Bool)))
(define-const var337 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1361 var3410) ; Statement: $r19 := @caughtexception 
(assert (not (= var1361 null-var3410)))
(define-const var3129 var2920 var2920-init) ; Statement: $r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2829 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2829)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2829!1 String)
(assert (= var2829!1 ""))
(assert true)
(define-const var3403 String (append/672562846 var2829!1 "Failed to copy ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to copy ") 
(declare-const var2829!2 String)
(assert (= var2829!2 (str.++ var2829!1 "Failed to copy ")))
(assert true)
(define-const var2450 String (append/-1031950772 var3403 (cast-from-var3151-to-var536 var409))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3403!1 String)
(assert (str.prefixof var3403 var3403!1))
(assert true)
(define-const var616 String (append/672562846 var2450 " to ")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var2450!1 String)
(assert (= var2450!1 (str.++ var2450 " to ")))
(assert true)
(define-const var3463 String (append/-1031950772 var616 (cast-from-var3151-to-var536 var1390))) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var616!1 String)
(assert (str.prefixof var616 var616!1))
(assert true)
(define-const var541 String (append/672562846 var3463 " due to ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ") 
(declare-const var3463!1 String)
(assert (= var3463!1 (str.++ var3463 " due to ")))
(assert true)
(define-const var2078 String (getMessage/849299655 (cast-from-var3410-to-var689 var1361))) ; Statement: $r26 = virtualinvoke $r19.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2350 String (append/672562846 var541 var2078)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var541!1 String)
(assert (= var541!1 (str.++ var541 var2078)))
(assert true)
(define-const var2498 String (toString/-2075883882 var2350)) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2626 var1013 (getLocation/851674571 (cast-from-var2196-to-var542 var1553))) ; Statement: $r29 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var3129 var2498 (cast-from-var3410-to-var689 var1361) var2626)) ; Statement: specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r30, $r19, $r29) 

(declare-const var3129!1 var2920)
(declare-const var2498!1 String)
(declare-const var1361!1 var3410)
(declare-const var2626!1 var1013)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var2920-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3151-to-var536=([java.io.File], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3410-to-var689=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2196-to-var542=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var2196=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move, var1553=r0, var3151=java.io.File, var409=r2, var1390=r5, var1022=z0, var1389=z4, var337=$r1, var3410=java.io.IOException, var1361=$r19, var2920=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3129=$r20, var2829=$r21, var3403=$r22, var536=java.lang.Object, var2450=$r23, var616=$r24, var3463=$r25, var541=$r27, var689=java.lang.Throwable, var2078=$r26, var2350=$r28, var2498=$r30, var1013=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var542=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2626=$r29}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move=var2196, r0=var1553, java.io.File=var3151, r2=var409, r5=var1390, z0=var1022, z4=var1389, $r1=var337, java.io.IOException=var3410, $r19=var1361, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2920, $r20=var3129, $r21=var2829, $r22=var3403, java.lang.Object=var536, $r23=var2450, $r24=var616, $r25=var3463, $r27=var541, java.lang.Throwable=var689, $r26=var2078, $r28=var2350, $r30=var2498, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1013, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var542, $r29=var2626}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move;	r2 := @parameter0: java.io.File;	r5 := @parameter1: java.io.File;	z0 := @parameter2: boolean;	z4 := @parameter3: boolean;	$r1 = new java.lang.StringBuilder;	$r19 := @caughtexception;	$r20 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to copy ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" due to ");	$r26 = virtualinvoke $r19.<java.io.IOException: java.lang.String getMessage()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Move: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r20.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r30, $r19, $r29);	throw $r20
;block_num 2