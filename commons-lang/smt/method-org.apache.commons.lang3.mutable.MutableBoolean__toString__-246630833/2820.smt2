(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-799859985 (var3417) Bool)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-const null-var3417 var3417)
(declare-const var2171 var3417) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableBoolean 
(assert (not (= var2171 null-var3417)))
(define-const var3184 Bool (value/-799859985 var2171)) ; Statement: $z0 = r0.<org.apache.commons.lang3.mutable.MutableBoolean: boolean value> 
(define-const var814 String (String_valueOf/-1973653463 var3184)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-799859985=([org.apache.commons.lang3.mutable.MutableBoolean], boolean), String_valueOf/-1973653463=([boolean], java.lang.String)}
; {var3417=org.apache.commons.lang3.mutable.MutableBoolean, var2171=r0, var3184=$z0, var814=$r1}
; {org.apache.commons.lang3.mutable.MutableBoolean=var3417, r0=var2171, $z0=var3184, $r1=var814}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableBoolean;	$z0 = r0.<org.apache.commons.lang3.mutable.MutableBoolean: boolean value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0);	return $r1
;block_num 1