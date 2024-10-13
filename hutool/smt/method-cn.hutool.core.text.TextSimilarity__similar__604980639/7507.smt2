(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1104 0)
(declare-sort var3066 0)
(declare-sort var758 0)
(declare-sort var3647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3066_removeSign/89392688 (String) String)
(declare-fun var758_max/1360571700 (Int Int) Int)
(declare-fun var3066_longestCommonSubstringLength/1484610902 (String String) Int)
(declare-fun cast-from-Int-to-Float32 (Int) Float32)
(declare-fun var3647_div/-1269452405 (Float32 Float32) Float64)
(declare-const null-String String)
(declare-const var545 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var545 null-String)))
(declare-const var1078 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1078 null-String)))
(assert true)
(define-const var3584 Int (length/-134980193 var545)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3771 Int (length/-134980193 var1078)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
(assert (not (>= var3584 var3771))) ; Negate: Cond: $i1 >= $i0  
(define-const var2836 String (var3066_removeSign/89392688 var1078)) ; Statement: r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1) 
(define-const var3979 String (var3066_removeSign/89392688 var545)) ; Statement: r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
 ; Statement: goto [?= $i3 = virtualinvoke r2.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1419 Int (length/-134980193 var2836)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
(define-const var3385 Int (length/-134980193 var3979)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var822 Int (var758_max/1360571700 var1419 var3385)) ; Statement: $i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2) 
 ; Statement: if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3) 
(assert (not (= 0 var822))) ; Cond: 0 != $i5 
(define-const var1591 Int (var3066_longestCommonSubstringLength/1484610902 var2836 var3979)) ; Statement: i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3) 
(define-const var2157 Float32 (cast-from-Int-to-Float32 var1591)) ; Statement: $f1 = (float) i4 
(define-const var1761 Float32 (cast-from-Int-to-Float32 var822)) ; Statement: $f0 = (float) $i5 
(define-const var878 Float64 (var3647_div/-1269452405 var2157 var1761)) ; Statement: $d0 = staticinvoke <cn.hutool.core.util.NumberUtil: double div(float,float)>($f1, $f0) 
 ; Statement: return $d0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3066_removeSign/89392688=([java.lang.String], java.lang.String), var758_max/1360571700=([int, int], int), var3066_longestCommonSubstringLength/1484610902=([java.lang.String, java.lang.String], int), cast-from-Int-to-Float32=([int], float), var3647_div/-1269452405=([float, float], double)}
; {var545=r0, var1104=null_type, var1078=r1, var3584=$i1, var3771=$i0, var3066=cn.hutool.core.text.TextSimilarity, var2836=r2, var3979=r3, var1419=$i3, var3385=$i2, var758=java.lang.Math, var822=$i5, var1591=i4, var2157=$f1, var1761=$f0, var3647=cn.hutool.core.util.NumberUtil, var878=$d0}
; {r0=var545, null_type=var1104, r1=var1078, $i1=var3584, $i0=var3771, cn.hutool.core.text.TextSimilarity=var3066, r2=var2836, r3=var3979, $i3=var1419, $i2=var3385, java.lang.Math=var758, $i5=var822, i4=var1591, $f1=var2157, $f0=var1761, cn.hutool.core.util.NumberUtil=var3647, $d0=var878}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1);	r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	goto [?= $i3 = virtualinvoke r2.<java.lang.String: int length()>()];	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2);	if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3);	i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3);	$f1 = (float) i4;	$f0 = (float) $i5;	$d0 = staticinvoke <cn.hutool.core.util.NumberUtil: double div(float,float)>($f1, $f0);	return $d0
;block_num 4