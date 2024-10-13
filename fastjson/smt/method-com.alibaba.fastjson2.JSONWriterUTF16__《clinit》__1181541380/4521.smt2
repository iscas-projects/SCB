(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun arr-Int-init () (Array Int Int))
(declare-const var863-BIG_ENDIAN Bool)
(define-const var2929 String "{\u0022$ref\u0022:") ; Statement: $r0 = "{\"$ref\":" 
(assert true)
(define-const var1760 (Array Int Int) (toCharArray/415275702 var2929)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var550 (Array Int Int) var1760) ; Statement: <com.alibaba.fastjson2.JSONWriterUTF16: char[] REF_PREF> = $r1 
(define-const var1836 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (int)[256] 
(define-const var3618 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= 16 goto $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
(assert (>= var3618 16)) ; Cond: i12 >= 16 
(define-const var3625 Bool var863-BIG_ENDIAN) ; Statement: $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN> 
 ; Statement: if $z0 == 0 goto <com.alibaba.fastjson2.JSONWriterUTF16: int[] HEX256> = r2 
(assert (= (ite var3625 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1407 (Array Int Int) var1836) ; Statement: <com.alibaba.fastjson2.JSONWriterUTF16: int[] HEX256> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), arr-Int-init=([], int[])}
; {var2929=$r0, var1760=$r1, var550=<com.alibaba.fastjson2.JSONWriterUTF16: char[] REF_PREF>, var1836=r2, var3618=i12, var863=com.alibaba.fastjson2.util.JDKUtils, var3625=$z0, var1407=<com.alibaba.fastjson2.JSONWriterUTF16: int[] HEX256>}
; {$r0=var2929, $r1=var1760, <com.alibaba.fastjson2.JSONWriterUTF16: char[] REF_PREF>=var550, r2=var1836, i12=var3618, com.alibaba.fastjson2.util.JDKUtils=var863, $z0=var3625, <com.alibaba.fastjson2.JSONWriterUTF16: int[] HEX256>=var1407}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = "{\"$ref\":";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<com.alibaba.fastjson2.JSONWriterUTF16: char[] REF_PREF> = $r1;	r2 = newarray (int)[256];	i12 = 0;	if i12 >= 16 goto $z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	$z0 = <com.alibaba.fastjson2.util.JDKUtils: boolean BIG_ENDIAN>;	if $z0 == 0 goto <com.alibaba.fastjson2.JSONWriterUTF16: int[] HEX256> = r2;	<com.alibaba.fastjson2.JSONWriterUTF16: int[] HEX256> = r2;	return
;block_num 4