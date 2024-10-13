(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var111 0)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/-1577827613 (var111 String Int) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun expression/663360983 (var111 String Int) void)
(declare-const null-var111 var111)
(declare-const null-String String)
(declare-const var622 var111) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var622 null-var111)))
(declare-const var3244 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3244 null-String)))
(assert true)
(define-const var1656 Int (skipWS/-1577827613 var622 var3244 0)) ; Statement: i0 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, 0) 
(assert (and true (and (> (str.len var3244) var1656) (<= 0 var1656))))
(define-const var2869 Int (charAt/698050440 var3244 var1656)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0) 
(define-const var2477 Int (cast-from-Int-to-Int var2869)) ; Statement: $i3 = (int) $c1 
 ; Statement: if $i3 != 40 goto specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void property(java.lang.String,int)>(r1, i0) 
(assert (not (not (= var2477 40)))) ; Negate: Cond: $i3 != 40  
(define-const var1283 Int (+ var1656 1)) ; Statement: $i2 = i0 + 1 
(assert true)
;(assert (expression/663360983 var622 var3244 var1283)) ; Statement: specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void expression(java.lang.String,int)>(r1, $i2) 

(declare-const var622!1 var111)
(declare-const var3244!1 String)
(declare-const var1283!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/-1577827613=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), expression/663360983=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], void)}
; {var111=org.apache.ibatis.builder.ParameterExpression, var622=r0, var3244=r1, var1402=null_type, var1656=i0, var2869=$c1, var2477=$i3, var1283=$i2}
; {org.apache.ibatis.builder.ParameterExpression=var111, r0=var622, r1=var3244, null_type=var1402, i0=var1656, $c1=var2869, $i3=var2477, $i2=var1283}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i0 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, 0);	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i0);	$i3 = (int) $c1;	if $i3 != 40 goto specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void property(java.lang.String,int)>(r1, i0);	$i2 = i0 + 1;	specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void expression(java.lang.String,int)>(r1, $i2);	goto [?= return];	return
;block_num 3