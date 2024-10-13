(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3676 0)
(declare-sort var2733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3676 var3676)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2789 var3676) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var2789 null-var3676)))
(declare-const var410 ClassObject) ; Statement: r7 := @parameter1: java.lang.Class 
(assert (not (= var410 null-ClassObject)))
(declare-const var460 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var460 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (= var2789 null-var3676))) ; Cond: r0 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3676=java.io.InputStream, var2789=r0, var410=r7, var460=r3, var2733=null_type}
; {java.io.InputStream=var3676, r0=var2789, r7=var410, r3=var460, null_type=var2733}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.InputStream;	r7 := @parameter1: java.lang.Class;	r3 := @parameter2: java.lang.String;	if r0 != null goto return;	return
;block_num 2