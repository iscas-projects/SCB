(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1862 0)
(declare-sort var1523 0)
(declare-sort var504 0)
(declare-sort var3479 0)
(declare-sort var1864 0)
(declare-sort var502 0)
(declare-sort var3578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var504-init () var504)
(declare-fun var1864-init () var1864)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var502) String)
(declare-fun cast-from-var1523-to-var502 (var1523) var502)
(declare-fun getMessage/849299655 (var3578) String)
(declare-fun cast-from-var3479-to-var3578 (var3479) var3578)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1864 String var3578) void)
(declare-const null-var1862 var1862)
(declare-const null-var1523 var1523)
(declare-const null-var3479 var3479)
(declare-const var3296 var1862) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var3296 null-var1862)))
(declare-const var2405 var1523) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var2405 null-var1523)))
(define-const var3841 var504 var504-init) ; Statement: $r0 = new java.io.InputStreamReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3656 var3479) ; Statement: $r7 := @caughtexception 
(assert (not (= var3656 null-var3479)))
(define-const var657 var1864 var1864-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var911 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var911)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var911!1 String)
(assert (= var911!1 ""))
(assert true)
(define-const var1459 String (append/672562846 var911!1 "Unable to read manifest file: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read manifest file: ") 
(declare-const var911!2 String)
(assert (= var911!2 (str.++ var911!1 "Unable to read manifest file: ")))
(assert true)
(define-const var2977 String (append/-1031950772 var1459 (cast-from-var1523-to-var502 var2405))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1459!1 String)
(assert (str.prefixof var1459 var1459!1))
(assert true)
(define-const var280 String (append/672562846 var2977 " (")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2977!1 String)
(assert (= var2977!1 (str.++ var2977 " (")))
(assert true)
(define-const var1000 String (getMessage/849299655 (cast-from-var3479-to-var3578 var3656))) ; Statement: $r12 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var970 String (append/672562846 var280 var1000)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var280!1 String)
(assert (= var280!1 (str.++ var280 var1000)))
(assert true)
(define-const var397 String (append/672562846 var970 ")")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var970!1 String)
(assert (= var970!1 (str.++ var970 ")")))
(assert true)
(define-const var634 String (toString/-2075883882 var397)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var657 var634 (cast-from-var3479-to-var3578 var3656))) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r7) 

(declare-const var657!1 var1864)
(declare-const var634!1 String)
(declare-const var3656!1 var3479)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var504-init=([], java.io.InputStreamReader), var1864-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1523-to-var502=([java.io.File], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3479-to-var3578=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var1862=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var3296=r4, var1523=java.io.File, var2405=r1, var504=java.io.InputStreamReader, var3841=$r0, var3479=java.io.IOException, var3656=$r7, var1864=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var657=$r8, var911=$r9, var1459=$r10, var502=java.lang.Object, var2977=$r11, var280=$r13, var3578=java.lang.Throwable, var1000=$r12, var970=$r14, var397=$r15, var634=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var1862, r4=var3296, java.io.File=var1523, r1=var2405, java.io.InputStreamReader=var504, $r0=var3841, java.io.IOException=var3479, $r7=var3656, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1864, $r8=var657, $r9=var911, $r10=var1459, java.lang.Object=var502, $r11=var2977, $r13=var280, java.lang.Throwable=var3578, $r12=var1000, $r14=var970, $r15=var397, $r16=var634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r1 := @parameter0: java.io.File;	$r0 = new java.io.InputStreamReader;	$r7 := @caughtexception;	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to read manifest file: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r12 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r7);	throw $r8
;block_num 2