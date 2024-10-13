(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var408 var408)
(declare-const null-Int Int)
(declare-const var408-SHIFT Int)
(declare-const var180 var408) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace 
(assert (not (= var180 null-var408)))
(declare-const var687 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var687 null-Int)))
(define-const var1074 String "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000") ; Statement: $r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000" 
(define-const var3227 Int (cast-from-Int-to-Int var687)) ; Statement: $i5 = (int) c0 
(define-const var773 Int (* 1682554634 var3227)) ; Statement: $i2 = 1682554634 * $i5 
(define-const var1307 Int var408-SHIFT) ; Statement: $i1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT> 
(define-const var434 Int (div var773 (to_int (^ 2 var1307)))) ; Statement: $i3 = $i2 >>> $i1 
(assert (not (and true (and (> (str.len var1074) var434) (<= 0 var434)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), charAt/698050440=([java.lang.String, int], char)}
; {var408=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace, var180=r1, var687=c0, var1074=$r0, var3227=$i5, var773=$i2, var1307=$i1, var434=$i3, var1235=$c4, var236=$i6, var3823=$i7, var634=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace=var408, r1=var180, c0=var687, $r0=var1074, $i5=var3227, $i2=var773, $i1=var1307, $i3=var434, $c4=var1235, $i6=var236, $i7=var3823, $z0=var634}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace;	c0 := @parameter0: char;	$r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000";	$i5 = (int) c0;	$i2 = 1682554634 * $i5;	$i1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace: int SHIFT>;	$i3 = $i2 >>> $i1;	$c4 = virtualinvoke $r0.<java.lang.String: char charAt(int)>($i3);	$i6 = (int) $c4;	$i7 = (int) c0;	if $i6 != $i7 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3