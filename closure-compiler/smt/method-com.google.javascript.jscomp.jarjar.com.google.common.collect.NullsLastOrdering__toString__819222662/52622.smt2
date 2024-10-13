(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2577 0)
(declare-sort var1332 0)
(declare-sort var3484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ordering/1423226726 (var2577) var1332)
(declare-fun append/-1031950772 (String var3484) String)
(declare-fun cast-from-var1332-to-var3484 (var1332) var3484)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2577 var2577)
(declare-const var1849 var2577) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering 
(assert (not (= var1849 null-var2577)))
(define-const var516 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var516)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var516!1 String)
(assert (= var516!1 ""))
(define-const var1268 var1332 (ordering/1423226726 var1849)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering ordering> 
(assert true)
(define-const var657 String (append/-1031950772 var516!1 (cast-from-var1332-to-var3484 var1268))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var516!2 String)
(assert (str.prefixof var516!1 var516!2))
(assert true)
(define-const var704 String (append/672562846 var657 ".nullsLast()")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nullsLast()") 
(declare-const var657!1 String)
(assert (= var657!1 (str.++ var657 ".nullsLast()")))
(assert true)
(define-const var3216 String (toString/-2075883882 var704)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ordering/1423226726=([com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering], com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1332-to-var3484=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2577=com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering, var1849=r1, var516=$r0, var1332=com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering, var1268=$r2, var3484=java.lang.Object, var657=$r3, var704=$r4, var3216=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering=var2577, r1=var1849, $r0=var516, com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering=var1332, $r2=var1268, java.lang.Object=var3484, $r3=var657, $r4=var704, $r5=var3216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.NullsLastOrdering: com.google.javascript.jscomp.jarjar.com.google.common.collect.Ordering ordering>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".nullsLast()");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1