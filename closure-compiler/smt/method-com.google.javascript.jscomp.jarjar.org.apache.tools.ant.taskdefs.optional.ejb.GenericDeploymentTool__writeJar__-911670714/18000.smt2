(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3483 0)
(declare-sort var2028 0)
(declare-sort var16 0)
(declare-sort var1029 0)
(declare-sort var2663 0)
(declare-sort var2029 0)
(declare-sort var1079 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addedfiles/-208040463 (var3483) var2663)
(declare-fun var2663_clear/-485663504 (var2663) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/180451120 (var16) String)
(declare-fun getMessage/849299655 (var1079) String)
(declare-fun cast-from-var2029-to-var1079 (var2029) var1079)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2718-init () var2718)
(declare-fun <init>/-191906322 (var2718 String var1079) void)
(declare-const null-var3483 var3483)
(declare-const null-String String)
(declare-const null-var16 var16)
(declare-const null-var1029 var1029)
(declare-const null-var2663 var2663)
(declare-const null-var2029 var2029)
(declare-const var3931 var3483) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var3931 null-var3483)))
(declare-const var2860 String) ; Statement: r64 := @parameter0: java.lang.String 
(assert (not (= var2860 null-String)))
(declare-const var1528 var16) ; Statement: r3 := @parameter1: java.io.File 
(assert (not (= var1528 null-var16)))
(declare-const var3792 var1029) ; Statement: r5 := @parameter2: java.util.Hashtable 
(assert (not (= var3792 null-var1029)))
(declare-const var3924 String) ; Statement: r65 := @parameter3: java.lang.String 
(assert (not (= var3924 null-String)))
(define-const var1417 var2663 (addedfiles/-208040463 var3931)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> 
(assert (not (= var1417 null-var2663))) ; Cond: $r1 != null 
(define-const var543 var2663 (addedfiles/-208040463 var3931)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles> 
;(assert (var2663_clear/-485663504 var543)) ; Statement: interfaceinvoke $r2.<java.util.Set: void clear()>() 

(declare-const var543!1 var2663)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3896 var2029) ; Statement: $r49 := @caughtexception 
(assert (not (= var3896 null-var2029)))
(define-const var3403 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3403)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3403!1 String)
(assert (= var3403!1 ""))
(assert true)
(define-const var1873 String (append/672562846 var3403!1 "IOException while processing ejb-jar file \u0027")) ; Statement: $r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException while processing ejb-jar file \'") 
(declare-const var3403!2 String)
(assert (= var3403!2 (str.++ var3403!1 "IOException while processing ejb-jar file \u0027")))
(assert true)
(define-const var2438 String (toString/180451120 var1528)) ; Statement: $r51 = virtualinvoke r3.<java.io.File: java.lang.String toString()>() 
(assert true)
(define-const var1455 String (append/672562846 var1873 var2438)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51) 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 var2438)))
(assert true)
(define-const var741 String (append/672562846 var1455 "\u0027. Details: ")) ; Statement: $r55 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Details: ") 
(declare-const var1455!1 String)
(assert (= var1455!1 (str.++ var1455 "\u0027. Details: ")))
(assert true)
(define-const var2897 String (getMessage/849299655 (cast-from-var2029-to-var1079 var3896))) ; Statement: $r54 = virtualinvoke $r49.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var1093 String (append/672562846 var741 var2897)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var741!1 String)
(assert (= var741!1 (str.++ var741 var2897)))
(assert true)
(define-const var2516 String (toString/-2075883882 var1093)) ; Statement: r70 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var276 var2718 var2718-init) ; Statement: $r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-191906322 var276 var2516 (cast-from-var2029-to-var1079 var3896))) ; Statement: specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r70, $r49) 

(declare-const var276!1 var2718)
(declare-const var2516!1 String)
(declare-const var3896!1 var2029)
 ; Statement: throw $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {addedfiles/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.util.Set), var2663_clear/-485663504=([java.util.Set], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/180451120=([java.io.File], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2029-to-var1079=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2718-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var3483=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3931=r0, var2860=r64, var2028=null_type, var16=java.io.File, var1528=r3, var1029=java.util.Hashtable, var3792=r5, var3924=r65, var2663=java.util.Set, var1417=$r1, var543=$r2, var2029=java.io.IOException, var3896=$r49, var3403=$r50, var1873=$r52, var2438=$r51, var1455=$r53, var741=$r55, var1079=java.lang.Throwable, var2897=$r54, var1093=$r56, var2516=r70, var2718=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var276=$r57}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3483, r0=var3931, r64=var2860, null_type=var2028, java.io.File=var16, r3=var1528, java.util.Hashtable=var1029, r5=var3792, r65=var3924, java.util.Set=var2663, $r1=var1417, $r2=var543, java.io.IOException=var2029, $r49=var3896, $r50=var3403, $r52=var1873, $r51=var2438, $r53=var1455, $r55=var741, java.lang.Throwable=var1079, $r54=var2897, $r56=var1093, r70=var2516, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2718, $r57=var276}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.io.File: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r64 := @parameter0: java.lang.String;	r3 := @parameter1: java.io.File;	r5 := @parameter2: java.util.Hashtable;	r65 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: java.util.Set addedfiles>;	interfaceinvoke $r2.<java.util.Set: void clear()>();	$r49 := @caughtexception;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r52 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IOException while processing ejb-jar file \'");	$r51 = virtualinvoke r3.<java.io.File: java.lang.String toString()>();	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r51);	$r55 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. Details: ");	$r54 = virtualinvoke $r49.<java.io.IOException: java.lang.String getMessage()>();	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	r70 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.String toString()>();	$r57 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r57.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>(r70, $r49);	throw $r57
;block_num 3