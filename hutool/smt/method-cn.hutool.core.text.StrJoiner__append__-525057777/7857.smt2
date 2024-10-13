(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun append/681229316 (var3545 String) var3545)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3545 var3545)
(declare-const null-Int Int)
(declare-const var271 var3545) ; Statement: r0 := @this: cn.hutool.core.text.StrJoiner 
(assert (not (= var271 null-var3545)))
(declare-const var785 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var785 null-Int)))
(define-const var53 String (String_valueOf/-371898945 var785)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true)
(define-const var2708 var3545 (append/681229316 var271 (cast-from-String-to-String var53))) ; Statement: $r2 = virtualinvoke r0.<cn.hutool.core.text.StrJoiner: cn.hutool.core.text.StrJoiner append(java.lang.CharSequence)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), append/681229316=([cn.hutool.core.text.StrJoiner, java.lang.CharSequence], cn.hutool.core.text.StrJoiner), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3545=cn.hutool.core.text.StrJoiner, var271=r0, var785=c0, var53=$r1, var2708=$r2}
; {cn.hutool.core.text.StrJoiner=var3545, r0=var271, c0=var785, $r1=var53, $r2=var2708}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrJoiner;	c0 := @parameter0: char;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r2 = virtualinvoke r0.<cn.hutool.core.text.StrJoiner: cn.hutool.core.text.StrJoiner append(java.lang.CharSequence)>($r1);	return $r2
;block_num 1