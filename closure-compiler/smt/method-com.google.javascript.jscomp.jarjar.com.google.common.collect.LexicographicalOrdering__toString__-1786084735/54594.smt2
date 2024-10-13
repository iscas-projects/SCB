(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var556 0)
(declare-sort var702 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun elementOrder/-50578015 (var556) var702)
(declare-fun append/-1031950772 (String var1386) String)
(declare-fun cast-from-var702-to-var1386 (var702) var1386)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var556 var556)
(declare-const var2374 var556) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering 
(assert (not (= var2374 null-var556)))
(define-const var3490 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3490)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3490!1 String)
(assert (= var3490!1 ""))
(define-const var3494 var702 (elementOrder/-50578015 var2374)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering: java.util.Comparator elementOrder> 
(assert true)
(define-const var2062 String (append/-1031950772 var3490!1 (cast-from-var702-to-var1386 var3494))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3490!2 String)
(assert (str.prefixof var3490!1 var3490!2))
(assert true)
(define-const var1545 String (append/672562846 var2062 ".lexicographical()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".lexicographical()") 
(declare-const var2062!1 String)
(assert (= var2062!1 (str.++ var2062 ".lexicographical()")))
(assert true)
(define-const var259 String (toString/-2075883882 var1545)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), elementOrder/-50578015=([com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering], java.util.Comparator), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var702-to-var1386=([java.util.Comparator], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var556=com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering, var2374=r1, var3490=$r0, var702=java.util.Comparator, var3494=$r2, var1386=java.lang.Object, var2062=$r3, var1545=$r4, var259=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering=var556, r1=var2374, $r0=var3490, java.util.Comparator=var702, $r2=var3494, java.lang.Object=var1386, $r3=var2062, $r4=var1545, $r5=var259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.LexicographicalOrdering: java.util.Comparator elementOrder>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".lexicographical()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1