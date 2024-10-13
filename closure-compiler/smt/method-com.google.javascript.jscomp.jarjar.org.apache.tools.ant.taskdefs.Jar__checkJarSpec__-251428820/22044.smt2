(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3960 0)
(declare-sort var2438 0)
(declare-sort var1207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun configuredManifest/1631861567 (var3960) var2438)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(declare-const null-var3960 var3960)
(declare-const null-var2438 var2438)
(declare-const null-var1207 var1207)
(declare-const var3824 var3960) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var3824 null-var3960)))
(define-const var1944 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1944)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1944!1 String)
(assert (= var1944!1 ""))
(define-const var887 var2438 (configuredManifest/1631861567 var3824)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest> 
(assert (not (not (= var887 null-var2438)))) ; Negate: Cond: $r2 != null  
(define-const var3978 var1207 null-var1207) ; Statement: $r19 = null 
 ; Statement: goto [?= r4 = $r19] 
(assert true) ; Non Conditional
(define-const var3921 var1207 var3978) ; Statement: r4 = $r19 
 ; Statement: if $r19 != null goto $r5 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>("Implementation-Title") 
(assert (not (not (= var3978 null-var1207)))) ; Negate: Cond: $r19 != null  
(assert true)
;(assert (append/672562846 var1944!1 "No Implementation-Title set.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Title set.") 
(declare-const var1944!2 String)
(assert (= var1944!2 (str.++ var1944!1 "No Implementation-Title set.")))
(assert true)
;(assert (append/672562846 var1944!2 "No Implementation-Version set.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Version set.") 
(declare-const var1944!3 String)
(assert (= var1944!3 (str.++ var1944!2 "No Implementation-Version set.")))
(assert true)
;(assert (append/672562846 var1944!3 "No Implementation-Vendor set.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Vendor set.") 
(declare-const var1944!4 String)
(assert (= var1944!4 (str.++ var1944!3 "No Implementation-Vendor set.")))
 ; Statement: goto [?= $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var787 Int (length/-171891354 var1944!4)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto return 
(assert (<= var787 0)) ; Cond: $i1 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), configuredManifest/1631861567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var3960=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var3824=r1, var1944=$r0, var2438=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest, var887=$r2, var1207=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var3978=$r19, var3921=r4, var787=$i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var3960, r1=var3824, $r0=var1944, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest=var2438, $r2=var887, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var1207, $r19=var3978, r4=var3921, $i1=var787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest configuredManifest>;	$r19 = null;	goto [?= r4 = $r19];	r4 = $r19;	if $r19 != null goto $r5 = virtualinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute getAttribute(java.lang.String)>("Implementation-Title");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Title set.");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Version set.");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No Implementation-Vendor set.");	goto [?= $i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()];	$i1 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto return;	return
;block_num 6