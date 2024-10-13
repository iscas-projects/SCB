(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var991 0)
(declare-sort var2210 0)
(declare-sort var3108 0)
(declare-sort var1625 0)
(declare-sort var3824 0)
(declare-sort var3682 0)
(declare-sort var595 0)
(declare-sort var2409 0)
(declare-sort var1062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3108-init () var3108)
(declare-fun var3824-init () var3824)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1314741259 (var2210) String)
(declare-fun append/-1031950772 (String var3682) String)
(declare-fun cast-from-var1625-to-var3682 (var1625) var3682)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2409) var595)
(declare-fun cast-from-var991-to-var2409 (var991) var2409)
(declare-fun <init>/1933136886 (var3824 String var1062 var595) void)
(declare-fun cast-from-var1625-to-var1062 (var1625) var1062)
(declare-const null-var991 var991)
(declare-const null-var2210 var2210)
(declare-const null-var1625 var1625)
(declare-const var2035 var991) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList 
(assert (not (= var2035 null-var991)))
(declare-const var2029 var2210) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2029 null-var2210)))
(define-const var1239 var3108 var3108-init) ; Statement: $r0 = new java.io.BufferedReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3105 var1625) ; Statement: $r8 := @caughtexception 
(assert (not (= var3105 null-var1625)))
(define-const var2951 var3824 var3824-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2876 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2876)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2876!1 String)
(assert (= var2876!1 ""))
(assert true)
(define-const var3353 String (append/672562846 var2876!1 "Unable to read resource ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read resource ") 
(declare-const var2876!2 String)
(assert (= var2876!2 (str.++ var2876!1 "Unable to read resource ")))
(assert true)
(define-const var1314 String (getName/1314741259 var2029)) ; Statement: $r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var3453 String (append/672562846 var3353 var1314)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3353!1 String)
(assert (= var3353!1 (str.++ var3353 var1314)))
(assert true)
(define-const var3928 String (append/672562846 var3453 ": ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3453!1 String)
(assert (= var3453!1 (str.++ var3453 ": ")))
(assert true)
(define-const var142 String (append/-1031950772 var3928 (cast-from-var1625-to-var3682 var3105))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3928!1 String)
(assert (str.prefixof var3928 var3928!1))
(assert true)
(define-const var3140 String (toString/-2075883882 var142)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var861 var595 (getLocation/851674571 (cast-from-var991-to-var2409 var2035))) ; Statement: $r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2951 var3140 (cast-from-var1625-to-var1062 var3105) var861)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r17, $r8, $r16) 

(declare-const var2951!1 var3824)
(declare-const var3140!1 String)
(declare-const var3105!1 var1625)
(declare-const var861!1 var595)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3108-init=([], java.io.BufferedReader), var3824-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1625-to-var3682=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var991-to-var2409=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var1625-to-var1062=([java.io.IOException], java.lang.Throwable)}
; {var991=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList, var2035=r1, var2210=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2029=r2, var3108=java.io.BufferedReader, var1239=$r0, var1625=java.io.IOException, var3105=$r8, var3824=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2951=$r9, var2876=$r10, var3353=$r12, var1314=$r11, var3453=$r13, var3928=$r14, var3682=java.lang.Object, var142=$r15, var3140=$r17, var595=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2409=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var861=$r16, var1062=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList=var991, r1=var2035, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2210, r2=var2029, java.io.BufferedReader=var3108, $r0=var1239, java.io.IOException=var1625, $r8=var3105, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3824, $r9=var2951, $r10=var2876, $r12=var3353, $r11=var1314, $r13=var3453, $r14=var3928, java.lang.Object=var3682, $r15=var142, $r17=var3140, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var595, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2409, $r16=var861, java.lang.Throwable=var1062}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r0 = new java.io.BufferedReader;	$r8 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read resource ");	$r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ResourceList: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r17, $r8, $r16);	throw $r9
;block_num 2