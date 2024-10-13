(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun insert/466052781 (String Int Int) String)
(declare-const null-var3654 var3654)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var2 var3654) ; Statement: r2 := @this: cn.hutool.core.codec.Hashids 
(assert (not (= var2 null-var3654)))
(declare-const var2193 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2193 null-Int)))
(declare-const var2979 (Array Int Int)) ; Statement: r1 := @parameter1: char[] 
(assert (not (= var2979 null-__Array__Int__Int__)))
(declare-const var1549 String) ; Statement: r0 := @parameter2: java.lang.StringBuilder 
(assert (not (= var1549 null-String)))
(declare-const var3778 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3778 null-Int)))
(define-const var2631 Int var2193) ; Statement: l11 = l0 
(assert true) ; Non Conditional
(define-const var2508 Int (getLength-Arr-Int-1 var2979)) ; Statement: $i2 = lengthof r1 
(define-const var3263 Int (cast-from-Int-to-Int var2508)) ; Statement: $l3 = (long) $i2 
(define-const var3715 Int (mod var2631 var3263)) ; Statement: $l4 = l11 % $l3 
(define-const var3553 Int (cast-from-Int-to-Int var3715)) ; Statement: $i5 = (int) $l4 
(define-const var902 Int (select var2979 var3553)) ; Statement: $c6 = r1[$i5] 
(assert true)
;(assert (insert/466052781 var1549 var3778 var902)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,char)>(i1, $c6) 

(declare-const var1549!1 String)
(declare-const var3778!1 Int)
(declare-const var902!1 Int)
(define-const var3531 Int (getLength-Arr-Int-1 var2979)) ; Statement: $i7 = lengthof r1 
(define-const var204 Int (cast-from-Int-to-Int var3531)) ; Statement: $l8 = (long) $i7 
(define-const var2243 Int (div var2631 var204)) ; Statement: $l10 = l11 / $l8 
(define-const var2631!1 Int var2243) ; Statement: l11 = $l10 
(define-const var3992 Int (ite (> var2243 0) 1 (ite (< var2243 0) (- 1) 0))) ; Statement: $b9 = $l10 cmp 0L 
(define-const var1590 Int (cast-from-Int-to-Int var3992)) ; Statement: $i12 = (int) $b9 
 ; Statement: if $i12 > 0 goto $i2 = lengthof r1 
(assert (not (> var1590 0))) ; Negate: Cond: $i12 > 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([char[]], int), cast-from-Int-to-Int=([int], long), insert/466052781=([java.lang.StringBuilder, int, char], java.lang.StringBuilder)}
; {var3654=cn.hutool.core.codec.Hashids, var2=r2, var2193=l0, var2979=r1, var1549=r0, var3778=i1, var2631=l11, var2508=$i2, var3263=$l3, var3715=$l4, var3553=$i5, var902=$c6, var3531=$i7, var204=$l8, var2243=$l10, var3992=$b9, var1590=$i12}
; {cn.hutool.core.codec.Hashids=var3654, r2=var2, l0=var2193, r1=var2979, r0=var1549, i1=var3778, l11=var2631, $i2=var2508, $l3=var3263, $l4=var3715, $i5=var3553, $c6=var902, $i7=var3531, $l8=var204, $l10=var2243, $b9=var3992, $i12=var1590}
;seq <java.lang.StringBuilder: java.lang.StringBuilder insert(int,char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,char)>": 1}
;stmts r2 := @this: cn.hutool.core.codec.Hashids;	l0 := @parameter0: long;	r1 := @parameter1: char[];	r0 := @parameter2: java.lang.StringBuilder;	i1 := @parameter3: int;	l11 = l0;	$i2 = lengthof r1;	$l3 = (long) $i2;	$l4 = l11 % $l3;	$i5 = (int) $l4;	$c6 = r1[$i5];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,char)>(i1, $c6);	$i7 = lengthof r1;	$l8 = (long) $i7;	$l10 = l11 / $l8;	l11 = $l10;	$b9 = $l10 cmp 0L;	$i12 = (int) $b9;	if $i12 > 0 goto $i2 = lengthof r1;	return r0
;block_num 3