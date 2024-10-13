(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var749 0)
(declare-sort var2322 0)
(declare-sort var2946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-526725382 (var2322 String) ClassObject)
(declare-const null-var2861 var2861)
(declare-const null-String String)
(declare-const var2946-primitiveTypes var2322)
(declare-const null-ClassObject ClassObject)
(declare-const var1232 var2861) ; Statement: r7 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1232 null-var2861)))
(declare-const var3111 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3111 null-String)))
(define-const var147 var2322 var2946-primitiveTypes) ; Statement: $r1 = <org.apache.ibatis.ognl.OgnlRuntime: org.apache.ibatis.ognl.PrimitiveTypes primitiveTypes> 
(assert true)
(define-const var1406 ClassObject (get/-526725382 var147 var3111)) ; Statement: r10 = virtualinvoke $r1.<org.apache.ibatis.ognl.PrimitiveTypes: java.lang.Class get(java.lang.String)>(r0) 
 ; Statement: if r10 != null goto (branch) 
(assert (not (= var1406 null-ClassObject))) ; Cond: r10 != null 
 ; Statement: if r10 != null goto return r10 
(assert (not (= var1406 null-ClassObject))) ; Cond: r10 != null 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-526725382=([org.apache.ibatis.ognl.PrimitiveTypes, java.lang.String], java.lang.Class)}
; {var2861=org.apache.ibatis.ognl.OgnlContext, var1232=r7, var3111=r0, var749=null_type, var2322=org.apache.ibatis.ognl.PrimitiveTypes, var2946=org.apache.ibatis.ognl.OgnlRuntime, var147=$r1, var1406=r10}
; {org.apache.ibatis.ognl.OgnlContext=var2861, r7=var1232, r0=var3111, null_type=var749, org.apache.ibatis.ognl.PrimitiveTypes=var2322, org.apache.ibatis.ognl.OgnlRuntime=var2946, $r1=var147, r10=var1406}
;seq 
;cnt {}
;stmts r7 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r0 := @parameter1: java.lang.String;	$r1 = <org.apache.ibatis.ognl.OgnlRuntime: org.apache.ibatis.ognl.PrimitiveTypes primitiveTypes>;	r10 = virtualinvoke $r1.<org.apache.ibatis.ognl.PrimitiveTypes: java.lang.Class get(java.lang.String)>(r0);	if r10 != null goto (branch);	if r10 != null goto return r10;	return r10
;block_num 3