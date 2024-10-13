(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var89 0)
(declare-sort var1493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var89 var89)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1412 var89) ; Statement: r1 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var1412 null-var89)))
(declare-const var3053 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3053 null-String)))
(declare-const var1568 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1568 null-Int)))
(assert true)
(define-const var3789 Int (length/-134980193 var3053)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto return 
(assert (>= var1568 var3789)) ; Cond: i0 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var89=org.apache.ibatis.builder.ParameterExpression, var1412=r1, var3053=r0, var1493=null_type, var1568=i0, var3789=$i1}
; {org.apache.ibatis.builder.ParameterExpression=var89, r1=var1412, r0=var3053, null_type=var1493, i0=var1568, $i1=var3789}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.ParameterExpression;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 >= $i1 goto return;	return
;block_num 2