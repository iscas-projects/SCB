(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2130 0)
(declare-sort var3452 0)
(declare-sort var2504 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAlgorithm/-1357366243 (var3452) String)
(declare-fun cast-from-var2130-to-var3452 (var2130) var3452)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getParameterSpec/-2069161611 (var3404) var2504)
(declare-fun cast-from-var2130-to-var3404 (var2130) var3404)
(declare-const null-var2130 var2130)
(declare-const null-var2504 var2504)
(declare-const var2493 var2130) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod 
(assert (not (= var2493 null-var2130)))
(assert true)
(define-const var1924 String (getAlgorithm/-1357366243 (cast-from-var2130-to-var3452 var2493))) ; Statement: $r1 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var751 Int (hashCode/-467973558 var1924)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2127 Int (+ 527 var751)) ; Statement: i3 = 527 + $i0 
(assert true)
(define-const var1751 var2504 (getParameterSpec/-2069161611 (cast-from-var2130-to-var3404 var2493))) ; Statement: r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.security.spec.AlgorithmParameterSpec getParameterSpec()>() 
 ; Statement: if r2 == null goto return i3 
(assert (= var1751 null-var2504)) ; Cond: r2 == null 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAlgorithm/-1357366243=([javax.xml.crypto.AlgorithmMethod], java.lang.String), cast-from-var2130-to-var3452=([org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod], javax.xml.crypto.AlgorithmMethod), hashCode/-467973558=([java.lang.String], int), getParameterSpec/-2069161611=([javax.xml.crypto.dsig.SignatureMethod], java.security.spec.AlgorithmParameterSpec), cast-from-var2130-to-var3404=([org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod], javax.xml.crypto.dsig.SignatureMethod)}
; {var2130=org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod, var2493=r0, var3452=javax.xml.crypto.AlgorithmMethod, var1924=$r1, var751=$i0, var2127=i3, var2504=java.security.spec.AlgorithmParameterSpec, var3404=javax.xml.crypto.dsig.SignatureMethod, var1751=r2}
; {org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod=var2130, r0=var2493, javax.xml.crypto.AlgorithmMethod=var3452, $r1=var1924, $i0=var751, i3=var2127, java.security.spec.AlgorithmParameterSpec=var2504, javax.xml.crypto.dsig.SignatureMethod=var3404, r2=var1751}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod;	$r1 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.lang.String getAlgorithm()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 527 + $i0;	r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.AbstractDOMSignatureMethod: java.security.spec.AlgorithmParameterSpec getParameterSpec()>();	if r2 == null goto return i3;	return i3
;block_num 2