(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var849 0)
(declare-sort var2525 0)
(declare-sort var2513 0)
(declare-sort var68 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var849-init () var849)
(declare-fun var2513-init () var2513)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var68) String)
(declare-fun cast-from-var2525-to-var68 (var2525) var68)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var2513 String var68) void)
(declare-const null-var2525 var2525)
(define-const var1491 var849 var849-init) ; Statement: $r0 = new java.util.concurrent.CopyOnWriteArrayList 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2053 var2525) ; Statement: $r5 := @caughtexception 
(assert (not (= var2053 null-var2525)))
(define-const var1401 var2513 var2513-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(define-const var125 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var125)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var125!1 String)
(assert (= var125!1 ""))
(assert true)
(define-const var92 String (append/672562846 var125!1 "Not able to create timer task. ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not able to create timer task. ") 
(declare-const var125!2 String)
(assert (= var125!2 (str.++ var125!1 "Not able to create timer task. ")))
(assert true)
(define-const var1639 String (getMessage/849299655 (cast-from-var2525-to-var68 var2053))) ; Statement: $r8 = virtualinvoke $r5.<java.lang.InterruptedException: java.lang.String getMessage()>() 
(assert true)
(define-const var2541 String (append/672562846 var92 var1639)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var92!1 String)
(assert (= var92!1 (str.++ var92 var1639)))
(assert true)
(define-const var402 String (toString/-2075883882 var2541)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1401 var402 (cast-from-var2525-to-var68 var2053))) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var1401!1 var2513)
(declare-const var402!1 String)
(declare-const var2053!1 var2525)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var849-init=([], java.util.concurrent.CopyOnWriteArrayList), var2513-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2525-to-var68=([java.lang.InterruptedException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var849=java.util.concurrent.CopyOnWriteArrayList, var1491=$r0, var2525=java.lang.InterruptedException, var2053=$r5, var2513=java.lang.IllegalStateException, var1401=$r6, var125=$r7, var92=$r9, var68=java.lang.Throwable, var1639=$r8, var2541=$r10, var402=$r11}
; {java.util.concurrent.CopyOnWriteArrayList=var849, $r0=var1491, java.lang.InterruptedException=var2525, $r5=var2053, java.lang.IllegalStateException=var2513, $r6=var1401, $r7=var125, $r9=var92, java.lang.Throwable=var68, $r8=var1639, $r10=var2541, $r11=var402}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.util.concurrent.CopyOnWriteArrayList;	$r5 := @caughtexception;	$r6 = new java.lang.IllegalStateException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not able to create timer task. ");	$r8 = virtualinvoke $r5.<java.lang.InterruptedException: java.lang.String getMessage()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2