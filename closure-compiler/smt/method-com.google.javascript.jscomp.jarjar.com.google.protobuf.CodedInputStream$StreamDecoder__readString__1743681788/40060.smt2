(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readRawVarint32/635722678 (var2935) Int)
(declare-const null-var2935 var2935)
(declare-const var374 var2935) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder 
(assert (not (= var374 null-var2935)))
(assert true)
(define-const var2077 Int (readRawVarint32/635722678 var374)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int readRawVarint32()>() 
 ; Statement: if i0 <= 0 goto (branch) 
(assert (<= var2077 0)) ; Cond: i0 <= 0 
 ; Statement: if i0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int bufferSize> 
(assert (not (not (= var2077 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {readRawVarint32/635722678=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder], int)}
; {var2935=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder, var374=r0, var2077=i0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder=var2935, r0=var374, i0=var2077}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int readRawVarint32()>();	if i0 <= 0 goto (branch);	if i0 != 0 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedInputStream$StreamDecoder: int bufferSize>;	return ""
;block_num 3