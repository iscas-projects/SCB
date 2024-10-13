(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun append/1659648310 (var3708 String) var3708)
(declare-const null-var3708 var3708)
(declare-const null-Int Int)
(declare-const var820 var3708) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var820 null-var3708)))
(declare-const var3186 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3186 null-Int)))
(define-const var3906 String (String_valueOf/1240665136 var3186)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
(define-const var966 var3708 (append/1659648310 var820 var3906)) ; Statement: $r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), append/1659648310=([org.apache.commons.lang3.text.StrBuilder, java.lang.String], org.apache.commons.lang3.text.StrBuilder)}
; {var3708=org.apache.commons.lang3.text.StrBuilder, var820=r0, var3186=i0, var3906=$r1, var966=$r2}
; {org.apache.commons.lang3.text.StrBuilder=var3708, r0=var820, i0=var3186, $r1=var3906, $r2=var966}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r2 = virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder append(java.lang.String)>($r1);	return $r2
;block_num 1