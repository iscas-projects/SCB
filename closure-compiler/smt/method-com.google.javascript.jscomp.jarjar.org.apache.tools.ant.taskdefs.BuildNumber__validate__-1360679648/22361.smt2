(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1406 0)
(declare-sort var266 0)
(declare-sort var1081 0)
(declare-sort var224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myFile/1619771515 (var1406) var266)
(declare-fun exists/1072868559 (var266) Bool)
(declare-fun canRead/-1629014391 (var266) Bool)
(declare-fun var1081-init () var1081)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var224) String)
(declare-fun cast-from-var266-to-var224 (var266) var224)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var1081 String) void)
(declare-const null-var1406 var1406)
(declare-const null-var266 var266)
(declare-const var3008 var1406) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber 
(assert (not (= var3008 null-var1406)))
(define-const var2259 var266 (myFile/1619771515 var3008)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
 ; Statement: if null != $r1 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert (not (= null-var266 var2259))) ; Cond: null != $r1 
(define-const var3469 var266 (myFile/1619771515 var3008)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
(define-const var3262 Bool (exists/1072868559 var3469)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert (not (= (ite var3262 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1255 var266 (myFile/1619771515 var3008)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
(define-const var3576 Bool (canRead/-1629014391 var1255)) ; Statement: $z1 = virtualinvoke $r3.<java.io.File: boolean canRead()>() 
 ; Statement: if $z1 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert (not (not (= (ite var3576 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var775 var1081 var1081-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1622 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1622)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1622!1 String)
(assert (= var1622!1 ""))
(assert true)
(define-const var437 String (append/672562846 var1622!1 "Unable to read from ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read from ") 
(declare-const var1622!2 String)
(assert (= var1622!2 (str.++ var1622!1 "Unable to read from ")))
(define-const var3454 var266 (myFile/1619771515 var3008)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
(define-const var1602 String (append/-1031950772 var437 (cast-from-var266-to-var224 var3454))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var437!1 String)
(assert (str.prefixof var437 var437!1))
(assert true)
(define-const var1506 String (append/672562846 var1602 ".")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1602!1 String)
(assert (= var1602!1 (str.++ var1602 ".")))
(assert true)
(define-const var2332 String (toString/-2075883882 var1506)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var775 var2332)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r18) 

(declare-const var775!1 var1081)
(declare-const var2332!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {myFile/1619771515=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber], java.io.File), exists/1072868559=([java.io.File], boolean), canRead/-1629014391=([java.io.File], boolean), var1081-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var266-to-var224=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1406=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber, var3008=r0, var266=java.io.File, var2259=$r1, var3469=$r2, var3262=$z0, var1255=$r3, var3576=$z1, var1081=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var775=$r12, var1622=$r13, var437=$r15, var3454=$r14, var224=java.lang.Object, var1602=$r16, var1506=$r17, var2332=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber=var1406, r0=var3008, java.io.File=var266, $r1=var2259, $r2=var3469, $z0=var3262, $r3=var1255, $z1=var3576, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1081, $r12=var775, $r13=var1622, $r15=var437, $r14=var3454, java.lang.Object=var224, $r16=var1602, $r17=var1506, $r18=var2332}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	if null != $r1 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$z0 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$z1 = virtualinvoke $r3.<java.io.File: boolean canRead()>();	if $z1 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read from ");	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r18);	throw $r12
;block_num 4