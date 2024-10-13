(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1677976853 (var3600) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var3600 var3600)
(declare-const var442 var3600) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableLong 
(assert (not (= var442 null-var3600)))
(define-const var2276 Int (value/1677976853 var442)) ; Statement: $l0 = r0.<org.apache.commons.lang3.mutable.MutableLong: long value> 
(define-const var3086 String (String_valueOf/-107395227 var2276)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1677976853=([org.apache.commons.lang3.mutable.MutableLong], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var3600=org.apache.commons.lang3.mutable.MutableLong, var442=r0, var2276=$l0, var3086=$r1}
; {org.apache.commons.lang3.mutable.MutableLong=var3600, r0=var442, $l0=var2276, $r1=var3086}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableLong;	$l0 = r0.<org.apache.commons.lang3.mutable.MutableLong: long value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r1
;block_num 1