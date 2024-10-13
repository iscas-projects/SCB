(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var251 var251)
(declare-const null-Int Int)
(declare-const var825 var251) ; Statement: $r0 := @this: org.apache.lucene.document.DocValuesLongHashSet$valueOf__25 
(assert (not (= var825 null-var251)))
(declare-const var1881 Int) ; Statement: $l0 := @parameter0: long 
(assert (not (= var1881 null-Int)))
(define-const var1005 String (String_valueOf/-107395227 var1881)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String)}
; {var251=org.apache.lucene.document.DocValuesLongHashSet$valueOf__25, var825=$r0, var1881=$l0, var1005=$r1}
; {org.apache.lucene.document.DocValuesLongHashSet$valueOf__25=var251, $r0=var825, $l0=var1881, $r1=var1005}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts $r0 := @this: org.apache.lucene.document.DocValuesLongHashSet$valueOf__25;	$l0 := @parameter0: long;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r1
;block_num 1