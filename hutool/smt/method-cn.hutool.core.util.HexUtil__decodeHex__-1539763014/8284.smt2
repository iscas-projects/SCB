(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-911079903 ((Array Int Int)) String)
(declare-fun var1993_decodeHex/1844860519 (String) (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2777 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var2777 null-__Array__Int__Int__)))
(define-const var941 String (String_valueOf/-911079903 var2777)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r0) 
(define-const var435 (Array Int Int) (var1993_decodeHex/1844860519 var941)) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.HexUtil: byte[] decodeHex(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-911079903=([char[]], java.lang.String), var1993_decodeHex/1844860519=([java.lang.String], byte[])}
; {var2777=r0, var941=$r1, var1993=cn.hutool.core.util.HexUtil, var435=$r2}
; {r0=var2777, $r1=var941, cn.hutool.core.util.HexUtil=var1993, $r2=var435}
;seq <java.lang.String: java.lang.String valueOf(char[])>
;cnt {"<java.lang.String: java.lang.String valueOf(char[])>": 1}
;stmts r0 := @parameter0: char[];	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r0);	$r2 = staticinvoke <cn.hutool.core.util.HexUtil: byte[] decodeHex(java.lang.String)>($r1);	return $r2
;block_num 1