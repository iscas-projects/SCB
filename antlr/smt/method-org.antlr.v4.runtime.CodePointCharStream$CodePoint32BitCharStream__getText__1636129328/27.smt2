(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2400 0)
(declare-sort var2819 0)
(declare-sort var1758 0)
(declare-sort var1963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun a/1351597580 (var2819) Int)
(declare-fun size/-539079426 (var1758) Int)
(declare-fun cast-from-var2400-to-var1758 (var2400) var1758)
(declare-fun var1963_min/-1112089438 (Int Int) Int)
(declare-fun b/1351597580 (var2819) Int)
(declare-fun String-init () String)
(declare-fun intArray/-2059499961 (var2400) (Array Int Int))
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var2400 var2400)
(declare-const null-var2819 var2819)
(declare-const var2045 var2400) ; Statement: r1 := @this: org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream 
(assert (not (= var2045 null-var2400)))
(declare-const var2356 var2819) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.misc.Interval 
(assert (not (= var2356 null-var2819)))
(define-const var2606 Int (a/1351597580 var2356)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var3459 Int (size/-539079426 (cast-from-var2400-to-var1758 var2045))) ; Statement: $i0 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream: int size> 
(define-const var3060 Int (var1963_min/-1112089438 var2606 var3459)) ; Statement: i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0) 
(define-const var7 Int (b/1351597580 var2356)) ; Statement: $i4 = r0.<org.antlr.v4.runtime.misc.Interval: int b> 
(define-const var3803 Int (a/1351597580 var2356)) ; Statement: $i3 = r0.<org.antlr.v4.runtime.misc.Interval: int a> 
(define-const var1560 Int (- var7 var3803)) ; Statement: $i5 = $i4 - $i3 
(define-const var3757 Int (+ var1560 1)) ; Statement: $i8 = $i5 + 1 
(define-const var529 Int (size/-539079426 (cast-from-var2400-to-var1758 var2045))) ; Statement: $i6 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream: int size> 
(define-const var3619 Int (- var529 var3060)) ; Statement: $i7 = $i6 - i2 
(define-const var2623 Int (var1963_min/-1112089438 var3757 var3619)) ; Statement: i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7) 
(define-const var1570 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2865 (Array Int Int) (intArray/-2059499961 var2045)) ; Statement: $r3 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream: int[] intArray> 
(assert true)
;(assert (<init>/1703972987 var1570 var2865 var3060 var2623)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>($r3, i2, i9) 

(declare-const var1570!1 String)
(declare-const var2865!1 (Array Int Int))
(declare-const var3060!1 Int)
(declare-const var2623!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {a/1351597580=([org.antlr.v4.runtime.misc.Interval], int), size/-539079426=([org.antlr.v4.runtime.CodePointCharStream], int), cast-from-var2400-to-var1758=([org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream], org.antlr.v4.runtime.CodePointCharStream), var1963_min/-1112089438=([int, int], int), b/1351597580=([org.antlr.v4.runtime.misc.Interval], int), String-init=([], java.lang.String), intArray/-2059499961=([org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream], int[]), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var2400=org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream, var2045=r1, var2819=org.antlr.v4.runtime.misc.Interval, var2356=r0, var2606=$i1, var1758=org.antlr.v4.runtime.CodePointCharStream, var3459=$i0, var1963=java.lang.Math, var3060=i2, var7=$i4, var3803=$i3, var1560=$i5, var3757=$i8, var529=$i6, var3619=$i7, var2623=i9, var1570=$r2, var2865=$r3}
; {org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream=var2400, r1=var2045, org.antlr.v4.runtime.misc.Interval=var2819, r0=var2356, $i1=var2606, org.antlr.v4.runtime.CodePointCharStream=var1758, $i0=var3459, java.lang.Math=var1963, i2=var3060, $i4=var7, $i3=var3803, $i5=var1560, $i8=var3757, $i6=var529, $i7=var3619, i9=var2623, $r2=var1570, $r3=var2865}
;seq <java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream;	r0 := @parameter0: org.antlr.v4.runtime.misc.Interval;	$i1 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	$i0 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream: int size>;	i2 = staticinvoke <java.lang.Math: int min(int,int)>($i1, $i0);	$i4 = r0.<org.antlr.v4.runtime.misc.Interval: int b>;	$i3 = r0.<org.antlr.v4.runtime.misc.Interval: int a>;	$i5 = $i4 - $i3;	$i8 = $i5 + 1;	$i6 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream: int size>;	$i7 = $i6 - i2;	i9 = staticinvoke <java.lang.Math: int min(int,int)>($i8, $i7);	$r2 = new java.lang.String;	$r3 = r1.<org.antlr.v4.runtime.CodePointCharStream$CodePoint32BitCharStream: int[] intArray>;	specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>($r3, i2, i9);	return $r2
;block_num 1