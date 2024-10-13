(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1977 0)
(declare-sort var173 0)
(declare-sort var1369 0)
(declare-sort var1132 0)
(declare-sort var1956 0)
(declare-sort var2024 0)
(declare-sort var3888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWriting/1631877189 (var1977) Bool)
(declare-fun var1132-init () var1132)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1956) String)
(declare-fun cast-from-var1369-to-var1956 (var1369) var1956)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var3888) var2024)
(declare-fun cast-from-var1977-to-var3888 (var1977) var3888)
(declare-fun <init>/1933136886 (var1132 String var1956 var2024) void)
(declare-const null-var1977 var1977)
(declare-const null-var173 var173)
(declare-const null-var1369 var1369)
(declare-const var395 var1977) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip 
(assert (not (= var395 null-var1977)))
(declare-const var1378 var173) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1378 null-var173)))
(define-const var1436 Bool (skipWriting/1631877189 var395)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: boolean skipWriting> 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r1.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (not (= (ite var1436 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var1944 var1369) ; Statement: $r13 := @caughtexception 
(assert (not (= var1944 null-var1369)))
(define-const var2606 var1132 var1132-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3389 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3389)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3389!1 String)
(assert (= var3389!1 ""))
(assert true)
(define-const var1570 String (append/672562846 var3389!1 "Could not create empty ZIP archive (")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create empty ZIP archive (") 
(declare-const var3389!2 String)
(assert (= var3389!2 (str.++ var3389!1 "Could not create empty ZIP archive (")))
(assert true)
(define-const var3490 String (getMessage/849299655 (cast-from-var1369-to-var1956 var1944))) ; Statement: $r16 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var3617 String (append/672562846 var1570 var3490)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1570!1 String)
(assert (= var1570!1 (str.++ var1570 var3490)))
(assert true)
(define-const var3568 String (append/672562846 var3617 ")")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3617!1 String)
(assert (= var3617!1 (str.++ var3617 ")")))
(assert true)
(define-const var1639 String (toString/-2075883882 var3568)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var883 var2024 (getLocation/851674571 (cast-from-var1977-to-var3888 var395))) ; Statement: $r20 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2606 var1639 (cast-from-var1369-to-var1956 var1944) var883)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r21, $r13, $r20) 

(declare-const var2606!1 var1132)
(declare-const var1639!1 String)
(declare-const var1944!1 var1369)
(declare-const var883!1 var2024)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWriting/1631877189=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], boolean), var1132-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1369-to-var1956=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1977-to-var3888=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1977=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var395=r0, var173=java.io.File, var1378=r1, var1436=$z0, var1369=java.io.IOException, var1944=$r13, var1132=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2606=$r14, var3389=$r15, var1570=$r17, var1956=java.lang.Throwable, var3490=$r16, var3617=$r18, var3568=$r19, var1639=$r21, var2024=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var3888=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var883=$r20}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var1977, r0=var395, java.io.File=var173, r1=var1378, $z0=var1436, java.io.IOException=var1369, $r13=var1944, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1132, $r14=var2606, $r15=var3389, $r17=var1570, java.lang.Throwable=var1956, $r16=var3490, $r18=var3617, $r19=var3568, $r21=var1639, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2024, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3888, $r20=var883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip;	r1 := @parameter0: java.io.File;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: boolean skipWriting>;	if $z0 != 0 goto $r3 = virtualinvoke r1.<java.io.File: java.nio.file.Path toPath()>();	$r13 := @caughtexception;	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create empty ZIP archive (");	$r16 = virtualinvoke $r13.<java.io.IOException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r21, $r13, $r20);	throw $r14
;block_num 2