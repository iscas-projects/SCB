(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
(declare-sort var1872 0)
(declare-sort var2492 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun put/-1127386829 (var2492 var3751 var3751) var3751)
(declare-fun cast-from-var2217-to-var2492 (var2217) var2492)
(declare-fun cast-from-String-to-var3751 (String) var3751)
(declare-fun jdbcTypeOpt/35926397 (var2217 String Int) void)
(declare-const null-var2217 var2217)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3817 var2217) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var3817 null-var2217)))
(declare-const var3300 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3300 null-String)))
(declare-const var671 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var671 null-Int)))
(define-const var2332 Int 1) ; Statement: i4 = 1 
(define-const var425 Int (+ var671 1)) ; Statement: i5 = i0 + 1 
(assert true) ; Non Conditional
 ; Statement: if i4 <= 0 goto $i1 = i5 - 1 
(assert (<= var2332 0)) ; Cond: i4 <= 0 
(define-const var1348 Int (- var425 1)) ; Statement: $i1 = i5 - 1 
(assert (and true (and (>= var671 0) (>= (str.len var3300) var1348) (>= var1348 var671))))
(define-const var1729 String (substring/-1240304868 var3300 var671 var1348)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1) 
(assert true)
;(assert (put/-1127386829 (cast-from-var2217-to-var2492 var3817) (cast-from-String-to-var3751 "expression") (cast-from-String-to-var3751 var1729))) ; Statement: virtualinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.Object put(java.lang.Object,java.lang.Object)>("expression", $r2) 

(declare-const var3817!1 var2217)
(declare-const var2784 String)
(declare-const var1729!1 String)
(assert true)
;(assert (jdbcTypeOpt/35926397 var3817!1 var3300 var425)) ; Statement: specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void jdbcTypeOpt(java.lang.String,int)>(r1, i5) 

(declare-const var3817!2 var2217)
(declare-const var3300!1 String)
(declare-const var425!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-1240304868=([java.lang.String, int, int], java.lang.String), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2217-to-var2492=([org.apache.ibatis.builder.ParameterExpression], java.util.HashMap), cast-from-String-to-var3751=([java.lang.String], java.lang.Object), jdbcTypeOpt/35926397=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], void)}
; {var2217=org.apache.ibatis.builder.ParameterExpression, var3817=r0, var3300=r1, var1872=null_type, var671=i0, var2332=i4, var425=i5, var1348=$i1, var1729=$r2, var2492=java.util.HashMap, var3751=java.lang.Object, var2784="expression"}
; {org.apache.ibatis.builder.ParameterExpression=var2217, r0=var3817, r1=var3300, null_type=var1872, i0=var671, i4=var2332, i5=var425, $i1=var1348, $r2=var1729, java.util.HashMap=var2492, java.lang.Object=var3751, "expression"=var2784}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i4 = 1;	i5 = i0 + 1;	if i4 <= 0 goto $i1 = i5 - 1;	$i1 = i5 - 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1);	virtualinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.Object put(java.lang.Object,java.lang.Object)>("expression", $r2);	specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void jdbcTypeOpt(java.lang.String,int)>(r1, i5);	return
;block_num 3