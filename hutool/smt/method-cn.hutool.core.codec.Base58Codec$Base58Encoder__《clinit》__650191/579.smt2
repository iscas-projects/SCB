(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3588-init () var3588)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/119579806 (var3588 (Array Int Int)) void)
(define-const var1231 var3588 var3588-init) ; Statement: $r0 = new cn.hutool.core.codec.Base58Codec$Base58Encoder 
(define-const var3697 String "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz") ; Statement: $r1 = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz" 
(assert true)
(define-const var1939 (Array Int Int) (toCharArray/415275702 var3697)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/119579806 var1231 var1939)) ; Statement: specialinvoke $r0.<cn.hutool.core.codec.Base58Codec$Base58Encoder: void <init>(char[])>($r2) 

(declare-const var1231!1 var3588)
(declare-const var1939!1 (Array Int Int))
(define-const var1529 var3588 var1231!1) ; Statement: <cn.hutool.core.codec.Base58Codec$Base58Encoder: cn.hutool.core.codec.Base58Codec$Base58Encoder ENCODER> = $r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3588-init=([], cn.hutool.core.codec.Base58Codec$Base58Encoder), toCharArray/415275702=([java.lang.String], char[]), <init>/119579806=([cn.hutool.core.codec.Base58Codec$Base58Encoder, char[]], void)}
; {var3588=cn.hutool.core.codec.Base58Codec$Base58Encoder, var1231=$r0, var3697=$r1, var1939=$r2, var1529=<cn.hutool.core.codec.Base58Codec$Base58Encoder: cn.hutool.core.codec.Base58Codec$Base58Encoder ENCODER>}
; {cn.hutool.core.codec.Base58Codec$Base58Encoder=var3588, $r0=var1231, $r1=var3697, $r2=var1939, <cn.hutool.core.codec.Base58Codec$Base58Encoder: cn.hutool.core.codec.Base58Codec$Base58Encoder ENCODER>=var1529}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = new cn.hutool.core.codec.Base58Codec$Base58Encoder;	$r1 = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";	$r2 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	specialinvoke $r0.<cn.hutool.core.codec.Base58Codec$Base58Encoder: void <init>(char[])>($r2);	<cn.hutool.core.codec.Base58Codec$Base58Encoder: cn.hutool.core.codec.Base58Codec$Base58Encoder ENCODER> = $r0;	return
;block_num 1