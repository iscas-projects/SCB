(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2066 0)
(declare-sort var2418 0)
(declare-sort var2981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun packageName/537892693 (var2066) String)
(declare-fun var2981-init () var2981)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun destDir/537892693 (var2066) var2981)
(declare-fun getPath/-1385219261 (var2981) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681595970 (var2981 String) void)
(declare-const null-var2066 var2066)
(declare-const null-String String)
(declare-const var2981-separatorChar Int)
(declare-const var28 var2066) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var28 null-var2066)))
(define-const var670 String (packageName/537892693 var28)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.lang.String packageName> 
 ; Statement: if $r1 != null goto $r2 = new java.io.File 
(assert (not (= var670 null-String))) ; Cond: $r1 != null 
(define-const var1852 var2981 var2981-init) ; Statement: $r2 = new java.io.File 
(define-const var2494 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2494)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2494!1 String)
(assert (= var2494!1 ""))
(define-const var3409 var2981 (destDir/537892693 var28)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir> 
(assert true)
(define-const var1629 String (getPath/-1385219261 var3409)) ; Statement: $r5 = virtualinvoke $r4.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var848 String (append/672562846 var2494!1 var1629)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2494!2 String)
(assert (= var2494!2 (str.++ var2494!1 var1629)))
(define-const var946 Int var2981-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var3677 String (append/-1166366385 var848 var946)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var848!1 String)
(assert (str.prefixof var848 var848!1))
(define-const var1153 String (packageName/537892693 var28)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.lang.String packageName> 
(define-const var2064 Int var2981-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var942 String (replace/1524665721 var1153 46 var2064)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(46, $c1) 
(assert true)
(define-const var3025 String (append/672562846 var3677 var942)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3677!1 String)
(assert (= var3677!1 (str.++ var3677 var942)))
(assert true)
(define-const var3368 String (toString/-2075883882 var3025)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681595970 var1852 var3368)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>($r11) 

(declare-const var1852!1 var2981)
(declare-const var3368!1 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {packageName/537892693=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], java.lang.String), var2981-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), destDir/537892693=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], java.io.File), getPath/-1385219261=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var2066=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var28=r0, var670=$r1, var2418=null_type, var2981=java.io.File, var1852=$r2, var2494=$r3, var3409=$r4, var1629=$r5, var848=$r6, var946=$c0, var3677=$r9, var1153=$r7, var2064=$c1, var942=$r8, var3025=$r10, var3368=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var2066, r0=var28, $r1=var670, null_type=var2418, java.io.File=var2981, $r2=var1852, $r3=var2494, $r4=var3409, $r5=var1629, $r6=var848, $c0=var946, $r9=var3677, $r7=var1153, $c1=var2064, $r8=var942, $r10=var3025, $r11=var3368}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.lang.String packageName>;	if $r1 != null goto $r2 = new java.io.File;	$r2 = new java.io.File;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.io.File destDir>;	$r5 = virtualinvoke $r4.<java.io.File: java.lang.String getPath()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$c0 = <java.io.File: char separatorChar>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: java.lang.String packageName>;	$c1 = <java.io.File: char separatorChar>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(46, $c1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>($r11);	return $r2
;block_num 2