(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort var558 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun occurrences/1406333460 (var558) var1783)
(declare-fun size/-1863229846 (var1783) Int)
(declare-const null-String String)
(declare-const null-var558 var558)
(declare-const var2803 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2803 null-String)))
(declare-const var984 var558) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.AliasStrings$StringInfo 
(assert (not (= var984 null-var558)))
(assert true)
(define-const var3366 Int (length/-134980193 var2803)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1288 Int (+ 2 var3366)) ; Statement: i1 = 2 + $i0 
(define-const var1628 var1783 (occurrences/1406333460 var984)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.AliasStrings$StringInfo: java.util.ArrayList occurrences> 
(assert true)
(define-const var3540 Int (size/-1863229846 var1628)) ; Statement: i2 = virtualinvoke $r2.<java.util.ArrayList: int size()>() 
(define-const var1042 Int (* var3540 var1288)) ; Statement: i3 = i2 * i1 
(define-const var197 Int (+ 9 var1288)) ; Statement: $i5 = 9 + i1 
(define-const var24 Int (* var3540 3)) ; Statement: $i4 = i2 * 3 
(define-const var2819 Int (+ var197 var24)) ; Statement: i6 = $i5 + $i4 
 ; Statement: if i6 >= i3 goto $z0 = 0 
(assert (>= var2819 var1042)) ; Cond: i6 >= i3 
(define-const var2813 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), occurrences/1406333460=([com.google.javascript.jscomp.AliasStrings$StringInfo], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int)}
; {var2803=r0, var1795=null_type, var558=com.google.javascript.jscomp.AliasStrings$StringInfo, var984=r1, var3366=$i0, var1288=i1, var1783=java.util.ArrayList, var1628=$r2, var3540=i2, var1042=i3, var197=$i5, var24=$i4, var2819=i6, var2813=$z0}
; {r0=var2803, null_type=var1795, com.google.javascript.jscomp.AliasStrings$StringInfo=var558, r1=var984, $i0=var3366, i1=var1288, java.util.ArrayList=var1783, $r2=var1628, i2=var3540, i3=var1042, $i5=var197, $i4=var24, i6=var2819, $z0=var2813}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.AliasStrings$StringInfo;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = 2 + $i0;	$r2 = r1.<com.google.javascript.jscomp.AliasStrings$StringInfo: java.util.ArrayList occurrences>;	i2 = virtualinvoke $r2.<java.util.ArrayList: int size()>();	i3 = i2 * i1;	$i5 = 9 + i1;	$i4 = i2 * 3;	i6 = $i5 + $i4;	if i6 >= i3 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3