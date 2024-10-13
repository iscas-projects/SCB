(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var494 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var494 var494)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3858 var494) ; Statement: r1 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var3858 null-var494)))
(declare-const var2109 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2109 null-String)))
(declare-const var3300 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3300 null-Int)))
(define-const var3001 Int var3300) ; Statement: i4 = i0 
(assert true) ; Non Conditional
(assert true)
(define-const var3470 Int (length/-134980193 var2109)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var3001 var3470)) ; Cond: i4 >= $i1 
(assert true)
(define-const var3888 Int (length/-134980193 var2109)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var494=org.apache.ibatis.builder.ParameterExpression, var3858=r1, var2109=r0, var1028=null_type, var3300=i0, var3001=i4, var3470=$i1, var3888=$i2}
; {org.apache.ibatis.builder.ParameterExpression=var494, r1=var3858, r0=var2109, null_type=var1028, i0=var3300, i4=var3001, $i1=var3470, $i2=var3888}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: org.apache.ibatis.builder.ParameterExpression;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i4 = i0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	return $i2
;block_num 3