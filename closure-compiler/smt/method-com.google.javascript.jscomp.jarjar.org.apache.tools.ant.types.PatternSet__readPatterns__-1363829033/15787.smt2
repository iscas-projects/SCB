(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2417 0)
(declare-sort var1472 0)
(declare-sort var427 0)
(declare-sort var612 0)
(declare-sort var1440 0)
(declare-sort var486 0)
(declare-sort var1084 0)
(declare-sort var1142 0)
(declare-sort var3566 0)
(declare-sort var3712 0)
(declare-sort var2090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var486-init () var486)
(declare-fun var1084-init () var1084)
(declare-fun var3566-init () var3566)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3712) String)
(declare-fun cast-from-var1472-to-var3712 (var1472) var3712)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3566 String var2090) void)
(declare-fun cast-from-var1142-to-var2090 (var1142) var2090)
(declare-const null-var2417 var2417)
(declare-const null-var1472 var1472)
(declare-const null-String String)
(declare-const null-var612 var612)
(declare-const null-var1440 var1440)
(declare-const null-var1142 var1142)
(declare-const var602 var2417) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet 
(assert (not (= var602 null-var2417)))
(declare-const var700 var1472) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var700 null-var1472)))
(declare-const var3844 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3844 null-String)))
(declare-const var3294 var612) ; Statement: r11 := @parameter2: java.util.List 
(assert (not (= var3294 null-var612)))
(declare-const var3389 var1440) ; Statement: r7 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3389 null-var1440)))
 ; Statement: if r0 != null goto $r28 = new java.io.InputStreamReader 
(assert (not (= var3844 null-String))) ; Cond: r0 != null 
(define-const var3395 var486 var486-init) ; Statement: $r28 = new java.io.InputStreamReader 
(define-const var1756 var486 var3395) ; Statement: $r24 = $r28 
(define-const var3948 var1084 var1084-init) ; Statement: $r27 = new java.io.FileInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var621 var1142) ; Statement: $r14 := @caughtexception 
(assert (not (= var621 null-var1142)))
(define-const var3066 var3566 var3566-init) ; Statement: $r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2843 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2843)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2843!1 String)
(assert (= var2843!1 ""))
(assert true)
(define-const var2842 String (append/672562846 var2843!1 "An error occurred while reading from pattern file: ")) ; Statement: $r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An error occurred while reading from pattern file: ") 
(declare-const var2843!2 String)
(assert (= var2843!2 (str.++ var2843!1 "An error occurred while reading from pattern file: ")))
(assert true)
(define-const var2115 String (append/-1031950772 var2842 (cast-from-var1472-to-var3712 var700))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2842!1 String)
(assert (str.prefixof var2842 var2842!1))
(assert true)
(define-const var2652 String (toString/-2075883882 var2115)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3066 var2652 (cast-from-var1142-to-var2090 var621))) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14) 

(declare-const var3066!1 var3566)
(declare-const var2652!1 String)
(declare-const var621!1 var1142)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var486-init=([], java.io.InputStreamReader), var1084-init=([], java.io.FileInputStream), var3566-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1472-to-var3712=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1142-to-var2090=([java.io.IOException], java.lang.Throwable)}
; {var2417=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet, var602=r10, var1472=java.io.File, var700=r2, var3844=r0, var427=null_type, var612=java.util.List, var3294=r11, var1440=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3389=r7, var486=java.io.InputStreamReader, var3395=$r28, var1756=$r24, var1084=java.io.FileInputStream, var3948=$r27, var1142=java.io.IOException, var621=$r14, var3566=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3066=$r31, var2843=$r30, var2842=$r17, var3712=java.lang.Object, var2115=$r18, var2652=$r19, var2090=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet=var2417, r10=var602, java.io.File=var1472, r2=var700, r0=var3844, null_type=var427, java.util.List=var612, r11=var3294, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1440, r7=var3389, java.io.InputStreamReader=var486, $r28=var3395, $r24=var1756, java.io.FileInputStream=var1084, $r27=var3948, java.io.IOException=var1142, $r14=var621, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3566, $r31=var3066, $r30=var2843, $r17=var2842, java.lang.Object=var3712, $r18=var2115, $r19=var2652, java.lang.Throwable=var2090}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet;	r2 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	r11 := @parameter2: java.util.List;	r7 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	if r0 != null goto $r28 = new java.io.InputStreamReader;	$r28 = new java.io.InputStreamReader;	$r24 = $r28;	$r27 = new java.io.FileInputStream;	$r14 := @caughtexception;	$r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An error occurred while reading from pattern file: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14);	throw $r31
;block_num 3