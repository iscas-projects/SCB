(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2275 0)
(declare-sort var79 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2275 var2275)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3864 var2275) ; Statement: r2 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var3864 null-var2275)))
(declare-const var3613 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3613 null-String)))
(declare-const var915 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var915 null-Int)))
(declare-const var1833 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1833 null-String)))
(define-const var2793 Int var915) ; Statement: i5 = i0 
(assert true) ; Non Conditional
(assert true)
(define-const var1208 Int (length/-134980193 var3613)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var2793 var1208)) ; Cond: i5 >= $i1 
(assert true)
(define-const var2853 Int (length/-134980193 var3613)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2275=org.apache.ibatis.builder.ParameterExpression, var3864=r2, var3613=r0, var79=null_type, var915=i0, var1833=r1, var2793=i5, var1208=$i1, var2853=$i2}
; {org.apache.ibatis.builder.ParameterExpression=var2275, r2=var3864, r0=var3613, null_type=var79, i0=var915, r1=var1833, i5=var2793, $i1=var1208, $i2=var2853}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r2 := @this: org.apache.ibatis.builder.ParameterExpression;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: java.lang.String;	i5 = i0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	return $i2
;block_num 3