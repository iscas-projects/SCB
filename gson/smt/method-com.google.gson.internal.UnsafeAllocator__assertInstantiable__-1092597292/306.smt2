(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var381 0)
(declare-sort var3795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var381_checkInstantiable/789342880 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var260 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var260 null-ClassObject)))
(define-const var1531 String (var381_checkInstantiable/789342880 var260)) ; Statement: r1 = staticinvoke <com.google.gson.internal.ConstructorConstructor: java.lang.String checkInstantiable(java.lang.Class)>(r0) 
 ; Statement: if r1 == null goto return 
(assert (= var1531 null-String)) ; Cond: r1 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var381_checkInstantiable/789342880=([java.lang.Class], java.lang.String)}
; {var260=r0, var381=com.google.gson.internal.ConstructorConstructor, var1531=r1, var3795=null_type}
; {r0=var260, com.google.gson.internal.ConstructorConstructor=var381, r1=var1531, null_type=var3795}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.google.gson.internal.ConstructorConstructor: java.lang.String checkInstantiable(java.lang.Class)>(r0);	if r1 == null goto return;	return
;block_num 2