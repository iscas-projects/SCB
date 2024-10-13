(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var3786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/-1577827613 (var3467 String Int) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun property/1499064442 (var3467 String Int) void)
(declare-const null-var3467 var3467)
(declare-const null-String String)
(declare-const var1376 var3467) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var1376 null-var3467)))
(declare-const var3723 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3723 null-String)))
(assert true)
(define-const var3499 Int (skipWS/-1577827613 var1376 var3723 0)) ; Statement: i0 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, 0) 
(assert (and true (and (> (str.len var3723) var3499) (<= 0 var3499))))
(define-const var2064 Int (charAt/698050440 var3723 var3499)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0) 
(define-const var2116 Int (cast-from-Int-to-Int var2064)) ; Statement: $i3 = (int) $c1 
 ; Statement: if $i3 != 40 goto specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void property(java.lang.String,int)>(r1, i0) 
(assert (not (= var2116 40))) ; Cond: $i3 != 40 
(assert true)
;(assert (property/1499064442 var1376 var3723 var3499)) ; Statement: specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void property(java.lang.String,int)>(r1, i0) 

(declare-const var1376!1 var3467)
(declare-const var3723!1 String)
(declare-const var3499!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/-1577827613=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), property/1499064442=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], void)}
; {var3467=org.apache.ibatis.builder.ParameterExpression, var1376=r0, var3723=r1, var3786=null_type, var3499=i0, var2064=$c1, var2116=$i3}
; {org.apache.ibatis.builder.ParameterExpression=var3467, r0=var1376, r1=var3723, null_type=var3786, i0=var3499, $c1=var2064, $i3=var2116}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i0 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, 0);	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0);	$i3 = (int) $c1;	if $i3 != 40 goto specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void property(java.lang.String,int)>(r1, i0);	specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void property(java.lang.String,int)>(r1, i0);	return
;block_num 3