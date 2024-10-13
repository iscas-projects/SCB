(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun recursionLimit/1364486719 (var2480) Int)
(declare-const null-var2480 var2480)
(declare-const null-Int Int)
(declare-const var1755 var2480) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream 
(assert (not (= var1755 null-var2480)))
(declare-const var2976 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2976 null-Int)))
 ; Statement: if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit> 
(assert (>= var2976 0)) ; Cond: i0 >= 0 
(define-const var1885 Int (recursionLimit/1364486719 var1755)) ; Statement: i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit> 
(declare-const var1755!1 var2480)
(assert (not (= var1755!1 null-var2480)))
(assert (= (recursionLimit/1364486719 var1755!1) var2976)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit> = i0 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {recursionLimit/1364486719=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream], int)}
; {var2480=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream, var1755=r0, var2976=i0, var1885=i1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream=var2480, r0=var1755, i0=var2976, i1=var1885}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream;	i0 := @parameter0: int;	if i0 >= 0 goto i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit>;	i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit>;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream: int recursionLimit> = i0;	return i1
;block_num 2