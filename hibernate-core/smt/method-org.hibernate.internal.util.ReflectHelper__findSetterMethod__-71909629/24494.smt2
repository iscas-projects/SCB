(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var2766 0)
(declare-sort var2787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2787_setterMethodOrNull/1917059858 (ClassObject String ClassObject) var2766)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2766 var2766)
(declare-const var3122 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3122 null-ClassObject)))
(declare-const var2246 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2246 null-String)))
(declare-const var2642 ClassObject) ; Statement: r2 := @parameter2: java.lang.Class 
(assert (not (= var2642 null-ClassObject)))
(define-const var1523 var2766 (var2787_setterMethodOrNull/1917059858 var3122 var2246 var2642)) ; Statement: r3 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Method setterMethodOrNull(java.lang.Class,java.lang.String,java.lang.Class)>(r0, r1, r2) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1523 null-var2766))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2787_setterMethodOrNull/1917059858=([java.lang.Class, java.lang.String, java.lang.Class], java.lang.reflect.Method)}
; {var3122=r0, var2246=r1, var2976=null_type, var2642=r2, var2766=java.lang.reflect.Method, var2787=org.hibernate.internal.util.ReflectHelper, var1523=r3}
; {r0=var3122, r1=var2246, null_type=var2976, r2=var2642, java.lang.reflect.Method=var2766, org.hibernate.internal.util.ReflectHelper=var2787, r3=var1523}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class;	r3 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Method setterMethodOrNull(java.lang.Class,java.lang.String,java.lang.Class)>(r0, r1, r2);	if r3 != null goto return r3;	return r3
;block_num 2