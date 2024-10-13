(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var55 0)
(declare-sort var2294 0)
(declare-sort var2631 0)
(declare-sort var3114 0)
(declare-sort var2390 0)
(declare-sort var3801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2294-init () var2294)
(declare-fun var3801-init () var3801)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3801 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3114-MESSAGES_BUNDLE var2631)
(declare-const null-var2390 var2390)
(declare-const var3368 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3368 null-String)))
(declare-const var1284 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var1284 null-__Array__Int__String__)))
(define-const var3970 var2294 var2294-init) ; Statement: $r0 = new java.text.MessageFormat 
(define-const var3343 var2631 var3114-MESSAGES_BUNDLE) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var725 var2390) ; Statement: $r6 := @caughtexception 
(assert (not (= var725 null-var2390)))
(define-const var3620 var3801 var3801-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var249 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var249)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var249!1 String)
(assert (= var249!1 ""))
(assert true)
(define-const var3665 String (append/672562846 var249!1 "no message resource found for message id: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no message resource found for message id: ") 
(declare-const var249!2 String)
(assert (= var249!2 (str.++ var249!1 "no message resource found for message id: ")))
(assert true)
(define-const var1353 String (append/672562846 var3665 var3368)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3665!1 String)
(assert (= var3665!1 (str.++ var3665 var3368)))
(assert true)
(define-const var1166 String (toString/-2075883882 var1353)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3620 var1166)) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11) 

(declare-const var3620!1 var3801)
(declare-const var1166!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2294-init=([], java.text.MessageFormat), var3801-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3368=r1, var55=null_type, var1284=r4, var2294=java.text.MessageFormat, var3970=$r0, var2631=java.util.ResourceBundle, var3114=jdk.nashorn.internal.runtime.ECMAErrors, var3343=$r2, var2390=java.util.MissingResourceException, var725=$r6, var3801=java.lang.RuntimeException, var3620=$r7, var249=$r8, var3665=$r9, var1353=$r10, var1166=$r11}
; {r1=var3368, null_type=var55, r4=var1284, java.text.MessageFormat=var2294, $r0=var3970, java.util.ResourceBundle=var2631, jdk.nashorn.internal.runtime.ECMAErrors=var3114, $r2=var3343, java.util.MissingResourceException=var2390, $r6=var725, java.lang.RuntimeException=var3801, $r7=var3620, $r8=var249, $r9=var3665, $r10=var1353, $r11=var1166}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	$r0 = new java.text.MessageFormat;	$r2 = <jdk.nashorn.internal.runtime.ECMAErrors: java.util.ResourceBundle MESSAGES_BUNDLE>;	$r6 := @caughtexception;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no message resource found for message id: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2