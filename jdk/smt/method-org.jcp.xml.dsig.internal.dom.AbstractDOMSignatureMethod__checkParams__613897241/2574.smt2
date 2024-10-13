(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3202 var3202)
(declare-const null-var375 var375)
(declare-const var2585 var3202) ; Statement: r3 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod 
(assert (not (= var2585 null-var3202)))
(declare-const var3159 var375) ; Statement: r0 := @parameter0: javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec 
(assert (not (= var3159 null-var375)))
 ; Statement: if r0 == null goto return 
(assert (= var3159 null-var375)) ; Cond: r0 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3202=org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod, var2585=r3, var375=javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec, var3159=r0}
; {org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod=var3202, r3=var2585, javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec=var375, r0=var3159}
;seq 
;cnt {}
;stmts r3 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod;	r0 := @parameter0: javax.xml.crypto.dsig.spec.SignatureMethodParameterSpec;	if r0 == null goto return;	return
;block_num 2