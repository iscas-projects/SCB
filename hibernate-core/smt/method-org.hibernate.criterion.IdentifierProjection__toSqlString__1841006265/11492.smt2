(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var616 0)
(declare-sort var2664 0)
(declare-sort var3482 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3482_getIdentifierColumns/-1321665429 (var3482 var2664) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var616 var616)
(declare-const null-var2664 var2664)
(declare-const null-Int Int)
(declare-const null-var3482 var3482)
(declare-const var1057 var616) ; Statement: r9 := @this: org.hibernate.criterion.IdentifierProjection 
(assert (not (= var1057 null-var616)))
(declare-const var878 var2664) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var878 null-var2664)))
(declare-const var1839 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1839 null-Int)))
(declare-const var871 var3482) ; Statement: r1 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var871 null-var3482)))
(define-const var965 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var965)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var965!1 String)
(assert (= var965!1 ""))
(define-const var1810 (Array Int String) (var3482_getIdentifierColumns/-1321665429 var871 var878)) ; Statement: r3 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r2) 
(define-const var2634 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3347 Int (getLength-Arr-String-1 var1810)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i5 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2634 var3347)) ; Cond: i5 >= $i0 
(assert true)
(define-const var3855 String (toString/-2075883882 var965!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3482_getIdentifierColumns/-1321665429=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var616=org.hibernate.criterion.IdentifierProjection, var1057=r9, var2664=org.hibernate.Criteria, var878=r2, var1839=i1, var3482=org.hibernate.criterion.CriteriaQuery, var871=r1, var965=$r0, var1810=r3, var2634=i5, var3347=$i0, var3855=$r4}
; {org.hibernate.criterion.IdentifierProjection=var616, r9=var1057, org.hibernate.Criteria=var2664, r2=var878, i1=var1839, org.hibernate.criterion.CriteriaQuery=var3482, r1=var871, $r0=var965, r3=var1810, i5=var2634, $i0=var3347, $r4=var3855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.criterion.IdentifierProjection;	r2 := @parameter0: org.hibernate.Criteria;	i1 := @parameter1: int;	r1 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r3 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getIdentifierColumns(org.hibernate.Criteria)>(r2);	i5 = 0;	$i0 = lengthof r3;	if i5 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3