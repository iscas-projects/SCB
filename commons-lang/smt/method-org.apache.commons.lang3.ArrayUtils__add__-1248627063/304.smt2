(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2181 0)
(declare-sort var1833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1833_newInstance/1168168314 (ClassObject Int) var2181)
(declare-fun var1833_set/-595149750 (var2181 Int var2181) void)
(declare-const null-var2181 var2181)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var1844 var2181) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1844 null-var2181)))
(declare-const var0 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var0 null-Int)))
(declare-const var2946 var2181) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var2946 null-var2181)))
(declare-const var3861 ClassObject) ; Statement: r8 := @parameter3: java.lang.Class 
(assert (not (= var3861 null-ClassObject)))
 ; Statement: if r0 != null goto i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
(assert (not (not (= var1844 null-var2181)))) ; Negate: Cond: r0 != null  
 ; Statement: if i0 == 0 goto r17 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r8, 1) 
(assert (= var0 0)) ; Cond: i0 == 0 
(define-const var2248 var2181 (var1833_newInstance/1168168314 var3861 1)) ; Statement: r17 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r8, 1) 
;(assert (var1833_set/-595149750 var2248 0 var2946)) ; Statement: staticinvoke <java.lang.reflect.Array: void set(java.lang.Object,int,java.lang.Object)>(r17, 0, r10) 

(declare-const var2248!1 var2181)
(declare-const var3682 Int)
(declare-const var2946!1 var2181)
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1833_newInstance/1168168314=([java.lang.Class, int], java.lang.Object), var1833_set/-595149750=([java.lang.Object, int, java.lang.Object], void)}
; {var2181=java.lang.Object, var1844=r0, var0=i0, var2946=r10, var3861=r8, var1833=java.lang.reflect.Array, var2248=r17, var3682=0}
; {java.lang.Object=var2181, r0=var1844, i0=var0, r10=var2946, r8=var3861, java.lang.reflect.Array=var1833, r17=var2248, 0=var3682}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	r10 := @parameter2: java.lang.Object;	r8 := @parameter3: java.lang.Class;	if r0 != null goto i4 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	if i0 == 0 goto r17 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r8, 1);	r17 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>(r8, 1);	staticinvoke <java.lang.reflect.Array: void set(java.lang.Object,int,java.lang.Object)>(r17, 0, r10);	return r17
;block_num 3