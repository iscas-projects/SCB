(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var2948 var2948)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2948-ALPHABET (Array Int Int))
(declare-const var3597 var2948) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter 
(assert (not (= var3597 null-var2948)))
(declare-const var632 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var632 null-__Array__Int__Int__)))
(define-const var473 Int (getLength-Arr-Int-1 var632)) ; Statement: $i0 = lengthof r0 
(define-const var1776 Int (- var473 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3286 Int (div var1776 3)) ; Statement: $i2 = $i1 / 3 
(define-const var1699 Int (+ var3286 1)) ; Statement: $i3 = $i2 + 1 
(define-const var3307 Int (* var1699 4)) ; Statement: $i4 = $i3 * 4 
(define-const var579 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i4] 
(define-const var3207 Int 0) ; Statement: i43 = 0 
(define-const var2579 Int 0) ; Statement: i44 = 0 
(assert true) ; Non Conditional
(define-const var595 Int (+ var2579 3)) ; Statement: $i6 = i44 + 3 
(define-const var3620 Int (getLength-Arr-Int-1 var632)) ; Statement: $i5 = lengthof r0 
 ; Statement: if $i6 > $i5 goto $i7 = lengthof r0 
(assert (> var595 var3620)) ; Cond: $i6 > $i5 
(define-const var2885 Int (getLength-Arr-Int-1 var632)) ; Statement: $i7 = lengthof r0 
(define-const var3965 Int (- var2885 var2579)) ; Statement: $i8 = $i7 - i44 
 ; Statement: if $i8 != 2 goto $i9 = lengthof r0 
(assert (not (not (= var3965 2)))) ; Negate: Cond: $i8 != 2  
(define-const var282 Int (select var632 var2579)) ; Statement: $b17 = r0[i44] 
(define-const var3261 Int (cast-from-Int-to-Int var282)) ; Statement: $s77 = (short) $b17 
(define-const var3721 Int (bv2nat (bvand ((_ int2bv 64) var3261) ((_ int2bv 64) 255)))) ; Statement: $s18 = $s77 & 255 
(define-const var3482 Int (cast-from-Int-to-Int var3721)) ; Statement: $i78 = (int) $s18 
(define-const var368 Int (* var3482 (to_int (^ 2 16)))) ; Statement: i57 = $i78 << 16 
(define-const var3511 Int (+ var2579 1)) ; Statement: $i19 = i44 + 1 
(define-const var3388 Int (select var632 var3511)) ; Statement: $b20 = r0[$i19] 
(define-const var1826 Int (cast-from-Int-to-Int var3388)) ; Statement: $s79 = (short) $b20 
(define-const var3889 Int (bv2nat (bvand ((_ int2bv 64) var1826) ((_ int2bv 64) 255)))) ; Statement: $s21 = $s79 & 255 
(define-const var2302 Int (cast-from-Int-to-Int var3889)) ; Statement: $i80 = (int) $s21 
(define-const var1362 Int (* var2302 (to_int (^ 2 8)))) ; Statement: $i22 = $i80 << 8 
(define-const var1789 Int (bv2nat (bvor ((_ int2bv 64) var368) ((_ int2bv 64) var1362)))) ; Statement: i58 = i57 | $i22 
(define-const var3487 Int (bv2nat (bvand ((_ int2bv 64) var1789) ((_ int2bv 64) 16515072)))) ; Statement: $i23 = i58 & 16515072 
(define-const var3420 Int (div var3487 (to_int (^ 2 18)))) ; Statement: i59 = $i23 >> 18 
(define-const var3038 Int (+ var3207 1)) ; Statement: i60 = i43 + 1 
(define-const var993 (Array Int Int) var2948-ALPHABET) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: char[] ALPHABET> 
(define-const var3873 Int (select var993 var3420)) ; Statement: $c24 = $r4[i59] 
(declare-const var579!1 (Array Int Int))
(assert (not (= var579!1 null-__Array__Int__Int__)))
(assert (= (select var579!1 var3207) var3873)) ; Statement: r1[i43] = $c24 
(define-const var2776 Int (bv2nat (bvand ((_ int2bv 64) var1789) ((_ int2bv 64) 258048)))) ; Statement: $i25 = i58 & 258048 
(define-const var1999 Int (div var2776 (to_int (^ 2 12)))) ; Statement: i61 = $i25 >> 12 
(define-const var1479 Int (+ var3038 1)) ; Statement: i62 = i60 + 1 
(define-const var521 (Array Int Int) var2948-ALPHABET) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: char[] ALPHABET> 
(define-const var1426 Int (select var521 var1999)) ; Statement: $c26 = $r5[i61] 
(declare-const var579!2 (Array Int Int))
(assert (not (= var579!2 null-__Array__Int__Int__)))
(assert (= (select var579!2 var3038) var1426)) ; Statement: r1[i60] = $c26 
(define-const var1564 Int (bv2nat (bvand ((_ int2bv 64) var1789) ((_ int2bv 64) 4032)))) ; Statement: $i27 = i58 & 4032 
(define-const var1061 Int (div var1564 (to_int (^ 2 6)))) ; Statement: i63 = $i27 >> 6 
(define-const var3070 Int (+ var1479 1)) ; Statement: i64 = i62 + 1 
(define-const var2541 (Array Int Int) var2948-ALPHABET) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: char[] ALPHABET> 
(define-const var502 Int (select var2541 var1061)) ; Statement: $c28 = $r6[i63] 
(declare-const var579!3 (Array Int Int))
(assert (not (= var579!3 null-__Array__Int__Int__)))
(assert (= (select var579!3 var1479) var502)) ; Statement: r1[i62] = $c28 
(declare-const var579!4 (Array Int Int))
(assert (not (= var579!4 null-__Array__Int__Int__)))
(assert (= (select var579!4 var3070) 61)) ; Statement: r1[i64] = 61 
 ; Statement: goto [?= $r13 = new java.lang.String] 
(assert true) ; Non Conditional
(define-const var243 String String-init) ; Statement: $r13 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var243 var579!4)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var243!1 String)
(declare-const var579!5 (Array Int Int))
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), arr-Int-init=([], char[]), cast-from-Int-to-Int=([byte], short), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter, var3597=r11, var632=r0, var473=$i0, var1776=$i1, var3286=$i2, var1699=$i3, var3307=$i4, var579=r1, var3207=i43, var2579=i44, var595=$i6, var3620=$i5, var2885=$i7, var3965=$i8, var282=$b17, var3261=$s77, var3721=$s18, var3482=$i78, var368=i57, var3511=$i19, var3388=$b20, var1826=$s79, var3889=$s21, var2302=$i80, var1362=$i22, var1789=i58, var3487=$i23, var3420=i59, var3038=i60, var993=$r4, var3873=$c24, var2776=$i25, var1999=i61, var1479=i62, var521=$r5, var1426=$c26, var1564=$i27, var1061=i63, var3070=i64, var2541=$r6, var502=$c28, var243=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter=var2948, r11=var3597, r0=var632, $i0=var473, $i1=var1776, $i2=var3286, $i3=var1699, $i4=var3307, r1=var579, i43=var3207, i44=var2579, $i6=var595, $i5=var3620, $i7=var2885, $i8=var3965, $b17=var282, $s77=var3261, $s18=var3721, $i78=var3482, i57=var368, $i19=var3511, $b20=var3388, $s79=var1826, $s21=var3889, $i80=var2302, $i22=var1362, i58=var1789, $i23=var3487, i59=var3420, i60=var3038, $r4=var993, $c24=var3873, $i25=var2776, i61=var1999, i62=var1479, $r5=var521, $c26=var1426, $i27=var1564, i63=var1061, i64=var3070, $r6=var2541, $c28=var502, $r13=var243}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter;	r0 := @parameter0: byte[];	$i0 = lengthof r0;	$i1 = $i0 - 1;	$i2 = $i1 / 3;	$i3 = $i2 + 1;	$i4 = $i3 * 4;	r1 = newarray (char)[$i4];	i43 = 0;	i44 = 0;	$i6 = i44 + 3;	$i5 = lengthof r0;	if $i6 > $i5 goto $i7 = lengthof r0;	$i7 = lengthof r0;	$i8 = $i7 - i44;	if $i8 != 2 goto $i9 = lengthof r0;	$b17 = r0[i44];	$s77 = (short) $b17;	$s18 = $s77 & 255;	$i78 = (int) $s18;	i57 = $i78 << 16;	$i19 = i44 + 1;	$b20 = r0[$i19];	$s79 = (short) $b20;	$s21 = $s79 & 255;	$i80 = (int) $s21;	$i22 = $i80 << 8;	i58 = i57 | $i22;	$i23 = i58 & 16515072;	i59 = $i23 >> 18;	i60 = i43 + 1;	$r4 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: char[] ALPHABET>;	$c24 = $r4[i59];	r1[i43] = $c24;	$i25 = i58 & 258048;	i61 = $i25 >> 12;	i62 = i60 + 1;	$r5 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: char[] ALPHABET>;	$c26 = $r5[i61];	r1[i60] = $c26;	$i27 = i58 & 4032;	i63 = $i27 >> 6;	i64 = i62 + 1;	$r6 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.Base64Converter: char[] ALPHABET>;	$c28 = $r6[i63];	r1[i62] = $c28;	r1[i64] = 61;	goto [?= $r13 = new java.lang.String];	$r13 = new java.lang.String;	specialinvoke $r13.<java.lang.String: void <init>(char[])>(r1);	return $r13
;block_num 5