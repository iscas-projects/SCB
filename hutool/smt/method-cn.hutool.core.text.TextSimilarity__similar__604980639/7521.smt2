(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2531 0)
(declare-sort var1508 0)
(declare-sort var656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1508_removeSign/89392688 (String) String)
(declare-fun var656_max/1360571700 (Int Int) Int)
(declare-const null-String String)
(declare-const var362 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var362 null-String)))
(declare-const var3457 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3457 null-String)))
(assert true)
(define-const var1400 Int (length/-134980193 var362)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3961 Int (length/-134980193 var3457)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
(assert (>= var1400 var3961)) ; Cond: $i1 >= $i0 
(define-const var320 String (var1508_removeSign/89392688 var362)) ; Statement: r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
(define-const var3279 String (var1508_removeSign/89392688 var3457)) ; Statement: r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2608 Int (length/-134980193 var320)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
(define-const var2074 Int (length/-134980193 var3279)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var71 Int (var656_max/1360571700 var2608 var2074)) ; Statement: $i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2) 
 ; Statement: if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3) 
(assert (not (not (= 0 var71)))) ; Negate: Cond: 0 != $i5  
 ; Statement: return 1.0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1508_removeSign/89392688=([java.lang.String], java.lang.String), var656_max/1360571700=([int, int], int)}
; {var362=r0, var2531=null_type, var3457=r1, var1400=$i1, var3961=$i0, var1508=cn.hutool.core.text.TextSimilarity, var320=r2, var3279=r3, var2608=$i3, var2074=$i2, var656=java.lang.Math, var71=$i5}
; {r0=var362, null_type=var2531, r1=var3457, $i1=var1400, $i0=var3961, cn.hutool.core.text.TextSimilarity=var1508, r2=var320, r3=var3279, $i3=var2608, $i2=var2074, java.lang.Math=var656, $i5=var71}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1);	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2);	if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3);	return 1.0
;block_num 4