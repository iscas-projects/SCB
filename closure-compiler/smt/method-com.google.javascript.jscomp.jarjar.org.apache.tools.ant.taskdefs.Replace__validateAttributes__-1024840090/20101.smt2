(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3867 0)
(declare-sort var2760 0)
(declare-sort var1056 0)
(declare-sort var2715 0)
(declare-sort var1896 0)
(declare-sort var2110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceFile/272769496 (var3867) var2760)
(declare-fun propertyResource/272769496 (var3867) var1056)
(declare-fun isExists/-1936344525 (var1056) Bool)
(declare-fun var2715-init () var2715)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1314741259 (var1056) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2110) var1896)
(declare-fun cast-from-var3867-to-var2110 (var3867) var2110)
(declare-fun <init>/-469549130 (var2715 String var1896) void)
(declare-const null-var3867 var3867)
(declare-const null-var2760 var2760)
(declare-const null-var1056 var1056)
(declare-const var2981 var3867) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var2981 null-var3867)))
(define-const var1916 var2760 (sourceFile/272769496 var2981)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: java.io.File sourceFile> 
 ; Statement: if $r1 != null goto $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource> 
(assert (not (= var1916 null-var2760))) ; Cond: $r1 != null 
(define-const var2239 var1056 (propertyResource/272769496 var2981)) ; Statement: $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource> 
 ; Statement: if $r25 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString token> 
(assert (not (= var2239 null-var1056))) ; Negate: Cond: $r25 == null  
(define-const var3321 var1056 (propertyResource/272769496 var2981)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource> 
(assert true)
(define-const var1296 Bool (isExists/-1936344525 var3321)) ; Statement: $z2 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>() 
 ; Statement: if $z2 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString token> 
(assert (not (not (= (ite var1296 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2526 var2715 var2715-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1026 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1026)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1026!1 String)
(assert (= var1026!1 ""))
(assert true)
(define-const var3317 String (append/672562846 var1026!1 "Property file ")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property file ") 
(declare-const var1026!2 String)
(assert (= var1026!2 (str.++ var1026!1 "Property file ")))
(define-const var3584 var1056 (propertyResource/272769496 var2981)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource> 
(assert true)
(define-const var3047 String (getName/1314741259 var3584)) ; Statement: $r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>() 
(assert true)
(define-const var370 String (append/672562846 var3317 var3047)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 var3047)))
(assert true)
(define-const var3906 String (append/672562846 var370 " does not exist.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.") 
(declare-const var370!1 String)
(assert (= var370!1 (str.++ var370 " does not exist.")))
(assert true)
(define-const var2698 String (toString/-2075883882 var3906)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3322 var1896 (getLocation/851674571 (cast-from-var3867-to-var2110 var2981))) ; Statement: $r19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2526 var2698 var3322)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r20, $r19) 

(declare-const var2526!1 var2715)
(declare-const var2698!1 String)
(declare-const var3322!1 var1896)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceFile/272769496=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace], java.io.File), propertyResource/272769496=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), isExists/-1936344525=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], boolean), var2715-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3867-to-var2110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3867=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var2981=r0, var2760=java.io.File, var1916=$r1, var1056=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2239=$r25, var3321=$r11, var1296=$z2, var2715=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2526=$r12, var1026=$r13, var3317=$r16, var3584=$r14, var3047=$r15, var370=$r17, var3906=$r18, var2698=$r20, var1896=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2110=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3322=$r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var3867, r0=var2981, java.io.File=var2760, $r1=var1916, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1056, $r25=var2239, $r11=var3321, $z2=var1296, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2715, $r12=var2526, $r13=var1026, $r16=var3317, $r14=var3584, $r15=var3047, $r17=var370, $r18=var3906, $r20=var2698, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1896, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2110, $r19=var3322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: java.io.File sourceFile>;	if $r1 != null goto $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource>;	$r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource>;	if $r25 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString token>;	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource>;	$z2 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isExists()>();	if $z2 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString token>;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property file ");	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource propertyResource>;	$r15 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.");	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r20, $r19);	throw $r12
;block_num 4