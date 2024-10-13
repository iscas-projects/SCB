(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1780 0)
(declare-sort var1129 0)
(declare-sort var1882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun inputList/1169988813 (var1780) var1129)
(declare-fun append/-1031950772 (String var1882) String)
(declare-fun cast-from-var1129-to-var1882 (var1129) var1882)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1780 var1780)
(declare-const var3420 var1780) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection 
(assert (not (= var3420 null-var1780)))
(define-const var3948 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3948)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3948!1 String)
(assert (= var3948!1 ""))
(assert true)
(define-const var1483 String (append/672562846 var3948!1 "permutations(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("permutations(") 
(declare-const var3948!2 String)
(assert (= var3948!2 (str.++ var3948!1 "permutations(")))
(define-const var3694 var1129 (inputList/1169988813 var3420)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList inputList> 
(assert true)
(define-const var2311 String (append/-1031950772 var1483 (cast-from-var1129-to-var1882 var3694))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1483!1 String)
(assert (str.prefixof var1483 var1483!1))
(assert true)
(define-const var648 String (append/672562846 var2311 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2311!1 String)
(assert (= var2311!1 (str.++ var2311 ")")))
(assert true)
(define-const var59 String (toString/-2075883882 var648)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), inputList/1169988813=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1129-to-var1882=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1780=com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection, var3420=r1, var3948=$r0, var1483=$r3, var1129=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3694=$r2, var1882=java.lang.Object, var2311=$r4, var648=$r5, var59=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection=var1780, r1=var3420, $r0=var3948, $r3=var1483, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1129, $r2=var3694, java.lang.Object=var1882, $r4=var2311, $r5=var648, $r6=var59}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("permutations(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Collections2$PermutationCollection: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList inputList>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1