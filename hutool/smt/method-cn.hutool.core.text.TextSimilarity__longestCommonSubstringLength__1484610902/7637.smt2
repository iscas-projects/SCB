(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
(declare-sort var42 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var42_generateMatrix/2052817446 (String String) (Array Int (Array Int Int)))
(declare-const null-String String)
(declare-const var298 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var298 null-String)))
(declare-const var1875 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1875 null-String)))
(assert true)
(define-const var445 Int (length/-134980193 var298)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2287 Int (length/-134980193 var1875)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var27 (Array Int (Array Int Int)) (var42_generateMatrix/2052817446 var298 var1875)) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: int[][] generateMatrix(java.lang.String,java.lang.String)>(r0, r1) 
(define-const var1937 (Array Int Int) (select var27 var445)) ; Statement: $r3 = $r2[i0] 
(define-const var1072 Int (select var1937 var2287)) ; Statement: $i2 = $r3[i1] 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var42_generateMatrix/2052817446=([java.lang.String, java.lang.String], int[][])}
; {var298=r0, var56=null_type, var1875=r1, var445=i0, var2287=i1, var42=cn.hutool.core.text.TextSimilarity, var27=$r2, var1937=$r3, var1072=$i2}
; {r0=var298, null_type=var56, r1=var1875, i0=var445, i1=var2287, cn.hutool.core.text.TextSimilarity=var42, $r2=var27, $r3=var1937, $i2=var1072}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = virtualinvoke r1.<java.lang.String: int length()>();	$r2 = staticinvoke <cn.hutool.core.text.TextSimilarity: int[][] generateMatrix(java.lang.String,java.lang.String)>(r0, r1);	$r3 = $r2[i0];	$i2 = $r3[i1];	return $i2
;block_num 1