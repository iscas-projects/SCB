(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1671 0)
(declare-sort var2061 0)
(declare-sort var756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun inputList/-1637715794 (var1671) var2061)
(declare-fun append/-1031950772 (String var756) String)
(declare-fun cast-from-var2061-to-var756 (var2061) var756)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1671 var1671)
(declare-const var749 var1671) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection 
(assert (not (= var749 null-var1671)))
(define-const var3864 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3864)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3864!1 String)
(assert (= var3864!1 ""))
(assert true)
(define-const var1669 String (append/672562846 var3864!1 "orderedPermutationCollection(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orderedPermutationCollection(") 
(declare-const var3864!2 String)
(assert (= var3864!2 (str.++ var3864!1 "orderedPermutationCollection(")))
(define-const var3959 var2061 (inputList/-1637715794 var749)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList inputList> 
(assert true)
(define-const var2709 String (append/-1031950772 var1669 (cast-from-var2061-to-var756 var3959))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1669!1 String)
(assert (str.prefixof var1669 var1669!1))
(assert true)
(define-const var773 String (append/672562846 var2709 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2709!1 String)
(assert (= var2709!1 (str.++ var2709 ")")))
(assert true)
(define-const var3945 String (toString/-2075883882 var773)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), inputList/-1637715794=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2061-to-var756=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1671=com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection, var749=r1, var3864=$r0, var1669=$r3, var2061=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3959=$r2, var756=java.lang.Object, var2709=$r4, var773=$r5, var3945=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection=var1671, r1=var749, $r0=var3864, $r3=var1669, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2061, $r2=var3959, java.lang.Object=var756, $r4=var2709, $r5=var773, $r6=var3945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("orderedPermutationCollection(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$OrderedPermutationCollection: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList inputList>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1