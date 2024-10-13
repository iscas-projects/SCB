(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1235 0)
(declare-sort var3076 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun forwardOrder/758938054 (var1235) var3076)
(declare-fun append/-1031950772 (String var1706) String)
(declare-fun cast-from-var3076-to-var1706 (var3076) var1706)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1235 var1235)
(declare-const var2349 var1235) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering 
(assert (not (= var2349 null-var1235)))
(define-const var2304 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2304)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2304!1 String)
(assert (= var2304!1 ""))
(define-const var1913 var3076 (forwardOrder/758938054 var2349)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering forwardOrder> 
(assert true)
(define-const var2185 String (append/-1031950772 var2304!1 (cast-from-var3076-to-var1706 var1913))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2304!2 String)
(assert (str.prefixof var2304!1 var2304!2))
(assert true)
(define-const var3318 String (append/672562846 var2185 ".reverse()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".reverse()") 
(declare-const var2185!1 String)
(assert (= var2185!1 (str.++ var2185 ".reverse()")))
(assert true)
(define-const var3356 String (toString/-2075883882 var3318)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), forwardOrder/758938054=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering], com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3076-to-var1706=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1235=com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering, var2349=r1, var2304=$r0, var3076=com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering, var1913=$r2, var1706=java.lang.Object, var2185=$r3, var3318=$r4, var3356=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering=var1235, r1=var2349, $r0=var2304, com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering=var3076, $r2=var1913, java.lang.Object=var1706, $r3=var2185, $r4=var3318, $r5=var3356}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ReverseOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering forwardOrder>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".reverse()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1