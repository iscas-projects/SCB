(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3293 0)
(declare-sort var2594 0)
(declare-sort var1015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1015-init () var1015)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1015 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2594 var2594)
(declare-const var3768 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3768 null-ClassObject)))
(declare-const var655 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var655 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var29 var2594) ; Statement: $r3 := @caughtexception 
(assert (not (= var29 null-var2594)))
(define-const var1292 var1015 var1015-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2647 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2647)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2647!1 String)
(assert (= var2647!1 ""))
(assert true)
(define-const var2830 String (append/672562846 var2647!1 "Unable to find field ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find field ") 
(declare-const var2647!2 String)
(assert (= var2647!2 (str.++ var2647!1 "Unable to find field ")))
(assert true)
(define-const var1073 String (append/672562846 var2830 var655)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2830!1 String)
(assert (= var2830!1 (str.++ var2830 var655)))
(assert true)
(define-const var1290 String (append/672562846 var1073 " in message class ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in message class ") 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 " in message class ")))
(assert true)
(define-const var3095 String (getName/-1958580599 var3768)) ; Statement: $r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3691 String (append/672562846 var1290 var3095)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1290!1 String)
(assert (= var1290!1 (str.++ var1290 var3095)))
(assert true)
(define-const var3316 String (toString/-2075883882 var3691)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1292 var3316)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1292!1 var1015)
(declare-const var3316!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1015-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3768=r0, var655=r1, var3293=null_type, var2594=java.lang.Exception, var29=$r3, var1015=java.lang.IllegalArgumentException, var1292=$r4, var2647=$r5, var2830=$r6, var1073=$r7, var1290=$r9, var3095=$r8, var3691=$r10, var3316=$r11}
; {r0=var3768, r1=var655, null_type=var3293, java.lang.Exception=var2594, $r3=var29, java.lang.IllegalArgumentException=var1015, $r4=var1292, $r5=var2647, $r6=var2830, $r7=var1073, $r9=var1290, $r8=var3095, $r10=var3691, $r11=var3316}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	$r3 := @caughtexception;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find field ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in message class ");	$r8 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2