(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3959 0)
(declare-sort var1968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3959_checkInstantiable/1616375362 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var3989 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3989 null-ClassObject)))
(define-const var1007 String (var3959_checkInstantiable/1616375362 var3989)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator: java.lang.String checkInstantiable(java.lang.Class)>(r0) 
 ; Statement: if r1 == null goto return 
(assert (= var1007 null-String)) ; Cond: r1 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3959_checkInstantiable/1616375362=([java.lang.Class], java.lang.String)}
; {var3989=r0, var3959=com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator, var1007=r1, var1968=null_type}
; {r0=var3989, com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator=var3959, r1=var1007, null_type=var1968}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator: java.lang.String checkInstantiable(java.lang.Class)>(r0);	if r1 == null goto return;	return
;block_num 2