(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1895 0)
(declare-sort var1534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1895 var1895)
(declare-const null-var1534 var1534)
(declare-const var3730 var1895) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace 
(assert (not (= var3730 null-var1895)))
(declare-const var2586 var1534) ; Statement: r1 := @parameter0: java.util.BitSet 
(assert (not (= var2586 null-var1534)))
(define-const var1283 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var286 String "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000") ; Statement: $r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000" 
(assert true)
(define-const var2862 Int (length/-134980193 var286)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return 
(assert (>= var1283 var2862)) ; Cond: i2 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1895=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace, var3730=r3, var1534=java.util.BitSet, var2586=r1, var1283=i2, var286=$r0, var2862=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace=var1895, r3=var3730, java.util.BitSet=var1534, r1=var2586, i2=var1283, $r0=var286, $i0=var2862}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Whitespace;	r1 := @parameter0: java.util.BitSet;	i2 = 0;	$r0 = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\f\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	if i2 >= $i0 goto return;	return
;block_num 3