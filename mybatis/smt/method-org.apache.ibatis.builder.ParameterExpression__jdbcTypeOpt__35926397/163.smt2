(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3665 0)
(declare-sort var1656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/-1577827613 (var3665 String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3665 var3665)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1947 var3665) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var1947 null-var3665)))
(declare-const var3185 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3185 null-String)))
(declare-const var2537 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var2537 null-Int)))
(assert true)
(define-const var1834 Int (skipWS/-1577827613 var1947 var3185 var2537)) ; Statement: i6 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i5) 
(assert true)
(define-const var3849 Int (length/-134980193 var3185)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto return 
(assert (>= var1834 var3849)) ; Cond: i6 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/-1577827613=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], int), length/-134980193=([java.lang.String], int)}
; {var3665=org.apache.ibatis.builder.ParameterExpression, var1947=r0, var3185=r1, var1656=null_type, var2537=i5, var1834=i6, var3849=$i0}
; {org.apache.ibatis.builder.ParameterExpression=var3665, r0=var1947, r1=var3185, null_type=var1656, i5=var2537, i6=var1834, $i0=var3849}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i5 := @parameter1: int;	i6 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i5);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto return;	return
;block_num 2