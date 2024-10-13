(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-485601640 (var3065) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3065 var3065)
(declare-const var3281 var3065) ; Statement: r1 := @this: freemarker.core.BuiltinVariable 
(assert (not (= var3281 null-var3065)))
(define-const var3204 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3204)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3204!1 String)
(assert (= var3204!1 ""))
(assert true)
(define-const var3062 String (append/672562846 var3204!1 ".")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3204!2 String)
(assert (= var3204!2 (str.++ var3204!1 ".")))
(define-const var581 String (name/-485601640 var3281)) ; Statement: $r2 = r1.<freemarker.core.BuiltinVariable: java.lang.String name> 
(assert true)
(define-const var983 String (append/672562846 var3062 var581)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3062!1 String)
(assert (= var3062!1 (str.++ var3062 var581)))
(assert true)
(define-const var3259 String (toString/-2075883882 var983)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-485601640=([freemarker.core.BuiltinVariable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3065=freemarker.core.BuiltinVariable, var3281=r1, var3204=$r0, var3062=$r3, var581=$r2, var983=$r4, var3259=$r5}
; {freemarker.core.BuiltinVariable=var3065, r1=var3281, $r0=var3204, $r3=var3062, $r2=var581, $r4=var983, $r5=var3259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltinVariable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r2 = r1.<freemarker.core.BuiltinVariable: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1