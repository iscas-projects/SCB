(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2066 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/-579149533 (var2066) Int)
(declare-const null-var2066 var2066)
(declare-const var2046 var2066) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder 
(assert (not (= var2046 null-var2066)))
(assert true)
(define-const var1021 Int (readRawVarint32/-579149533 var2046)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (<= var1021 0)) ; Cond: i0 <= 0 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var1021 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/-579149533=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder], int)}
; {var2066=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder, var2046=r0, var1021=i0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder=var2066, r0=var2046, i0=var1021}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$UnsafeDirectNioDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	if i0 != 0 goto (branch);	return ""
;block_num 3