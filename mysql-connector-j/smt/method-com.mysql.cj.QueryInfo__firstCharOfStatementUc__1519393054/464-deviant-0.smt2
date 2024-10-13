(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort var623 0)
(declare-sort var2011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var623_indexOfStatementKeyword/1964855542 (String Bool) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2011_toUpperCase/1913344327 (Int) Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var954 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var954 null-String)))
(declare-const var3498 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3498 null-Bool)))
(define-const var96 Int (var623_indexOfStatementKeyword/1964855542 var954 var3498)) ; Statement: i0 = staticinvoke <com.mysql.cj.QueryInfo: int indexOfStatementKeyword(java.lang.String,boolean)>(r0, z0) 
(define-const var1751 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var96 var1751))) ; Cond: i0 != $i4 
(assert (not (and true (and (> (str.len var954) var96) (<= 0 var96)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var623_indexOfStatementKeyword/1964855542=([java.lang.String, boolean], int), cast-from-Int-to-Int=([int], int), charAt/698050440=([java.lang.String, int], char), var2011_toUpperCase/1913344327=([char], char)}
; {var954=r0, var2929=null_type, var3498=z0, var623=com.mysql.cj.QueryInfo, var96=i0, var1751=$i4, var1204=$c1, var2011=java.lang.Character, var1229=$c2}
; {r0=var954, null_type=var2929, z0=var3498, com.mysql.cj.QueryInfo=var623, i0=var96, $i4=var1751, $c1=var1204, java.lang.Character=var2011, $c2=var1229}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = staticinvoke <com.mysql.cj.QueryInfo: int indexOfStatementKeyword(java.lang.String,boolean)>(r0, z0);	$i4 = (int) -1;	if i0 != $i4 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1);	return $c2
;block_num 2