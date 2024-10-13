(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3574 0)
(declare-sort var1407 0)
(declare-sort var1258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1407-init () var1407)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1258) String)
(declare-fun cast-from-ClassObject-to-var1258 (ClassObject) var1258)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var1407 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3574 var3574)
(declare-const var3795 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3795 null-ClassObject)))
(define-const var612 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2688 var3574) ; Statement: $r33 := @caughtexception 
(assert (not (= var2688 null-var3574)))
(define-const var3437 var1407 var1407-init) ; Statement: $r34 = new java.lang.RuntimeException 
(define-const var3727 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3727)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3727!1 String)
(assert (= var3727!1 ""))
(assert true)
(define-const var895 String (append/-1031950772 var3727!1 (cast-from-ClassObject-to-var1258 var3795))) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3727!2 String)
(assert (str.prefixof var3727!1 var3727!2))
(assert true)
(define-const var3817 String (append/672562846 var895 " doesn\u0027t implement ZipExtraField")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t implement ZipExtraField") 
(declare-const var895!1 String)
(assert (= var895!1 (str.++ var895 " doesn\u0027t implement ZipExtraField")))
(assert true)
(define-const var1544 String (toString/-2075883882 var3817)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3437 var1544)) ; Statement: specialinvoke $r34.<java.lang.RuntimeException: void <init>(java.lang.String)>($r38) 

(declare-const var3437!1 var1407)
(declare-const var1544!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1407-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1258=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3795=r0, var612=$r1, var3574=java.lang.ClassCastException, var2688=$r33, var1407=java.lang.RuntimeException, var3437=$r34, var3727=$r35, var1258=java.lang.Object, var895=$r36, var3817=$r37, var1544=$r38}
; {r0=var3795, $r1=var612, java.lang.ClassCastException=var3574, $r33=var2688, java.lang.RuntimeException=var1407, $r34=var3437, $r35=var3727, java.lang.Object=var1258, $r36=var895, $r37=var3817, $r38=var1544}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = newarray (java.lang.Class)[0];	$r33 := @caughtexception;	$r34 = new java.lang.RuntimeException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t implement ZipExtraField");	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<java.lang.RuntimeException: void <init>(java.lang.String)>($r38);	throw $r34
;block_num 2