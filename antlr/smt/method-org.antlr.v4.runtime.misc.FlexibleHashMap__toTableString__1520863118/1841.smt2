(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var963 0)
(declare-sort var3790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buckets/1215159292 (var963) (Array Int var3790))
(declare-fun getLength-Arr-var3790-1 ((Array Int var3790)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var963 var963)
(declare-const var801 var963) ; Statement: r1 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap 
(assert (not (= var801 null-var963)))
(define-const var3657 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3657)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3657!1 String)
(assert (= var3657!1 ""))
(define-const var3836 (Array Int var3790) (buckets/1215159292 var801)) ; Statement: r2 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap: java.util.LinkedList[] buckets> 
(define-const var266 Int (getLength-Arr-var3790-1 var3836)) ; Statement: i0 = lengthof r2 
(define-const var911 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var911 var266)) ; Cond: i1 >= i0 
(assert true)
(define-const var3247 String (toString/-2075883882 var3657!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buckets/1215159292=([org.antlr.v4.runtime.misc.FlexibleHashMap], java.util.LinkedList[]), getLength-Arr-var3790-1=([java.util.LinkedList[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var963=org.antlr.v4.runtime.misc.FlexibleHashMap, var801=r1, var3657=$r0, var3790=java.util.LinkedList, var3836=r2, var266=i0, var911=i1, var3247=$r3}
; {org.antlr.v4.runtime.misc.FlexibleHashMap=var963, r1=var801, $r0=var3657, java.util.LinkedList=var3790, r2=var3836, i0=var266, i1=var911, $r3=var3247}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.misc.FlexibleHashMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<org.antlr.v4.runtime.misc.FlexibleHashMap: java.util.LinkedList[] buckets>;	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3