(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var162 0)
(declare-sort var373 0)
(declare-sort var1310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun file/374023441 (var162) var373)
(declare-fun url/374023441 (var162) String)
(declare-fun isSet/-913451819 (var162 String) Bool)
(declare-fun var1310-init () var1310)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun namespace/374023441 (var162) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1310 String) void)
(declare-const null-var162 var162)
(declare-const null-var373 var373)
(declare-const var3029 var162) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var3029 null-var162)))
(define-const var1114 var373 (file/374023441 var3029)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r1 == null goto $z5 = 0 
(assert (not (= var1114 null-var373))) ; Negate: Cond: $r1 == null  
(define-const var3291 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
(define-const var2277 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var1094 Bool var2277) ; Statement: z0 = $z4 
(define-const var350 String (url/374023441 var3029)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var1286 Bool (isSet/-913451819 var3029 var350)) ; Statement: $z2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: boolean isSet(java.lang.String)>($r2) 
 ; Statement: if $z5 != 0 goto (branch) 
(assert (not (not (= (ite var3291 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (not (= (ite var1286 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var685 var1310 var1310-init) ; Statement: $r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1531 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1531)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1531!1 String)
(assert (= var1531!1 ""))
(assert true)
(define-const var1720 String (append/672562846 var1531!1 "No file or URL supplied for the schema ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No file or URL supplied for the schema ") 
(declare-const var1531!2 String)
(assert (= var1531!2 (str.++ var1531!1 "No file or URL supplied for the schema ")))
(define-const var1317 String (namespace/374023441 var3029)) ; Statement: $r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert true)
(define-const var2432 String (append/672562846 var1720 var1317)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 var1317)))
(assert true)
(define-const var690 String (toString/-2075883882 var2432)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var685 var690)) ; Statement: specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24) 

(declare-const var685!1 var1310)
(declare-const var690!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), isSet/-913451819=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, java.lang.String], boolean), var1310-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var162=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var3029=r0, var373=java.io.File, var1114=$r1, var3291=$z5, var2277=$z4, var1094=z0, var350=$r2, var1286=$z2, var1310=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var685=$r19, var1531=$r20, var1720=$r22, var1317=$r21, var2432=$r23, var690=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var162, r0=var3029, java.io.File=var373, $r1=var1114, $z5=var3291, $z4=var2277, z0=var1094, $r2=var350, $z2=var1286, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1310, $r19=var685, $r20=var1531, $r22=var1720, $r21=var1317, $r23=var2432, $r24=var690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r1 == null goto $z5 = 0;	$z5 = 1;	$z4 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$z2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: boolean isSet(java.lang.String)>($r2);	if $z5 != 0 goto (branch);	if $z2 != 0 goto (branch);	$r19 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No file or URL supplied for the schema ");	$r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 5