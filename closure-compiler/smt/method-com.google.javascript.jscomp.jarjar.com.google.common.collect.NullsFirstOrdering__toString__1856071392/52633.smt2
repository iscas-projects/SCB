(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3291 0)
(declare-sort var1265 0)
(declare-sort var1413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordering/2136553288 (var3291) var1265)
(declare-fun append/-1031950772 (String var1413) String)
(declare-fun cast-from-var1265-to-var1413 (var1265) var1413)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3291 var3291)
(declare-const var1818 var3291) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering 
(assert (not (= var1818 null-var3291)))
(define-const var3595 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3595)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3595!1 String)
(assert (= var3595!1 ""))
(define-const var3355 var1265 (ordering/2136553288 var1818)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering ordering> 
(assert true)
(define-const var2857 String (append/-1031950772 var3595!1 (cast-from-var1265-to-var1413 var3355))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3595!2 String)
(assert (str.prefixof var3595!1 var3595!2))
(assert true)
(define-const var510 String (append/672562846 var2857 ".nullsFirst()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nullsFirst()") 
(declare-const var2857!1 String)
(assert (= var2857!1 (str.++ var2857 ".nullsFirst()")))
(assert true)
(define-const var3559 String (toString/-2075883882 var510)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordering/2136553288=([com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering], com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1265-to-var1413=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3291=com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering, var1818=r1, var3595=$r0, var1265=com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering, var3355=$r2, var1413=java.lang.Object, var2857=$r3, var510=$r4, var3559=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering=var3291, r1=var1818, $r0=var3595, com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering=var1265, $r2=var3355, java.lang.Object=var1413, $r3=var2857, $r4=var510, $r5=var3559}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsFirstOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering ordering>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nullsFirst()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1