(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3987 0)
(declare-sort var1895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/-1577827613 (var3987 String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3987 var3987)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3885 var3987) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var3885 null-var3987)))
(declare-const var2243 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2243 null-String)))
(declare-const var595 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var595 null-Int)))
(assert true)
(define-const var723 Int (skipWS/-1577827613 var3885 var2243 var595)) ; Statement: i3 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i0) 
(assert true)
(define-const var3513 Int (length/-134980193 var2243)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i1 goto return 
(assert (>= var723 var3513)) ; Cond: i3 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/-1577827613=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], int), length/-134980193=([java.lang.String], int)}
; {var3987=org.apache.ibatis.builder.ParameterExpression, var3885=r0, var2243=r1, var1895=null_type, var595=i0, var723=i3, var3513=$i1}
; {org.apache.ibatis.builder.ParameterExpression=var3987, r0=var3885, r1=var2243, null_type=var1895, i0=var595, i3=var723, $i1=var3513}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i0);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i3 >= $i1 goto return;	return
;block_num 2