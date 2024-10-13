(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3836 0)
(declare-sort var3818 0)
(declare-sort var344 0)
(declare-sort var3226 0)
(declare-sort var3629 0)
(declare-sort var1377 0)
(declare-sort var1477 0)
(declare-sort var1006 0)
(declare-sort var3420 0)
(declare-sort var1918 0)
(declare-sort var2819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1377-init () var1377)
(declare-fun cast-from-var1377-to-var1477 (var1377) var1477)
(declare-fun var3420-init () var3420)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1918) String)
(declare-fun cast-from-var3818-to-var1918 (var3818) var1918)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3420 String var2819) void)
(declare-fun cast-from-var1006-to-var2819 (var1006) var2819)
(declare-const null-var3836 var3836)
(declare-const null-var3818 var3818)
(declare-const null-String String)
(declare-const null-var3226 var3226)
(declare-const null-var3629 var3629)
(declare-const null-var1006 var1006)
(declare-const var1609 var3836) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet 
(assert (not (= var1609 null-var3836)))
(declare-const var2732 var3818) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2732 null-var3818)))
(declare-const var970 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var970 null-String)))
(declare-const var1374 var3226) ; Statement: r11 := @parameter2: java.util.List 
(assert (not (= var1374 null-var3226)))
(declare-const var1586 var3629) ; Statement: r7 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1586 null-var3629)))
 ; Statement: if r0 != null goto $r28 = new java.io.InputStreamReader 
(assert (not (not (= var970 null-String)))) ; Negate: Cond: r0 != null  
(define-const var2197 var1377 var1377-init) ; Statement: $r26 = new java.io.FileReader 
(define-const var2937 var1477 (cast-from-var1377-to-var1477 var2197)) ; Statement: $r24 = $r26 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var279 var1006) ; Statement: $r14 := @caughtexception 
(assert (not (= var279 null-var1006)))
(define-const var169 var3420 var3420-init) ; Statement: $r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2443 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2443)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2443!1 String)
(assert (= var2443!1 ""))
(assert true)
(define-const var902 String (append/672562846 var2443!1 "An error occurred while reading from pattern file: ")) ; Statement: $r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An error occurred while reading from pattern file: ") 
(declare-const var2443!2 String)
(assert (= var2443!2 (str.++ var2443!1 "An error occurred while reading from pattern file: ")))
(assert true)
(define-const var557 String (append/-1031950772 var902 (cast-from-var3818-to-var1918 var2732))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var902!1 String)
(assert (str.prefixof var902 var902!1))
(assert true)
(define-const var1102 String (toString/-2075883882 var557)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var169 var1102 (cast-from-var1006-to-var2819 var279))) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14) 

(declare-const var169!1 var3420)
(declare-const var1102!1 String)
(declare-const var279!1 var1006)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var1377-init=([], java.io.FileReader), cast-from-var1377-to-var1477=([java.io.FileReader], java.io.InputStreamReader), var3420-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3818-to-var1918=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1006-to-var2819=([java.io.IOException], java.lang.Throwable)}
; {var3836=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet, var1609=r10, var3818=java.io.File, var2732=r2, var970=r0, var344=null_type, var3226=java.util.List, var1374=r11, var3629=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1586=r7, var1377=java.io.FileReader, var2197=$r26, var1477=java.io.InputStreamReader, var2937=$r24, var1006=java.io.IOException, var279=$r14, var3420=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var169=$r31, var2443=$r30, var902=$r17, var1918=java.lang.Object, var557=$r18, var1102=$r19, var2819=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet=var3836, r10=var1609, java.io.File=var3818, r2=var2732, r0=var970, null_type=var344, java.util.List=var3226, r11=var1374, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3629, r7=var1586, java.io.FileReader=var1377, $r26=var2197, java.io.InputStreamReader=var1477, $r24=var2937, java.io.IOException=var1006, $r14=var279, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3420, $r31=var169, $r30=var2443, $r17=var902, java.lang.Object=var1918, $r18=var557, $r19=var1102, java.lang.Throwable=var2819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PatternSet;	r2 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	r11 := @parameter2: java.util.List;	r7 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	if r0 != null goto $r28 = new java.io.InputStreamReader;	$r26 = new java.io.FileReader;	$r24 = $r26;	$r14 := @caughtexception;	$r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("An error occurred while reading from pattern file: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14);	throw $r31
;block_num 3