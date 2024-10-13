(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1331 0)
(declare-sort var3190 0)
(declare-sort var1196 0)
(declare-sort var1947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasSetter/-1218716144 (var3190 String) Bool)
(declare-fun setValue/1396337843 (var3190 String var1947) void)
(declare-const null-var1331 var1331)
(declare-const null-var3190 var3190)
(declare-const null-String String)
(declare-const null-var1947 var1947)
(declare-const var2077 var1331) ; Statement: r14 := @this: org.apache.ibatis.executor.keygen.SelectKeyGenerator 
(assert (not (= var2077 null-var1331)))
(declare-const var3217 var3190) ; Statement: r0 := @parameter0: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var3217 null-var3190)))
(declare-const var2813 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2813 null-String)))
(declare-const var48 var1947) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var48 null-var1947)))
(assert true)
(define-const var2379 Bool (hasSetter/-1218716144 var3217 var2813)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: boolean hasSetter(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: void setValue(java.lang.String,java.lang.Object)>(r1, r2) 
(assert (not (= (ite var2379 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (setValue/1396337843 var3217 var2813 var48)) ; Statement: virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: void setValue(java.lang.String,java.lang.Object)>(r1, r2) 

(declare-const var3217!1 var3190)
(declare-const var2813!1 String)
(declare-const var48!1 var1947)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hasSetter/-1218716144=([org.apache.ibatis.reflection.MetaObject, java.lang.String], boolean), setValue/1396337843=([org.apache.ibatis.reflection.MetaObject, java.lang.String, java.lang.Object], void)}
; {var1331=org.apache.ibatis.executor.keygen.SelectKeyGenerator, var2077=r14, var3190=org.apache.ibatis.reflection.MetaObject, var3217=r0, var2813=r1, var1196=null_type, var1947=java.lang.Object, var48=r2, var2379=$z0}
; {org.apache.ibatis.executor.keygen.SelectKeyGenerator=var1331, r14=var2077, org.apache.ibatis.reflection.MetaObject=var3190, r0=var3217, r1=var2813, null_type=var1196, java.lang.Object=var1947, r2=var48, $z0=var2379}
;seq 
;cnt {}
;stmts r14 := @this: org.apache.ibatis.executor.keygen.SelectKeyGenerator;	r0 := @parameter0: org.apache.ibatis.reflection.MetaObject;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$z0 = virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: boolean hasSetter(java.lang.String)>(r1);	if $z0 != 0 goto virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: void setValue(java.lang.String,java.lang.Object)>(r1, r2);	virtualinvoke r0.<org.apache.ibatis.reflection.MetaObject: void setValue(java.lang.String,java.lang.Object)>(r1, r2);	return
;block_num 2