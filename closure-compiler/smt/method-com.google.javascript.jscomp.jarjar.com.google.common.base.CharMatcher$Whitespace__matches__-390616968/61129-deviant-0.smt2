(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1392 var1392)
(declare-const null-Int Int)
(declare-const var1392-SHIFT Int)
(declare-const var2546 var1392) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace 
(assert (not (= var2546 null-var1392)))
(declare-const var2854 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2854 null-Int)))
(define-const var2548 String "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000") ; Statement: $r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000" 
(define-const var2888 Int (cast-from-Int-to-Int var2854)) ; Statement: $i5 = (int) c0 
(define-const var2515 Int (* 1682554634 var2888)) ; Statement: $i2 = 1682554634 * $i5 
(define-const var3282 Int var1392-SHIFT) ; Statement: $i1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT> 
(define-const var3674 Int (div var2515 (to_int (^ 2 var3282)))) ; Statement: $i3 = $i2 >>> $i1 
(assert (not (and true (and (> (str.len var2548) var3674) (<= 0 var3674)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), charAt/698050440=([java.lang.String, int], char)}
; {var1392=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace, var2546=r1, var2854=c0, var2548=$r0, var2888=$i5, var2515=$i2, var3282=$i1, var3674=$i3, var1781=$c4, var207=$i6, var2265=$i7, var1357=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace=var1392, r1=var2546, c0=var2854, $r0=var2548, $i5=var2888, $i2=var2515, $i1=var3282, $i3=var3674, $c4=var1781, $i6=var207, $i7=var2265, $z0=var1357}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace;	c0 := @parameter0: char;	$r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000";	$i5 = (int) c0;	$i2 = 1682554634 * $i5;	$i1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT>;	$i3 = $i2 >>> $i1;	$c4 = virtualinvoke $r0.<java.lang.String: char charAt(int)>($i3);	$i6 = (int) $c4;	$i7 = (int) c0;	if $i6 != $i7 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3