(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2928 0)
(declare-sort var3602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fields/1521015566 (var2928) (Array Int var3602))
(declare-fun getLength-Arr-var3602-1 ((Array Int var3602)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2928 var2928)
(declare-const var3970 var2928) ; Statement: r1 := @this: org.apache.lucene.search.Sort 
(assert (not (= var3970 null-var2928)))
(define-const var3994 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3994)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3994!1 String)
(assert (= var3994!1 ""))
(define-const var3097 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1776 (Array Int var3602) (fields/1521015566 var3970)) ; Statement: $r2 = r1.<org.apache.lucene.search.Sort: org.apache.lucene.search.SortField[] fields> 
(define-const var1251 Int (getLength-Arr-var3602-1 var1776)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3097 var1251)) ; Cond: i3 >= $i0 
(assert true)
(define-const var658 String (toString/-2075883882 var3994!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fields/1521015566=([org.apache.lucene.search.Sort], org.apache.lucene.search.SortField[]), getLength-Arr-var3602-1=([org.apache.lucene.search.SortField[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2928=org.apache.lucene.search.Sort, var3970=r1, var3994=$r0, var3097=i3, var3602=org.apache.lucene.search.SortField, var1776=$r2, var1251=$i0, var658=$r3}
; {org.apache.lucene.search.Sort=var2928, r1=var3970, $r0=var3994, i3=var3097, org.apache.lucene.search.SortField=var3602, $r2=var1776, $i0=var1251, $r3=var658}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.Sort;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$r2 = r1.<org.apache.lucene.search.Sort: org.apache.lucene.search.SortField[] fields>;	$i0 = lengthof $r2;	if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3