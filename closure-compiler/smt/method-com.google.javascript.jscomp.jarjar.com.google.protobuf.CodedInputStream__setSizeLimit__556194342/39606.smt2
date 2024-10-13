(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sizeLimit/1364486719 (var1127) Int)
(declare-const null-var1127 var1127)
(declare-const null-Int Int)
(declare-const var2476 var1127) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream 
(assert (not (= var2476 null-var1127)))
(declare-const var3450 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3450 null-Int)))
 ; Statement: if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit> 
(assert (>= var3450 0)) ; Cond: i0 >= 0 
(define-const var3793 Int (sizeLimit/1364486719 var2476)) ; Statement: i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit> 
(declare-const var2476!1 var1127)
(assert (not (= var2476!1 null-var1127)))
(assert (= (sizeLimit/1364486719 var2476!1) var3450)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit> = i0 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {sizeLimit/1364486719=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream], int)}
; {var1127=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream, var2476=r0, var3450=i0, var3793=i1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream=var1127, r0=var2476, i0=var3450, i1=var3793}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream;	i0 := @parameter0: int;	if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit>;	i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit>;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int sizeLimit> = i0;	return i1
;block_num 2