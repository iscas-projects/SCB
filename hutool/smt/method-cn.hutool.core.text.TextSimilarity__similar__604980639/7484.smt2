(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var412 0)
(declare-sort var87 0)
(declare-sort var3577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var87_removeSign/89392688 (String) String)
(declare-fun var3577_max/1360571700 (Int Int) Int)
(declare-const null-String String)
(declare-const var3710 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3710 null-String)))
(declare-const var3177 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3177 null-String)))
(assert true)
(define-const var3123 Int (length/-134980193 var3710)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2705 Int (length/-134980193 var3177)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
(assert (not (>= var3123 var2705))) ; Negate: Cond: $i1 >= $i0  
(define-const var2457 String (var87_removeSign/89392688 var3177)) ; Statement: r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1) 
(define-const var434 String (var87_removeSign/89392688 var3710)) ; Statement: r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0) 
 ; Statement: goto [?= $i3 = virtualinvoke r2.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var773 Int (length/-134980193 var2457)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
(define-const var1282 Int (length/-134980193 var434)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var916 Int (var3577_max/1360571700 var773 var1282)) ; Statement: $i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2) 
 ; Statement: if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3) 
(assert (not (not (= 0 var916)))) ; Negate: Cond: 0 != $i5  
 ; Statement: return 1.0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var87_removeSign/89392688=([java.lang.String], java.lang.String), var3577_max/1360571700=([int, int], int)}
; {var3710=r0, var412=null_type, var3177=r1, var3123=$i1, var2705=$i0, var87=cn.hutool.core.text.TextSimilarity, var2457=r2, var434=r3, var773=$i3, var1282=$i2, var3577=java.lang.Math, var916=$i5}
; {r0=var3710, null_type=var412, r1=var3177, $i1=var3123, $i0=var2705, cn.hutool.core.text.TextSimilarity=var87, r2=var2457, r3=var434, $i3=var773, $i2=var1282, java.lang.Math=var3577, $i5=var916}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 4}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 >= $i0 goto r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r1);	r3 = staticinvoke <cn.hutool.core.text.TextSimilarity: java.lang.String removeSign(java.lang.String)>(r0);	goto [?= $i3 = virtualinvoke r2.<java.lang.String: int length()>()];	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2);	if 0 != $i5 goto i4 = staticinvoke <cn.hutool.core.text.TextSimilarity: int longestCommonSubstringLength(java.lang.String,java.lang.String)>(r2, r3);	return 1.0
;block_num 4