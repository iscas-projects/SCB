(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-var3523 var3523)
(declare-const null-String String)
(declare-const var1653 var3523) ; Statement: r9 := @this: cn.hutool.core.codec.Base58Codec$Base58Decoder 
(assert (not (= var1653 null-var3523)))
(declare-const var3444 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3444 null-String)))
(define-const var3021 Int (String_length/-667254855 var3444)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (not (= var3021 0)))) ; Negate: Cond: $i0 != 0  
(define-const var1913 (Array Int Int) arr-Int-init) ; Statement: $r11 = newarray (byte)[0] 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), arr-Int-init=([], byte[])}
; {var3523=cn.hutool.core.codec.Base58Codec$Base58Decoder, var1653=r9, var3444=r0, var3021=$i0, var1913=$r11}
; {cn.hutool.core.codec.Base58Codec$Base58Decoder=var3523, r9=var1653, r0=var3444, $i0=var3021, $r11=var1913}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r9 := @this: cn.hutool.core.codec.Base58Codec$Base58Decoder;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r11 = newarray (byte)[0];	return $r11
;block_num 2