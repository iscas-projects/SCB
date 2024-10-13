(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var728 0)
(declare-sort var2381 0)
(declare-sort var2021 0)
(declare-sort var2438 0)
(declare-sort var3453 0)
(declare-sort var3907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ae/299582750 (var728) var2021)
(declare-fun cast-from-var2381-to-var2438 (var2381) var2438)
(declare-fun var3907-init () var3907)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2381) String)
(declare-fun cast-from-var3453-to-var2381 (var3453) var2381)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var3907 String) void)
(declare-const null-var728 var728)
(declare-const null-var2381 var2381)
(declare-const null-var3453 var3453)
(declare-const var861 var728) ; Statement: r0 := @this: freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator 
(assert (not (= var861 null-var728)))
(declare-const var1540 var2381) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1540 null-var2381)))
(declare-const var2302 var2381) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var2302 null-var2381)))
(define-const var3702 var2021 (ae/299582750 var861)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator: freemarker.core.ArithmeticEngine ae> 
(define-const var1330 var2438 (cast-from-var2381-to-var2438 var1540)) ; Statement: $r2 = (freemarker.core.BuiltInsForSequences$sortBI$KVP) r1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3955 var3453) ; Statement: $r10 := @caughtexception 
(assert (not (= var3955 null-var3453)))
(define-const var2771 var3907 var3907-init) ; Statement: $r11 = new java.lang.ClassCastException 
(define-const var1234 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1234)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1234!1 String)
(assert (= var1234!1 ""))
(assert true)
(define-const var2997 String (append/672562846 var1234!1 "Failed to compare numbers: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to compare numbers: ") 
(declare-const var1234!2 String)
(assert (= var1234!2 (str.++ var1234!1 "Failed to compare numbers: ")))
(assert true)
(define-const var2808 String (append/-1031950772 var2997 (cast-from-var3453-to-var2381 var3955))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2997!1 String)
(assert (str.prefixof var2997 var2997!1))
(assert true)
(define-const var3111 String (toString/-2075883882 var2808)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 var2771 var3111)) ; Statement: specialinvoke $r11.<java.lang.ClassCastException: void <init>(java.lang.String)>($r15) 

(declare-const var2771!1 var3907)
(declare-const var3111!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {ae/299582750=([freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator], freemarker.core.ArithmeticEngine), cast-from-var2381-to-var2438=([java.lang.Object], freemarker.core.BuiltInsForSequences$sortBI$KVP), var3907-init=([], java.lang.ClassCastException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3453-to-var2381=([freemarker.template.TemplateException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var728=freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator, var861=r0, var2381=java.lang.Object, var1540=r1, var2302=r5, var2021=freemarker.core.ArithmeticEngine, var3702=$r3, var2438=freemarker.core.BuiltInsForSequences$sortBI$KVP, var1330=$r2, var3453=freemarker.template.TemplateException, var3955=$r10, var3907=java.lang.ClassCastException, var2771=$r11, var1234=$r12, var2997=$r13, var2808=$r14, var3111=$r15}
; {freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator=var728, r0=var861, java.lang.Object=var2381, r1=var1540, r5=var2302, freemarker.core.ArithmeticEngine=var2021, $r3=var3702, freemarker.core.BuiltInsForSequences$sortBI$KVP=var2438, $r2=var1330, freemarker.template.TemplateException=var3453, $r10=var3955, java.lang.ClassCastException=var3907, $r11=var2771, $r12=var1234, $r13=var2997, $r14=var2808, $r15=var3111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator;	r1 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.Object;	$r3 = r0.<freemarker.core.BuiltInsForSequences$sortBI$NumericalKVPComparator: freemarker.core.ArithmeticEngine ae>;	$r2 = (freemarker.core.BuiltInsForSequences$sortBI$KVP) r1;	$r10 := @caughtexception;	$r11 = new java.lang.ClassCastException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to compare numbers: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.ClassCastException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2