(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1634 0)
(declare-sort var2802 0)
(declare-sort var1282 0)
(declare-sort var1095 0)
(declare-sort var1785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var2802) String)
(declare-fun exists/1072868559 (var2802) Bool)
(declare-fun var1095-init () var1095)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1095 String var1785) void)
(declare-fun cast-from-var1282-to-var1785 (var1282) var1785)
(declare-const null-var1634 var1634)
(declare-const null-var2802 var2802)
(declare-const null-var1282 var1282)
(declare-const var1180 var1634) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase 
(assert (not (= var1180 null-var1634)))
(declare-const var1971 var2802) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1971 null-var2802)))
(assert true)
(define-const var1550 String (getPath/-1385219261 var1971)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3562 Bool (exists/1072868559 var1971)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var3562 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var1385 var1282) ; Statement: $r13 := @caughtexception 
(assert (not (= var1385 null-var1282)))
(define-const var16 var1095 var1095-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3573 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3573)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3573!1 String)
(assert (= var3573!1 ""))
(assert true)
(define-const var2509 String (append/672562846 var3573!1 "file ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("file ") 
(declare-const var3573!2 String)
(assert (= var3573!2 (str.++ var3573!1 "file ")))
(assert true)
(define-const var564 String (append/672562846 var2509 var1550)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2509!1 String)
(assert (= var2509!1 (str.++ var2509 var1550)))
(assert true)
(define-const var2910 String (append/672562846 var564 " not found.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.") 
(declare-const var564!1 String)
(assert (= var564!1 (str.++ var564 " not found.")))
(assert true)
(define-const var2962 String (toString/-2075883882 var2910)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var16 var2962 (cast-from-var1282-to-var1785 var1385))) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r13) 

(declare-const var16!1 var1095)
(declare-const var2962!1 String)
(declare-const var1385!1 var1282)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), exists/1072868559=([java.io.File], boolean), var1095-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1282-to-var1785=([java.io.IOException], java.lang.Throwable)}
; {var1634=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var1180=r4, var2802=java.io.File, var1971=r0, var1550=r1, var3562=$z0, var1282=java.io.IOException, var1385=$r13, var1095=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var16=$r14, var3573=$r15, var2509=$r16, var564=$r17, var2910=$r18, var2962=$r19, var1785=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var1634, r4=var1180, java.io.File=var2802, r0=var1971, r1=var1550, $z0=var3562, java.io.IOException=var1282, $r13=var1385, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1095, $r14=var16, $r15=var3573, $r16=var2509, $r17=var564, $r18=var2910, $r19=var2962, java.lang.Throwable=var1785}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase;	r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r3 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r13 := @caughtexception;	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("file ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r13);	throw $r14
;block_num 2