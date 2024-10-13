(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun count/1980617441 (var2230) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2230 var2230)
(declare-const var1678 var2230) ; Statement: r1 := @this: org.apache.lucene.util.automaton.Operations$PointTransitionSet 
(assert (not (= var1678 null-var2230)))
(define-const var732 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(define-const var1308 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var711 Int (count/1980617441 var1678)) ; Statement: $i0 = r1.<org.apache.lucene.util.automaton.Operations$PointTransitionSet: int count> 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1308 var711)) ; Cond: i6 >= $i0 
(assert true)
(define-const var2896 String (toString/-2075883882 var732!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), count/1980617441=([org.apache.lucene.util.automaton.Operations$PointTransitionSet], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2230=org.apache.lucene.util.automaton.Operations$PointTransitionSet, var1678=r1, var732=$r0, var1308=i6, var711=$i0, var2896=$r2}
; {org.apache.lucene.util.automaton.Operations$PointTransitionSet=var2230, r1=var1678, $r0=var732, i6=var1308, $i0=var711, $r2=var2896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.util.automaton.Operations$PointTransitionSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	$i0 = r1.<org.apache.lucene.util.automaton.Operations$PointTransitionSet: int count>;	if i6 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3