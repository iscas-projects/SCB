(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3816 0)
(declare-sort var1021 0)
(declare-sort var45 0)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1021_removeSign/89392688 (String) String)
(declare-fun var45_max/1360571700 (Int Int) Int)
(declare-fun var1021_longestCommonSubstringLength/1484610902 (String String) Int)
(declare-fun cast-from-Int-to-Float32 (Int) Float32)
(declare-fun var114_div/-1269452405 (Float32 Float32) Float64)
(declare-const null-String String)
(declare-const var1264 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1264 null-String)))
(declare-const var800 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var800 null-String)))
(assert true)
(define-const var399 Int (length/-134980193 var1264)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3890 Int (length/-134980193 var800)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
(assert (>= var399 var3890)) ; Cond: $i1 >= $i0 
(define-const var3374 String (var1021_removeSign/89392688 var1264)) ; Statement: r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
(define-const var885 String (var1021_removeSign/89392688 var800)) ; Statement: r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1) 
(assert true) ; Non Conditional
(assert true)
(define-const var368 Int (length/-134980193 var3374)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
(define-const var1962 Int (length/-134980193 var885)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var3446 Int (var45_max/1360571700 var368 var1962)) ; Statement: $i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2) 
 ; Statement: if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3) 
(assert (not (= 0 var3446))) ; Cond: 0 != $i5 
(define-const var2972 Int (var1021_longestCommonSubstringLength/1484610902 var3374 var885)) ; Statement: i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3) 
(define-const var1089 Float32 (cast-from-Int-to-Float32 var2972)) ; Statement: $f1 = (float) i4 
(define-const var2467 Float32 (cast-from-Int-to-Float32 var3446)) ; Statement: $f0 = (float) $i5 
(define-const var915 Float64 (var114_div/-1269452405 var1089 var2467)) ; Statement: $d0 = staticinvoke <cn.hutool.core.util.NumberUtil: double div(float,float)>($f1, $f0) 
 ; Statement: return $d0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1021_removeSign/89392688=([java.lang.String], java.lang.String), var45_max/1360571700=([int, int], int), var1021_longestCommonSubstringLength/1484610902=([java.lang.String, java.lang.String], int), cast-from-Int-to-Float32=([int], float), var114_div/-1269452405=([float, float], double)}
; {var1264=r0, var3816=null_type, var800=r1, var399=$i1, var3890=$i0, var1021=cn.hutool.core.text.TextSimilarity, var3374=r2, var885=r3, var368=$i3, var1962=$i2, var45=java.lang.Math, var3446=$i5, var2972=i4, var1089=$f1, var2467=$f0, var114=cn.hutool.core.util.NumberUtil, var915=$d0}
; {r0=var1264, null_type=var3816, r1=var800, $i1=var399, $i0=var3890, cn.hutool.core.text.TextSimilarity=var1021, r2=var3374, r3=var885, $i3=var368, $i2=var1962, java.lang.Math=var45, $i5=var3446, i4=var2972, $f1=var1089, $f0=var2467, cn.hutool.core.util.NumberUtil=var114, $d0=var915}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1);	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2);	if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3);	i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3);	$f1 = (float) i4;	$f0 = (float) $i5;	$d0 = staticinvoke <cn.hutool.core.util.NumberUtil: double div(float,float)>($f1, $f0);	return $d0
;block_num 4