(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1482 0)
(declare-sort var1691 0)
(declare-sort var903 0)
(declare-sort var1501 0)
(declare-sort var2251 0)
(declare-sort var3435 0)
(declare-sort var1398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-1385219261 (var1501) String)
(declare-fun var1501-init () var1501)
(declare-fun var3435-init () var3435)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3435 String var1398) void)
(declare-fun cast-from-var2251-to-var1398 (var2251) var1398)
(declare-const null-var1482 var1482)
(declare-const null-var1691 var1691)
(declare-const null-String String)
(declare-const null-var1501 var1501)
(declare-const null-Bool Bool)
(declare-const null-var2251 var2251)
(declare-const var2016 var1482) ; Statement: r34 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var2016 null-var1482)))
(declare-const var2116 var1691) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2116 null-var1691)))
(declare-const var697 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var697 null-String)))
(declare-const var3191 String) ; Statement: r36 := @parameter2: java.lang.String 
(assert (not (= var3191 null-String)))
(declare-const var833 var1501) ; Statement: r0 := @parameter3: java.io.File 
(assert (not (= var833 null-var1501)))
(declare-const var1468 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1468 null-Bool)))
(declare-const var780 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var780 null-Bool)))
(define-const var3379 String null-String) ; Statement: r37 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var833 null-var1501))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var3379!1 String (getPath/-1385219261 var833)) ; Statement: r37 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r37 == null goto $r41 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir") 
(assert (not (= var3379!1 null-String))) ; Negate: Cond: r37 == null  
(define-const var3287 String var3379!1) ; Statement: $r41 = r37 
 ; Statement: goto [?= r42 = $r41] 
(assert true) ; Non Conditional
(define-const var299 String var3287) ; Statement: r42 = $r41 
 ; Statement: if r35 != null goto (branch) 
(assert (not (= var697 null-String))) ; Cond: r35 != null 
 ; Statement: if r36 != null goto (branch) 
(assert (not (= var3191 null-String))) ; Cond: r36 != null 
 ; Statement: if z0 == 0 goto $r2 = new java.text.DecimalFormat 
(assert (not (= (ite var780 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3201 var1501 var1501-init) ; Statement: $r12 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1247 var2251) ; Statement: $r27 := @caughtexception 
(assert (not (= var1247 null-var2251)))
(define-const var3277 var3435 var3435-init) ; Statement: $r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2627 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2627)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2627!1 String)
(assert (= var2627!1 ""))
(assert true)
(define-const var324 String (append/672562846 var2627!1 "Could not create tempfile in ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create tempfile in ") 
(declare-const var2627!2 String)
(assert (= var2627!2 (str.++ var2627!1 "Could not create tempfile in ")))
(assert true)
(define-const var3919 String (append/672562846 var324 var299)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42) 
(declare-const var324!1 String)
(assert (= var324!1 (str.++ var324 var299)))
(assert true)
(define-const var2616 String (toString/-2075883882 var3919)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3277 var2616 (cast-from-var2251-to-var1398 var1247))) ; Statement: specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27) 

(declare-const var3277!1 var3435)
(declare-const var2616!1 String)
(declare-const var1247!1 var2251)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-1385219261=([java.io.File], java.lang.String), var1501-init=([], java.io.File), var3435-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2251-to-var1398=([java.io.IOException], java.lang.Throwable)}
; {var1482=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2016=r34, var1691=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2116=r1, var697=r35, var903=null_type, var3191=r36, var1501=java.io.File, var833=r0, var1468=z2, var780=z0, var3379=r37, var3287=$r41, var299=r42, var3201=$r12, var2251=java.io.IOException, var1247=$r27, var3435=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3277=$r28, var2627=$r29, var324=$r30, var3919=$r31, var2616=$r32, var1398=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var1482, r34=var2016, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1691, r1=var2116, r35=var697, null_type=var903, r36=var3191, java.io.File=var1501, r0=var833, z2=var1468, z0=var780, r37=var3379, $r41=var3287, r42=var299, $r12=var3201, java.io.IOException=var2251, $r27=var1247, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3435, $r28=var3277, $r29=var2627, $r30=var324, $r31=var3919, $r32=var2616, java.lang.Throwable=var1398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r34 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r35 := @parameter1: java.lang.String;	r36 := @parameter2: java.lang.String;	r0 := @parameter3: java.io.File;	z2 := @parameter4: boolean;	z0 := @parameter5: boolean;	r37 = null;	if r0 == null goto (branch);	r37 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	goto [?= (branch)];	if r37 == null goto $r41 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.io.tmpdir");	$r41 = r37;	goto [?= r42 = $r41];	r42 = $r41;	if r35 != null goto (branch);	if r36 != null goto (branch);	if z0 == 0 goto $r2 = new java.text.DecimalFormat;	$r12 = new java.io.File;	$r27 := @caughtexception;	$r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create tempfile in ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r42);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27);	throw $r28
;block_num 9