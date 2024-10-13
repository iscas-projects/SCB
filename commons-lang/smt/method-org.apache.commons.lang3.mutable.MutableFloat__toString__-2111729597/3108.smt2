(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/472045283 (var2218) Float32)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-const null-var2218 var2218)
(declare-const var1614 var2218) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableFloat 
(assert (not (= var1614 null-var2218)))
(define-const var3201 Float32 (value/472045283 var1614)) ; Statement: $f0 = r0.<org.apache.commons.lang3.mutable.MutableFloat: float value> 
(define-const var3603 String (String_valueOf/-149410723 var3201)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>($f0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/472045283=([org.apache.commons.lang3.mutable.MutableFloat], float), String_valueOf/-149410723=([float], java.lang.String)}
; {var2218=org.apache.commons.lang3.mutable.MutableFloat, var1614=r0, var3201=$f0, var3603=$r1}
; {org.apache.commons.lang3.mutable.MutableFloat=var2218, r0=var1614, $f0=var3201, $r1=var3603}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableFloat;	$f0 = r0.<org.apache.commons.lang3.mutable.MutableFloat: float value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>($f0);	return $r1
;block_num 1