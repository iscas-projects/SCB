(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1845 0)
(declare-sort var3498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3498_getSecureRandom/-369645273 () var1845)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var1372 var1845 var3498_getSecureRandom/-369645273) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.RandomUtil: java.security.SecureRandom getSecureRandom()>() 
(define-const var3615 var1845 var1372) ; Statement: <cn.hutool.core.lang.id.NanoId: java.security.SecureRandom DEFAULT_NUMBER_GENERATOR> = $r0 
(define-const var2848 String "_-0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") ; Statement: $r1 = "_-0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" 
(assert true)
(define-const var1278 (Array Int Int) (toCharArray/415275702 var2848)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(define-const var2242 (Array Int Int) var1278) ; Statement: <cn.hutool.core.lang.id.NanoId: char[] DEFAULT_ALPHABET> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3498_getSecureRandom/-369645273=([], java.security.SecureRandom), toCharArray/415275702=([java.lang.String], char[])}
; {var1845=java.security.SecureRandom, var3498=cn.hutool.core.util.RandomUtil, var1372=$r0, var3615=<cn.hutool.core.lang.id.NanoId: java.security.SecureRandom DEFAULT_NUMBER_GENERATOR>, var2848=$r1, var1278=$r2, var2242=<cn.hutool.core.lang.id.NanoId: char[] DEFAULT_ALPHABET>}
; {java.security.SecureRandom=var1845, cn.hutool.core.util.RandomUtil=var3498, $r0=var1372, <cn.hutool.core.lang.id.NanoId: java.security.SecureRandom DEFAULT_NUMBER_GENERATOR>=var3615, $r1=var2848, $r2=var1278, <cn.hutool.core.lang.id.NanoId: char[] DEFAULT_ALPHABET>=var2242}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = staticinvoke <cn.hutool.core.util.RandomUtil: java.security.SecureRandom getSecureRandom()>();	<cn.hutool.core.lang.id.NanoId: java.security.SecureRandom DEFAULT_NUMBER_GENERATOR> = $r0;	$r1 = "_-0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";	$r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	<cn.hutool.core.lang.id.NanoId: char[] DEFAULT_ALPHABET> = $r2;	return
;block_num 1