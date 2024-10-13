(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var565 0)
(declare-sort var1017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun var1017_max/1360571700 (Int Int) Int)
(declare-const null-String String)
(declare-const var245 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var245 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(assert (not (= var245 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2701 Int (lastIndexOf/-1292097097 var245 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(assert true)
(define-const var1474 Int (lastIndexOf/-1292097097 var245 92)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(92) 
(define-const var3125 Int (var1017_max/1360571700 var2701 var1474)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>(i0, i1) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), var1017_max/1360571700=([int, int], int)}
; {var245=r0, var565=null_type, var2701=i0, var1474=i1, var1017=java.lang.Math, var3125=$i2}
; {r0=var245, null_type=var565, i0=var2701, i1=var1474, java.lang.Math=var1017, $i2=var3125}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(92);	$i2 = staticinvoke <java.lang.Math: int max(int,int)>(i0, i1);	return $i2
;block_num 2