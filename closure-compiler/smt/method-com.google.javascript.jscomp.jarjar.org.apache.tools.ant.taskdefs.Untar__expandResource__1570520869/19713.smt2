(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1740 0)
(declare-sort var2232 0)
(declare-sort var2531 0)
(declare-sort var680 0)
(declare-sort var2164 0)
(declare-sort var2243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExists/-1936344525 (var2232) Bool)
(declare-fun var680-init () var680)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1314741259 (var2232) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2243) var2164)
(declare-fun cast-from-var1740-to-var2243 (var1740) var2243)
(declare-fun <init>/-469549130 (var680 String var2164) void)
(declare-const null-var1740 var1740)
(declare-const null-var2232 var2232)
(declare-const null-var2531 var2531)
(declare-const var1652 var1740) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar 
(assert (not (= var1652 null-var1740)))
(declare-const var2308 var2232) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2308 null-var2232)))
(declare-const var2772 var2531) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var2772 null-var2531)))
(assert true)
(define-const var770 Bool (isExists/-1936344525 var2308)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>() 
 ; Statement: if $z0 != 0 goto r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>() 
(assert (not (not (= (ite var770 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1563 var680 var680-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var428 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var428)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var428!1 String)
(assert (= var428!1 ""))
(assert true)
(define-const var841 String (append/672562846 var428!1 "Unable to untar ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to untar ") 
(declare-const var428!2 String)
(assert (= var428!2 (str.++ var428!1 "Unable to untar ")))
(assert true)
(define-const var2441 String (getName/1314741259 var2308)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var2053 String (append/672562846 var841 var2441)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var841!1 String)
(assert (= var841!1 (str.++ var841 var2441)))
(assert true)
(define-const var2662 String (append/672562846 var2053 " as the it does not exist")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the it does not exist") 
(declare-const var2053!1 String)
(assert (= var2053!1 (str.++ var2053 " as the it does not exist")))
(assert true)
(define-const var2780 String (toString/-2075883882 var2662)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var981 var2164 (getLocation/851674571 (cast-from-var1740-to-var2243 var1652))) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1563 var2780 var981)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r11, $r10) 

(declare-const var1563!1 var680)
(declare-const var2780!1 String)
(declare-const var981!1 var2164)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {isExists/-1936344525=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), var680-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1740-to-var2243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1740=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar, var1652=r1, var2232=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2308=r0, var2531=java.io.File, var2772=r2, var770=$z0, var680=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1563=$r4, var428=$r5, var841=$r7, var2441=$r6, var2053=$r8, var2662=$r9, var2780=$r11, var2164=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2243=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var981=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar=var1740, r1=var1652, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2232, r0=var2308, java.io.File=var2531, r2=var2772, $z0=var770, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var680, $r4=var1563, $r5=var428, $r7=var841, $r6=var2441, $r8=var2053, $r9=var2662, $r11=var2780, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2164, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2243, $r10=var981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r2 := @parameter1: java.io.File;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>();	if $z0 != 0 goto r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.io.InputStream getInputStream()>();	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to untar ");	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the it does not exist");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Untar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r11, $r10);	throw $r4
;block_num 2