(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3891 0)
(declare-sort var10 0)
(declare-sort var3072 0)
(declare-sort var554 0)
(declare-sort var1426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsolutePath/-802773300 (var10) String)
(declare-fun normalize/-959805877 (var3891 String) var10)
(declare-fun getCanonicalFile/2019344309 (var10) var10)
(declare-fun exists/1072868559 (var10) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1426) String)
(declare-fun cast-from-var10-to-var1426 (var10) var1426)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3072 String) void)
(declare-const null-var3891 var3891)
(declare-const null-var10 var10)
(declare-const var554-err var3072)
(declare-const var324 var3891) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var324 null-var3891)))
(declare-const var3297 var10) ; Statement: r39 := @parameter0: java.io.File 
(assert (not (= var3297 null-var10)))
(declare-const var187 var10) ; Statement: r40 := @parameter1: java.io.File 
(assert (not (= var187 null-var10)))
(assert true)
(define-const var3970 String (getAbsolutePath/-802773300 var3297)) ; Statement: $r1 = virtualinvoke r39.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2366 var10 (normalize/-959805877 var324 var3970)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r1) 
(assert true)
(define-const var3456 var10 (getCanonicalFile/2019344309 var2366)) ; Statement: r41 = virtualinvoke $r2.<java.io.File: java.io.File getCanonicalFile()>() 
(assert true)
(define-const var3613 String (getAbsolutePath/-802773300 var187)) ; Statement: $r3 = virtualinvoke r40.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var2789 var10 (normalize/-959805877 var324 var3613)) ; Statement: r42 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r3) 
(assert true)
(define-const var3374 Bool (exists/1072868559 var3456)) ; Statement: $z0 = virtualinvoke r41.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r41.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert (not (not (= (ite var3374 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3921 var3072 var554-err) ; Statement: $r35 = <java.lang.System: java.io.PrintStream err> 
(define-const var3071 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3071)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3071!1 String)
(assert (= var3071!1 ""))
(assert true)
(define-const var551 String (append/672562846 var3071!1 "Cannot rename nonexistent file ")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot rename nonexistent file ") 
(declare-const var3071!2 String)
(assert (= var3071!2 (str.++ var3071!1 "Cannot rename nonexistent file ")))
(assert true)
(define-const var3679 String (append/-1031950772 var551 (cast-from-var10-to-var1426 var3456))) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r41) 
(declare-const var551!1 String)
(assert (str.prefixof var551 var551!1))
(assert true)
(define-const var771 String (toString/-2075883882 var3679)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3921 var771)) ; Statement: virtualinvoke $r35.<java.io.PrintStream: void println(java.lang.String)>($r38) 

(declare-const var3921!1 var3072)
(declare-const var771!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsolutePath/-802773300=([java.io.File], java.lang.String), normalize/-959805877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.lang.String], java.io.File), getCanonicalFile/2019344309=([java.io.File], java.io.File), exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var10-to-var1426=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3891=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var324=r0, var10=java.io.File, var3297=r39, var187=r40, var3970=$r1, var2366=$r2, var3456=r41, var3613=$r3, var2789=r42, var3374=$z0, var3072=java.io.PrintStream, var554=java.lang.System, var3921=$r35, var3071=$r34, var551=$r36, var1426=java.lang.Object, var3679=$r37, var771=$r38}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var3891, r0=var324, java.io.File=var10, r39=var3297, r40=var187, $r1=var3970, $r2=var2366, r41=var3456, $r3=var3613, r42=var2789, $z0=var3374, java.io.PrintStream=var3072, java.lang.System=var554, $r35=var3921, $r34=var3071, $r36=var551, java.lang.Object=var1426, $r37=var3679, $r38=var771}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r39 := @parameter0: java.io.File;	r40 := @parameter1: java.io.File;	$r1 = virtualinvoke r39.<java.io.File: java.lang.String getAbsolutePath()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r1);	r41 = virtualinvoke $r2.<java.io.File: java.io.File getCanonicalFile()>();	$r3 = virtualinvoke r40.<java.io.File: java.lang.String getAbsolutePath()>();	r42 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File normalize(java.lang.String)>($r3);	$z0 = virtualinvoke r41.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r5 = virtualinvoke r41.<java.io.File: java.lang.String getAbsolutePath()>();	$r35 = <java.lang.System: java.io.PrintStream err>;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot rename nonexistent file ");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r41);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r35.<java.io.PrintStream: void println(java.lang.String)>($r38);	return
;block_num 2