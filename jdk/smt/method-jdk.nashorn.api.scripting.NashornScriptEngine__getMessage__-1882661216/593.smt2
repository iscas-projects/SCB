(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var738 0)
(declare-sort var3596 0)
(declare-sort var1926 0)
(declare-sort var3584 0)
(declare-sort var3101 0)
(declare-sort var3641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3596-init () var3596)
(declare-fun var3641-init () var3641)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3641 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3584-MESSAGES_BUNDLE var1926)
(declare-const null-var3101 var3101)
(declare-const var3853 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3853 null-String)))
(declare-const var483 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var483 null-__Array__Int__String__)))
(define-const var1573 var3596 var3596-init) ; Statement: $r0 = new java.text.MessageFormat 
(define-const var2761 var1926 var3584-MESSAGES_BUNDLE) ; Statement: $r2 = <jdk.nashorn.api.scripting.NashornScriptEngine: java.util.ResourceBundle MESSAGES_BUNDLE> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var795 var3101) ; Statement: $r6 := @caughtexception 
(assert (not (= var795 null-var3101)))
(define-const var1646 var3641 var3641-init) ; Statement: $r7 = new java.lang.RuntimeException 
(define-const var213 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var213)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var213!1 String)
(assert (= var213!1 ""))
(assert true)
(define-const var2718 String (append/672562846 var213!1 "no message resource found for message id: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no message resource found for message id: ") 
(declare-const var213!2 String)
(assert (= var213!2 (str.++ var213!1 "no message resource found for message id: ")))
(assert true)
(define-const var862 String (append/672562846 var2718 var3853)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2718!1 String)
(assert (= var2718!1 (str.++ var2718 var3853)))
(assert true)
(define-const var1498 String (toString/-2075883882 var862)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1646 var1498)) ; Statement: specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11) 

(declare-const var1646!1 var3641)
(declare-const var1498!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3596-init=([], java.text.MessageFormat), var3641-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3853=r1, var738=null_type, var483=r4, var3596=java.text.MessageFormat, var1573=$r0, var1926=java.util.ResourceBundle, var3584=jdk.nashorn.api.scripting.NashornScriptEngine, var2761=$r2, var3101=java.util.MissingResourceException, var795=$r6, var3641=java.lang.RuntimeException, var1646=$r7, var213=$r8, var2718=$r9, var862=$r10, var1498=$r11}
; {r1=var3853, null_type=var738, r4=var483, java.text.MessageFormat=var3596, $r0=var1573, java.util.ResourceBundle=var1926, jdk.nashorn.api.scripting.NashornScriptEngine=var3584, $r2=var2761, java.util.MissingResourceException=var3101, $r6=var795, java.lang.RuntimeException=var3641, $r7=var1646, $r8=var213, $r9=var2718, $r10=var862, $r11=var1498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	$r0 = new java.text.MessageFormat;	$r2 = <jdk.nashorn.api.scripting.NashornScriptEngine: java.util.ResourceBundle MESSAGES_BUNDLE>;	$r6 := @caughtexception;	$r7 = new java.lang.RuntimeException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no message resource found for message id: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.RuntimeException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2