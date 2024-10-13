(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort var2109 0)
(declare-sort var838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun configuredManifest/1631861567 (var3742) var2109)
(declare-fun getMainSection/-608456416 (var2109) var838)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(declare-const null-var3742 var3742)
(declare-const null-var2109 var2109)
(declare-const null-var838 var838)
(declare-const var3825 var3742) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var3825 null-var3742)))
(define-const var3421 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3421)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3421!1 String)
(assert (= var3421!1 ""))
(define-const var526 var2109 (configuredManifest/1631861567 var3825)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest> 
(assert (not (= var526 null-var2109))) ; Cond: $r2 != null 
(define-const var217 var2109 (configuredManifest/1631861567 var3825)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest> 
(assert true)
(define-const var2564 var838 (getMainSection/-608456416 var217)) ; Statement: $r19 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section getMainSection()>() 
(assert true) ; Non Conditional
(define-const var2836 var838 var2564) ; Statement: r4 = $r19 
 ; Statement: if $r19 != null goto $r5 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>("Implementation-Title") 
(assert (not (not (= var2564 null-var838)))) ; Negate: Cond: $r19 != null  
(assert true)
;(assert (append/672562846 var3421!1 "No Implementation-Title set.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Title set.") 
(declare-const var3421!2 String)
(assert (= var3421!2 (str.++ var3421!1 "No Implementation-Title set.")))
(assert true)
;(assert (append/672562846 var3421!2 "No Implementation-Version set.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Version set.") 
(declare-const var3421!3 String)
(assert (= var3421!3 (str.++ var3421!2 "No Implementation-Version set.")))
(assert true)
;(assert (append/672562846 var3421!3 "No Implementation-Vendor set.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Vendor set.") 
(declare-const var3421!4 String)
(assert (= var3421!4 (str.++ var3421!3 "No Implementation-Vendor set.")))
 ; Statement: goto [?= $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var916 Int (length/-171891354 var3421!4)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto return 
(assert (<= var916 0)) ; Cond: $i1 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), configuredManifest/1631861567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest), getMainSection/-608456416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var3742=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var3825=r1, var3421=$r0, var2109=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var526=$r2, var217=$r3, var838=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var2564=$r19, var2836=r4, var916=$i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var3742, r1=var3825, $r0=var3421, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var2109, $r2=var526, $r3=var217, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var838, $r19=var2564, r4=var2836, $i1=var916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest>;	$r19 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section getMainSection()>();	r4 = $r19;	if $r19 != null goto $r5 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>("Implementation-Title");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Title set.");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Version set.");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Vendor set.");	goto [?= $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()];	$i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto return;	return
;block_num 6