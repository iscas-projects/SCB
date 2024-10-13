(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var636 0)
(declare-sort var3773 0)
(declare-sort var2780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordering/-1584127149 (var2556) var636)
(declare-fun append/-1031950772 (String var3773) String)
(declare-fun cast-from-var636-to-var3773 (var636) var3773)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun function/-1584127149 (var2556) var2780)
(declare-fun cast-from-var2780-to-var3773 (var2780) var3773)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2556 var2556)
(declare-const var1360 var2556) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering 
(assert (not (= var1360 null-var2556)))
(define-const var3439 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3439)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3439!1 String)
(assert (= var3439!1 ""))
(define-const var1776 var636 (ordering/-1584127149 var1360)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering ordering> 
(assert true)
(define-const var81 String (append/-1031950772 var3439!1 (cast-from-var636-to-var3773 var1776))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3439!2 String)
(assert (str.prefixof var3439!1 var3439!2))
(assert true)
(define-const var1618 String (append/672562846 var81 ".onResultOf(")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".onResultOf(") 
(declare-const var81!1 String)
(assert (= var81!1 (str.++ var81 ".onResultOf(")))
(define-const var2989 var2780 (function/-1584127149 var1360)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering: com.google.javascript.jscomp.jarjar.com.google.common.base.Function function> 
(assert true)
(define-const var379 String (append/-1031950772 var1618 (cast-from-var2780-to-var3773 var2989))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1618!1 String)
(assert (str.prefixof var1618 var1618!1))
(assert true)
(define-const var3435 String (append/672562846 var379 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var379!1 String)
(assert (= var379!1 (str.++ var379 ")")))
(assert true)
(define-const var1131 String (toString/-2075883882 var3435)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordering/-1584127149=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering], com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var636-to-var3773=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), function/-1584127149=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), cast-from-var2780-to-var3773=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2556=com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering, var1360=r1, var3439=$r0, var636=com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering, var1776=$r2, var3773=java.lang.Object, var81=$r3, var1618=$r5, var2780=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var2989=$r4, var379=$r6, var3435=$r7, var1131=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering=var2556, r1=var1360, $r0=var3439, com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering=var636, $r2=var1776, java.lang.Object=var3773, $r3=var81, $r5=var1618, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var2780, $r4=var2989, $r6=var379, $r7=var3435, $r8=var1131}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering ordering>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".onResultOf(");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ByFunctionOrdering: com.google.javascript.jscomp.jarjar.com.google.common.base.Function function>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1