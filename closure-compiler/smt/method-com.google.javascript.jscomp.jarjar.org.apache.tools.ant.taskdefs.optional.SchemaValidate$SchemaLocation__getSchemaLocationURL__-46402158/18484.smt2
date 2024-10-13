(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2242 0)
(declare-sort var3135 0)
(declare-sort var1768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/374023441 (var2242) var3135)
(declare-fun url/374023441 (var2242) String)
(declare-fun isSet/-913451819 (var2242 String) Bool)
(declare-fun var1768-init () var1768)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun namespace/374023441 (var2242) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1768 String) void)
(declare-const null-var2242 var2242)
(declare-const null-var3135 var3135)
(declare-const var2761 var2242) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var2761 null-var2242)))
(define-const var3451 var3135 (file/374023441 var2761)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r1 == null goto $z5 = 0 
(assert (= var3451 null-var3135)) ; Cond: $r1 == null 
(define-const var3292 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(define-const var2834 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var1491 Bool var2834) ; Statement: z0 = $z4 
(define-const var2867 String (url/374023441 var2761)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var3427 Bool (isSet/-913451819 var2761 var2867)) ; Statement: $z2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: boolean isSet(java.lang.String)>($r2) 
 ; Statement: if $z5 != 0 goto (branch) 
(assert (not (not (= (ite var3292 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (not (= (ite var3427 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var715 var1768 var1768-init) ; Statement: $r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3658 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3658)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3658!1 String)
(assert (= var3658!1 ""))
(assert true)
(define-const var120 String (append/672562846 var3658!1 "No file or URL supplied for the schema ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No file or URL supplied for the schema ") 
(declare-const var3658!2 String)
(assert (= var3658!2 (str.++ var3658!1 "No file or URL supplied for the schema ")))
(define-const var634 String (namespace/374023441 var2761)) ; Statement: $r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert true)
(define-const var3969 String (append/672562846 var120 var634)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var120!1 String)
(assert (= var120!1 (str.++ var120 var634)))
(assert true)
(define-const var1858 String (toString/-2075883882 var3969)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var715 var1858)) ; Statement: specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24) 

(declare-const var715!1 var1768)
(declare-const var1858!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), isSet/-913451819=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, java.lang.String], boolean), var1768-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2242=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var2761=r0, var3135=java.io.File, var3451=$r1, var3292=$z5, var2834=$z4, var1491=z0, var2867=$r2, var3427=$z2, var1768=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var715=$r19, var3658=$r20, var120=$r22, var634=$r21, var3969=$r23, var1858=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var2242, r0=var2761, java.io.File=var3135, $r1=var3451, $z5=var3292, $z4=var2834, z0=var1491, $r2=var2867, $z2=var3427, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1768, $r19=var715, $r20=var3658, $r22=var120, $r21=var634, $r23=var3969, $r24=var1858}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r1 == null goto $z5 = 0;	$z5 = 0;	$z4 = 0;	z0 = $z4;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$z2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: boolean isSet(java.lang.String)>($r2);	if $z5 != 0 goto (branch);	if $z2 != 0 goto (branch);	$r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No file or URL supplied for the schema ");	$r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 5