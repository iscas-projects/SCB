(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-fun append/1659648310 (var415 String) var415)
(declare-const null-var415 var415)
(declare-const null-Float32 Float32)
(declare-const var311 var415) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var311 null-var415)))
(declare-const var468 Float32) ; Statement: f0 := @parameter0: float 
(assert (not (= var468 null-Float32)))
(define-const var75 String (String_valueOf/-149410723 var468)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0) 
(assert true)
(define-const var738 var415 (append/1659648310 var311 var75)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-149410723=([float], java.lang.String), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var415=org.apache.commons.lang3.text.StrBuilder, var311=r0, var468=f0, var75=$r1, var738=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var415, r0=var311, f0=var468, $r1=var75, $r2=var738}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	f0 := @parameter0: float;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>(f0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1);	return $r2
;block_num 1