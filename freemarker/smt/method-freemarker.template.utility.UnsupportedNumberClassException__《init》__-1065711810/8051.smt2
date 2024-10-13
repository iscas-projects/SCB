(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort var515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var515 String) void)
(declare-fun cast-from-var1277-to-var515 (var1277) var515)
(declare-fun fClass/894143591 (var1277) ClassObject)
(declare-const null-var1277 var1277)
(declare-const null-ClassObject ClassObject)
(declare-const var2885 var1277) ; Statement: r0 := @this: freemarker.template.utility.UnsupportedNumberClassException 
(assert (not (= var2885 null-var1277)))
(declare-const var3489 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3489 null-ClassObject)))
(define-const var2555 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2555)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2555!1 String)
(assert (= var2555!1 ""))
(assert true)
(define-const var1469 String (append/672562846 var2555!1 "Unsupported number class: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported number class: ") 
(declare-const var2555!2 String)
(assert (= var2555!2 (str.++ var2555!1 "Unsupported number class: ")))
(assert true)
(define-const var1106 String (getName/-1958580599 var3489)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3067 String (append/672562846 var1469 var1106)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1469!1 String)
(assert (= var1469!1 (str.++ var1469 var1106)))
(assert true)
(define-const var1982 String (toString/-2075883882 var3067)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var1277-to-var515 var2885) var1982)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2885!1 var1277)
(declare-const var1982!1 String)
(declare-const var2885!2 var1277)
(assert (not (= var2885!2 null-var1277)))
(assert (= (fClass/894143591 var2885!2) var3489)) ; Statement: r0.<freemarker.template.utility.UnsupportedNumberClassException: java.lang.Class fClass> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var1277-to-var515=([freemarker.template.utility.UnsupportedNumberClassException], java.lang.RuntimeException), fClass/894143591=([freemarker.template.utility.UnsupportedNumberClassException], java.lang.Class)}
; {var1277=freemarker.template.utility.UnsupportedNumberClassException, var2885=r0, var3489=r2, var2555=$r1, var1469=$r4, var1106=$r3, var3067=$r5, var1982=$r6, var515=java.lang.RuntimeException}
; {freemarker.template.utility.UnsupportedNumberClassException=var1277, r0=var2885, r2=var3489, $r1=var2555, $r4=var1469, $r3=var1106, $r5=var3067, $r6=var1982, java.lang.RuntimeException=var515}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.utility.UnsupportedNumberClassException;	r2 := @parameter0: java.lang.Class;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported number class: ");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	r0.<freemarker.template.utility.UnsupportedNumberClassException: java.lang.Class fClass> = r2;	return
;block_num 1