(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1749 0)
(declare-sort var2006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1749 var1749)
(declare-const null-var2006 var2006)
(declare-const var1590 var1749) ; Statement: r3 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod 
(assert (not (= var1590 null-var1749)))
(declare-const var2956 var2006) ; Statement: r0 := @parameter0: javax.xml.crypto.dsig.spec.DigestMethodParameterSpec 
(assert (not (= var2956 null-var2006)))
 ; Statement: if r0 == null goto return 
(assert (= var2956 null-var2006)) ; Cond: r0 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1749=org.jcp.xml.dsig.internal.dom.DOMDigestMethod, var1590=r3, var2006=javax.xml.crypto.dsig.spec.DigestMethodParameterSpec, var2956=r0}
; {org.jcp.xml.dsig.internal.dom.DOMDigestMethod=var1749, r3=var1590, javax.xml.crypto.dsig.spec.DigestMethodParameterSpec=var2006, r0=var2956}
;seq 
;cnt {}
;stmts r3 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod;	r0 := @parameter0: javax.xml.crypto.dsig.spec.DigestMethodParameterSpec;	if r0 == null goto return;	return
;block_num 2