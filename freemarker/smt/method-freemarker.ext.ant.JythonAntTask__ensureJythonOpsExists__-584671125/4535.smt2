(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2092 0)
(declare-sort var1900 0)
(declare-sort var562 0)
(declare-sort var2236 0)
(declare-sort var3081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jythonOps/1532117966 (var2092) var1900)
(declare-fun var2236-init () var2236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3081) String)
(declare-fun cast-from-var562-to-var3081 (var562) var3081)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2236 String) void)
(declare-const null-var2092 var2092)
(declare-const null-var1900 var1900)
(declare-const null-var562 var562)
(declare-const var3343 var2092) ; Statement: r0 := @this: freemarker.ext.ant.JythonAntTask 
(assert (not (= var3343 null-var2092)))
(define-const var2232 var1900 (jythonOps/1532117966 var3343)) ; Statement: $r1 = r0.<freemarker.ext.ant.JythonAntTask: freemarker.ext.ant.UnlinkedJythonOperations jythonOps> 
 ; Statement: if $r1 != null goto return 
(assert (not (not (= var2232 null-var1900)))) ; Negate: Cond: $r1 != null  
(declare-const var771 var562) ; Statement: $r11 := @caughtexception 
(assert (not (= var771 null-var562)))
(define-const var2616 var2236 var2236-init) ; Statement: $r12 = new java.lang.RuntimeException 
(define-const var1354 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1354)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1354!1 String)
(assert (= var1354!1 ""))
(assert true)
(define-const var656 String (append/672562846 var1354!1 "A ClassNotFoundException has been thrown when trying to get the freemarker.ext.ant.UnlinkedJythonOperationsImpl class. The error message was: ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A ClassNotFoundException has been thrown when trying to get the freemarker.ext.ant.UnlinkedJythonOperationsImpl class. The error message was: ") 
(declare-const var1354!2 String)
(assert (= var1354!2 (str.++ var1354!1 "A ClassNotFoundException has been thrown when trying to get the freemarker.ext.ant.UnlinkedJythonOperationsImpl class. The error message was: ")))
(assert true)
(define-const var1358 String (getMessage/849299655 (cast-from-var562-to-var3081 var771))) ; Statement: $r14 = virtualinvoke $r11.<java.lang.ClassNotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var374 String (append/672562846 var656 var1358)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var656!1 String)
(assert (= var656!1 (str.++ var656 var1358)))
(assert true)
(define-const var1299 String (toString/-2075883882 var374)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2616 var1299)) ; Statement: specialinvoke $r12.<java.lang.RuntimeException: void <init>(java.lang.String)>($r17) 

(declare-const var2616!1 var2236)
(declare-const var1299!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {jythonOps/1532117966=([freemarker.ext.ant.JythonAntTask], freemarker.ext.ant.UnlinkedJythonOperations), var2236-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var562-to-var3081=([java.lang.ClassNotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2092=freemarker.ext.ant.JythonAntTask, var3343=r0, var1900=freemarker.ext.ant.UnlinkedJythonOperations, var2232=$r1, var562=java.lang.ClassNotFoundException, var771=$r11, var2236=java.lang.RuntimeException, var2616=$r12, var1354=$r13, var656=$r15, var3081=java.lang.Throwable, var1358=$r14, var374=$r16, var1299=$r17}
; {freemarker.ext.ant.JythonAntTask=var2092, r0=var3343, freemarker.ext.ant.UnlinkedJythonOperations=var1900, $r1=var2232, java.lang.ClassNotFoundException=var562, $r11=var771, java.lang.RuntimeException=var2236, $r12=var2616, $r13=var1354, $r15=var656, java.lang.Throwable=var3081, $r14=var1358, $r16=var374, $r17=var1299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.ant.JythonAntTask;	$r1 = r0.<freemarker.ext.ant.JythonAntTask: freemarker.ext.ant.UnlinkedJythonOperations jythonOps>;	if $r1 != null goto return;	$r11 := @caughtexception;	$r12 = new java.lang.RuntimeException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A ClassNotFoundException has been thrown when trying to get the freemarker.ext.ant.UnlinkedJythonOperationsImpl class. The error message was: ");	$r14 = virtualinvoke $r11.<java.lang.ClassNotFoundException: java.lang.String getMessage()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.RuntimeException: void <init>(java.lang.String)>($r17);	throw $r12
;block_num 2