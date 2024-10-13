(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun merges/70512215 (var240) var735)
(declare-fun var735_size/-959786421 (var735) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var240 var240)
(declare-const var648 var240) ; Statement: r1 := @this: org.apache.lucene.index.MergePolicy$MergeSpecification 
(assert (not (= var648 null-var240)))
(define-const var748 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var748)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var748!1 String)
(assert (= var748!1 ""))
(assert true)
;(assert (append/672562846 var748!1 "MergeSpec:")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MergeSpec:") 
(declare-const var748!2 String)
(assert (= var748!2 (str.++ var748!1 "MergeSpec:")))
(define-const var1116 var735 (merges/70512215 var648)) ; Statement: $r2 = r1.<org.apache.lucene.index.MergePolicy$MergeSpecification: java.util.List merges> 
(define-const var3380 Int (var735_size/-959786421 var1116)) ; Statement: i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var2646 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2646 var3380)) ; Cond: i2 >= i0 
(assert true)
(define-const var1699 String (toString/-2075883882 var748!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), merges/70512215=([org.apache.lucene.index.MergePolicy$MergeSpecification], java.util.List), var735_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var240=org.apache.lucene.index.MergePolicy$MergeSpecification, var648=r1, var748=$r0, var735=java.util.List, var1116=$r2, var3380=i0, var2646=i2, var1699=$r3}
; {org.apache.lucene.index.MergePolicy$MergeSpecification=var240, r1=var648, $r0=var748, java.util.List=var735, $r2=var1116, i0=var3380, i2=var2646, $r3=var1699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.MergePolicy$MergeSpecification;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MergeSpec:");	$r2 = r1.<org.apache.lucene.index.MergePolicy$MergeSpecification: java.util.List merges>;	i0 = interfaceinvoke $r2.<java.util.List: int size()>();	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3