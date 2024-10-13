(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1194 0)
(declare-sort var1947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTestHeader/1156609022 (var1194) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fThrownException/1903521243 (var1194) var1947)
(declare-fun getMessage/849299655 (var1947) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1194 var1194)
(declare-const var2929 var1194) ; Statement: r1 := @this: org.junit.runner.notification.Failure 
(assert (not (= var2929 null-var1194)))
(define-const var3606 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3606)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3606!1 String)
(assert (= var3606!1 ""))
(assert true)
(define-const var3521 String (getTestHeader/1156609022 var2929)) ; Statement: $r2 = virtualinvoke r1.<org.junit.runner.notification.Failure: java.lang.String getTestHeader()>() 
(assert true)
(define-const var3422 String (append/672562846 var3606!1 var3521)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3606!2 String)
(assert (= var3606!2 (str.++ var3606!1 var3521)))
(assert true)
(define-const var2532 String (append/672562846 var3422 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3422!1 String)
(assert (= var3422!1 (str.++ var3422 ": ")))
(define-const var1880 var1947 (fThrownException/1903521243 var2929)) ; Statement: $r4 = r1.<org.junit.runner.notification.Failure: java.lang.Throwable fThrownException> 
(assert true)
(define-const var2717 String (getMessage/849299655 var1880)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var3771 String (append/672562846 var2532 var2717)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2532!1 String)
(assert (= var2532!1 (str.++ var2532 var2717)))
(assert true)
(define-const var3216 String (toString/-2075883882 var3771)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTestHeader/1156609022=([org.junit.runner.notification.Failure], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fThrownException/1903521243=([org.junit.runner.notification.Failure], java.lang.Throwable), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1194=org.junit.runner.notification.Failure, var2929=r1, var3606=$r0, var3521=$r2, var3422=$r3, var2532=$r6, var1947=java.lang.Throwable, var1880=$r4, var2717=$r5, var3771=$r7, var3216=$r8}
; {org.junit.runner.notification.Failure=var1194, r1=var2929, $r0=var3606, $r2=var3521, $r3=var3422, $r6=var2532, java.lang.Throwable=var1947, $r4=var1880, $r5=var2717, $r7=var3771, $r8=var3216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.runner.notification.Failure;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.junit.runner.notification.Failure: java.lang.String getTestHeader()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r1.<org.junit.runner.notification.Failure: java.lang.Throwable fThrownException>;	$r5 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1