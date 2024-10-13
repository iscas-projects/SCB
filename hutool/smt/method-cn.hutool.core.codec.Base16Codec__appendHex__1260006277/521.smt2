(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun alphabets/1357768735 (var3246) (Array Int Int))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3246 var3246)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2134 var3246) ; Statement: r1 := @this: cn.hutool.core.codec.Base16Codec 
(assert (not (= var2134 null-var3246)))
(declare-const var3591 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3591 null-String)))
(declare-const var2109 Int) ; Statement: b0 := @parameter1: byte 
(assert (not (= var2109 null-Int)))
(define-const var209 Int (cast-from-Int-to-Int var2109)) ; Statement: $s6 = (short) b0 
(define-const var3086 Int (bv2nat (bvand ((_ int2bv 64) var209) ((_ int2bv 64) 240)))) ; Statement: $s1 = $s6 & 240 
(define-const var2968 Int (cast-from-Int-to-Int var3086)) ; Statement: $i7 = (int) $s1 
(define-const var677 Int (div var2968 (to_int (^ 2 4)))) ; Statement: i2 = $i7 >>> 4 
(define-const var1922 Int (bv2nat (bvand ((_ int2bv 64) var2109) ((_ int2bv 64) 15)))) ; Statement: b3 = b0 & 15 
(define-const var1557 (Array Int Int) (alphabets/1357768735 var2134)) ; Statement: $r2 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets> 
(define-const var615 Int (select var1557 var677)) ; Statement: $c4 = $r2[i2] 
(assert true)
;(assert (append/-1166366385 var3591 var615)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4) 
(declare-const var3591!1 String)
(assert (str.prefixof var3591 var3591!1))
(define-const var3456 (Array Int Int) (alphabets/1357768735 var2134)) ; Statement: $r3 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets> 
(define-const var3609 Int (cast-from-Int-to-Int var1922)) ; Statement: $i8 = (int) b3 
(define-const var388 Int (select var3456 var3609)) ; Statement: $c5 = $r3[$i8] 
(assert true)
;(assert (append/-1166366385 var3591!1 var388)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5) 
(declare-const var3591!2 String)
(assert (str.prefixof var3591!1 var3591!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], short), alphabets/1357768735=([cn.hutool.core.codec.Base16Codec], char[]), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3246=cn.hutool.core.codec.Base16Codec, var2134=r1, var3591=r0, var2109=b0, var209=$s6, var3086=$s1, var2968=$i7, var677=i2, var1922=b3, var1557=$r2, var615=$c4, var3456=$r3, var3609=$i8, var388=$c5}
; {cn.hutool.core.codec.Base16Codec=var3246, r1=var2134, r0=var3591, b0=var2109, $s6=var209, $s1=var3086, $i7=var2968, i2=var677, b3=var1922, $r2=var1557, $c4=var615, $r3=var3456, $i8=var3609, $c5=var388}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: cn.hutool.core.codec.Base16Codec;	r0 := @parameter0: java.lang.StringBuilder;	b0 := @parameter1: byte;	$s6 = (short) b0;	$s1 = $s6 & 240;	$i7 = (int) $s1;	i2 = $i7 >>> 4;	b3 = b0 & 15;	$r2 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets>;	$c4 = $r2[i2];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c4);	$r3 = r1.<cn.hutool.core.codec.Base16Codec: char[] alphabets>;	$i8 = (int) b3;	$c5 = $r3[$i8];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5);	return
;block_num 1