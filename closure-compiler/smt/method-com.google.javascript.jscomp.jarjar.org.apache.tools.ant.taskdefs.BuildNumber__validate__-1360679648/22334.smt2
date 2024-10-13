(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3677 0)
(declare-sort var3732 0)
(declare-sort var731 0)
(declare-sort var894 0)
(declare-sort var3664 0)
(declare-sort var1160 0)
(declare-sort var2464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myFile/1619771515 (var3677) var3732)
(declare-fun exists/1072868559 (var3732) Bool)
(declare-fun var3664-init () var3664)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1160) String)
(declare-fun cast-from-var3732-to-var1160 (var3732) var1160)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3664 String var2464) void)
(declare-fun cast-from-var894-to-var2464 (var894) var2464)
(declare-const null-var3677 var3677)
(declare-const null-var3732 var3732)
(declare-const var3677-FILE_UTILS var731)
(declare-const null-var894 var894)
(declare-const var1948 var3677) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber 
(assert (not (= var1948 null-var3677)))
(define-const var944 var3732 (myFile/1619771515 var1948)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
 ; Statement: if null != $r1 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert (not (= null-var3732 var944))) ; Cond: null != $r1 
(define-const var2644 var3732 (myFile/1619771515 var1948)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
(define-const var3650 Bool (exists/1072868559 var2644)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert (not (not (= (ite var3650 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1405 var731 var3677-FILE_UTILS) ; Statement: $r20 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS> 
(define-const var1393 var3732 (myFile/1619771515 var1948)) ; Statement: $r19 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1983 var894) ; Statement: $r25 := @caughtexception 
(assert (not (= var1983 null-var894)))
(define-const var37 var3664 var3664-init) ; Statement: $r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2261 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2261)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2261!1 String)
(assert (= var2261!1 ""))
(define-const var3290 var3732 (myFile/1619771515 var1948)) ; Statement: $r28 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
(define-const var2127 String (append/-1031950772 var2261!1 (cast-from-var3732-to-var1160 var3290))) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var2261!2 String)
(assert (str.prefixof var2261!1 var2261!2))
(assert true)
(define-const var3414 String (append/672562846 var2127 " doesn\u0027t exist and new file can\u0027t be created.")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist and new file can\'t be created.") 
(declare-const var2127!1 String)
(assert (= var2127!1 (str.++ var2127 " doesn\u0027t exist and new file can\u0027t be created.")))
(assert true)
(define-const var3101 String (toString/-2075883882 var3414)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var37 var3101 (cast-from-var894-to-var2464 var1983))) ; Statement: specialinvoke $r26.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r31, $r25) 

(declare-const var37!1 var3664)
(declare-const var3101!1 String)
(declare-const var1983!1 var894)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {myFile/1619771515=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber], java.io.File), exists/1072868559=([java.io.File], boolean), var3664-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3732-to-var1160=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var894-to-var2464=([java.io.IOException], java.lang.Throwable)}
; {var3677=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber, var1948=r0, var3732=java.io.File, var944=$r1, var2644=$r2, var3650=$z0, var731=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var1405=$r20, var1393=$r19, var894=java.io.IOException, var1983=$r25, var3664=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var37=$r26, var2261=$r27, var3290=$r28, var1160=java.lang.Object, var2127=$r29, var3414=$r30, var3101=$r31, var2464=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber=var3677, r0=var1948, java.io.File=var3732, $r1=var944, $r2=var2644, $z0=var3650, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var731, $r20=var1405, $r19=var1393, java.io.IOException=var894, $r25=var1983, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3664, $r26=var37, $r27=var2261, $r28=var3290, java.lang.Object=var1160, $r29=var2127, $r30=var3414, $r31=var3101, java.lang.Throwable=var2464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	if null != $r1 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$z0 = virtualinvoke $r2.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r20 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils FILE_UTILS>;	$r19 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r25 := @caughtexception;	$r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t exist and new file can\'t be created.");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r31, $r25);	throw $r26
;block_num 4