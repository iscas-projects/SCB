(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var285 0)
(declare-sort var1975 0)
(declare-sort var3732 0)
(declare-sort var1809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1809) void)
(declare-fun cast-from-var285-to-var1809 (var285) var1809)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun alphabet/683209645 (var285) (Array Int Int))
(declare-fun pad/683209645 (var285) var3732)
(declare-const null-var285 var285)
(declare-const null-String String)
(declare-const null-var3732 var3732)
(declare-const var2967 var285) ; Statement: r0 := @this: cn.hutool.core.codec.Base32Codec$Base32Encoder 
(assert (not (= var2967 null-var285)))
(declare-const var2799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2799 null-String)))
(declare-const var807 var3732) ; Statement: r3 := @parameter1: java.lang.Character 
(assert (not (= var807 null-var3732)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var285-to-var1809 var2967))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2967!1 var285)
(assert true)
(define-const var1579 (Array Int Int) (toCharArray/415275702 var2799)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var2967!2 var285)
(assert (not (= var2967!2 null-var285)))
(assert (= (alphabet/683209645 var2967!2) var1579)) ; Statement: r0.<cn.hutool.core.codec.Base32Codec$Base32Encoder: char[] alphabet> = $r2 
(declare-const var2967!3 var285)
(assert (not (= var2967!3 null-var285)))
(assert (= (pad/683209645 var2967!3) var807)) ; Statement: r0.<cn.hutool.core.codec.Base32Codec$Base32Encoder: java.lang.Character pad> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var285-to-var1809=([cn.hutool.core.codec.Base32Codec$Base32Encoder], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), alphabet/683209645=([cn.hutool.core.codec.Base32Codec$Base32Encoder], char[]), pad/683209645=([cn.hutool.core.codec.Base32Codec$Base32Encoder], java.lang.Character)}
; {var285=cn.hutool.core.codec.Base32Codec$Base32Encoder, var2967=r0, var2799=r1, var1975=null_type, var3732=java.lang.Character, var807=r3, var1809=java.lang.Object, var1579=$r2}
; {cn.hutool.core.codec.Base32Codec$Base32Encoder=var285, r0=var2967, r1=var2799, null_type=var1975, java.lang.Character=var3732, r3=var807, java.lang.Object=var1809, $r2=var1579}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: cn.hutool.core.codec.Base32Codec$Base32Encoder;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Character;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<cn.hutool.core.codec.Base32Codec$Base32Encoder: char[] alphabet> = $r2;	r0.<cn.hutool.core.codec.Base32Codec$Base32Encoder: java.lang.Character pad> = r3;	return
;block_num 1