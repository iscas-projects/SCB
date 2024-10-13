(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2758 0)
(declare-sort var1341 0)
(declare-sort var834 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWS/-1577827613 (var2758 String Int) Int)
(declare-fun skipUntil/297438510 (var2758 String Int String) Int)
(declare-fun trimmedStr/1020838204 (var2758 String Int Int) String)
(declare-fun put/-1127386829 (var834 var3809 var3809) var3809)
(declare-fun cast-from-var2758-to-var834 (var2758) var834)
(declare-fun cast-from-String-to-var3809 (String) var3809)
(declare-fun option/93936730 (var2758 String Int) void)
(declare-const null-var2758 var2758)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2744 var2758) ; Statement: r0 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var2744 null-var2758)))
(declare-const var1963 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1963 null-String)))
(declare-const var3676 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3676 null-Int)))
(assert true)
(define-const var3520 Int (skipWS/-1577827613 var2744 var1963 var3676)) ; Statement: i1 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i0) 
(assert true)
(define-const var2226 Int (skipUntil/297438510 var2744 var1963 var3520 ",")) ; Statement: i2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipUntil(java.lang.String,int,java.lang.String)>(r1, i1, ",") 
 ; Statement: if i2 > i1 goto $r2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.String trimmedStr(java.lang.String,int,int)>(r1, i1, i2) 
(assert (> var2226 var3520)) ; Cond: i2 > i1 
(assert true)
(define-const var3114 String (trimmedStr/1020838204 var2744 var1963 var3520 var2226)) ; Statement: $r2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.String trimmedStr(java.lang.String,int,int)>(r1, i1, i2) 
(assert true)
;(assert (put/-1127386829 (cast-from-var2758-to-var834 var2744) (cast-from-String-to-var3809 "jdbcType") (cast-from-String-to-var3809 var3114))) ; Statement: virtualinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.Object put(java.lang.Object,java.lang.Object)>("jdbcType", $r2) 

(declare-const var2744!1 var2758)
(declare-const var154 String)
(declare-const var3114!1 String)
(define-const var2432 Int (+ var2226 1)) ; Statement: $i3 = i2 + 1 
(assert true)
;(assert (option/93936730 var2744!1 var1963 var2432)) ; Statement: specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void option(java.lang.String,int)>(r1, $i3) 

(declare-const var2744!2 var2758)
(declare-const var1963!1 String)
(declare-const var2432!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWS/-1577827613=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], int), skipUntil/297438510=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int, java.lang.String], int), trimmedStr/1020838204=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int, int], java.lang.String), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2758-to-var834=([org.apache.ibatis.builder.ParameterExpression], java.util.HashMap), cast-from-String-to-var3809=([java.lang.String], java.lang.Object), option/93936730=([org.apache.ibatis.builder.ParameterExpression, java.lang.String, int], void)}
; {var2758=org.apache.ibatis.builder.ParameterExpression, var2744=r0, var1963=r1, var1341=null_type, var3676=i0, var3520=i1, var2226=i2, var3114=$r2, var834=java.util.HashMap, var3809=java.lang.Object, var154="jdbcType", var2432=$i3}
; {org.apache.ibatis.builder.ParameterExpression=var2758, r0=var2744, r1=var1963, null_type=var1341, i0=var3676, i1=var3520, i2=var2226, $r2=var3114, java.util.HashMap=var834, java.lang.Object=var3809, "jdbcType"=var154, $i3=var2432}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.builder.ParameterExpression;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipWS(java.lang.String,int)>(r1, i0);	i2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: int skipUntil(java.lang.String,int,java.lang.String)>(r1, i1, ",");	if i2 > i1 goto $r2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.String trimmedStr(java.lang.String,int,int)>(r1, i1, i2);	$r2 = specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.String trimmedStr(java.lang.String,int,int)>(r1, i1, i2);	virtualinvoke r0.<org.apache.ibatis.builder.ParameterExpression: java.lang.Object put(java.lang.Object,java.lang.Object)>("jdbcType", $r2);	$i3 = i2 + 1;	specialinvoke r0.<org.apache.ibatis.builder.ParameterExpression: void option(java.lang.String,int)>(r1, $i3);	return
;block_num 2