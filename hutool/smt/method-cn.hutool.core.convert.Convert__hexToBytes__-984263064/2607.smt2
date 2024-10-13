(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var184_decodeHex/-1539763014 ((Array Int Int)) (Array Int Int))
(declare-const null-String String)
(declare-const var3591 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3591 null-String)))
(assert true)
(define-const var2745 (Array Int Int) (toCharArray/415275702 var3591)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var688 (Array Int Int) (var184_decodeHex/-1539763014 var2745)) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.HexUtil: byte[] decodeHex(char[])>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var184_decodeHex/-1539763014=([char[]], byte[])}
; {var3591=r0, var164=null_type, var2745=$r1, var184=cn.hutool.core.util.HexUtil, var688=$r2}
; {r0=var3591, null_type=var164, $r1=var2745, cn.hutool.core.util.HexUtil=var184, $r2=var688}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r2 = staticinvoke <cn.hutool.core.util.HexUtil: byte[] decodeHex(char[])>($r1);	return $r2
;block_num 1