(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-485601640 (var1663) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1663 var1663)
(declare-const var1845 var1663) ; Statement: r1 := @this: freemarker.core.BuiltinVariable 
(assert (not (= var1845 null-var1663)))
(define-const var1241 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1241)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1241!1 String)
(assert (= var1241!1 ""))
(assert true)
(define-const var2123 String (append/672562846 var1241!1 ".")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1241!2 String)
(assert (= var1241!2 (str.++ var1241!1 ".")))
(define-const var923 String (name/-485601640 var1845)) ; Statement: $r2 = r1.<freemarker.core.BuiltinVariable: java.lang.String name> 
(assert true)
(define-const var2257 String (append/672562846 var2123 var923)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2123!1 String)
(assert (= var2123!1 (str.++ var2123 var923)))
(assert true)
(define-const var979 String (toString/-2075883882 var2257)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-485601640=([freemarker.core.BuiltinVariable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1663=freemarker.core.BuiltinVariable, var1845=r1, var1241=$r0, var2123=$r3, var923=$r2, var2257=$r4, var979=$r5}
; {freemarker.core.BuiltinVariable=var1663, r1=var1845, $r0=var1241, $r3=var2123, $r2=var923, $r4=var2257, $r5=var979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltinVariable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r2 = r1.<freemarker.core.BuiltinVariable: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1