(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var955 0)
(declare-sort var423 0)
(declare-sort var2374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var423) String)
(declare-fun exists/1072868559 (var423) Bool)
(declare-fun var2374-init () var2374)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2374 String) void)
(declare-const null-var955 var955)
(declare-const null-var423 var423)
(declare-const var3884 var955) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase 
(assert (not (= var3884 null-var955)))
(declare-const var1354 var423) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1354 null-var423)))
(assert true)
(define-const var3065 String (getPath/-1385219261 var1354)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2903 Bool (exists/1072868559 var1354)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var2903 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1557 var2374 var2374-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1425 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1425)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1425!1 String)
(assert (= var1425!1 ""))
(assert true)
(define-const var1847 String (append/672562846 var1425!1 "file ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("file ") 
(declare-const var1425!2 String)
(assert (= var1425!2 (str.++ var1425!1 "file ")))
(assert true)
(define-const var2370 String (append/672562846 var1847 var3065)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1847!1 String)
(assert (= var1847!1 (str.++ var1847 var3065)))
(assert true)
(define-const var2963 String (append/672562846 var2370 " not found.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.") 
(declare-const var2370!1 String)
(assert (= var2370!1 (str.++ var2370 " not found.")))
(assert true)
(define-const var2755 String (toString/-2075883882 var2963)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1557 var2755)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r12) 

(declare-const var1557!1 var2374)
(declare-const var2755!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), exists/1072868559=([java.io.File], boolean), var2374-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var955=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var3884=r4, var423=java.io.File, var1354=r0, var3065=r1, var2903=$z0, var2374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1557=$r7, var1425=$r8, var1847=$r9, var2370=$r10, var2963=$r11, var2755=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var955, r4=var3884, java.io.File=var423, r0=var1354, r1=var3065, $z0=var2903, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2374, $r7=var1557, $r8=var1425, $r9=var1847, $r10=var2370, $r11=var2963, $r12=var2755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase;	r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r3 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("file ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2