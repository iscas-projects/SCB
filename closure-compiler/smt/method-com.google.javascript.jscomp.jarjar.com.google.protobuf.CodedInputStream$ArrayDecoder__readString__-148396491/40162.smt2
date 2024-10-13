(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/414634479 (var609) Int)
(declare-const null-var609 var609)
(declare-const var3438 var609) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder 
(assert (not (= var3438 null-var609)))
(assert true)
(define-const var2571 Int (readRawVarint32/414634479 var3438)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (<= var2571 0)) ; Cond: i0 <= 0 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var2571 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/414634479=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder], int)}
; {var609=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder, var3438=r0, var2571=i0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder=var609, r0=var3438, i0=var2571}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$ArrayDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	if i0 != 0 goto (branch);	return ""
;block_num 3