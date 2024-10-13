(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1737 0)
(declare-sort var3824 0)
(declare-sort var1450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun params/-1414453229 (var1737) var3824)
(declare-fun getAlgorithm/-1357366243 (var1450) String)
(declare-fun cast-from-var1737-to-var1450 (var1737) var1450)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1737 var1737)
(declare-const null-var3824 var3824)
(declare-const var1436 var1737) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod 
(assert (not (= var1436 null-var1737)))
(define-const var242 Int 17) ; Statement: i4 = 17 
(define-const var1948 var3824 (params/-1414453229 var1436)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: javax.xml.crypto.dsig.spec.DigestMethodParameterSpec params> 
 ; Statement: if $r1 == null goto $i1 = 31 * i4 
(assert (= var1948 null-var3824)) ; Cond: $r1 == null 
(define-const var2710 Int (* 31 var242)) ; Statement: $i1 = 31 * i4 
(assert true)
(define-const var1109 String (getAlgorithm/-1357366243 (cast-from-var1737-to-var1450 var1436))) ; Statement: $r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var2740 Int (hashCode/-467973558 var1109)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3278 Int (+ var2710 var2740)) ; Statement: $i3 = $i1 + $i0 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {params/-1414453229=([org.jcp.xml.dsig.internal.dom.DOMDigestMethod], javax.xml.crypto.dsig.spec.DigestMethodParameterSpec), getAlgorithm/-1357366243=([javax.xml.crypto.AlgorithmMethod], java.lang.String), cast-from-var1737-to-var1450=([org.jcp.xml.dsig.internal.dom.DOMDigestMethod], javax.xml.crypto.AlgorithmMethod), hashCode/-467973558=([java.lang.String], int)}
; {var1737=org.jcp.xml.dsig.internal.dom.DOMDigestMethod, var1436=r0, var242=i4, var3824=javax.xml.crypto.dsig.spec.DigestMethodParameterSpec, var1948=$r1, var2710=$i1, var1450=javax.xml.crypto.AlgorithmMethod, var1109=$r2, var2740=$i0, var3278=$i3}
; {org.jcp.xml.dsig.internal.dom.DOMDigestMethod=var1737, r0=var1436, i4=var242, javax.xml.crypto.dsig.spec.DigestMethodParameterSpec=var3824, $r1=var1948, $i1=var2710, javax.xml.crypto.AlgorithmMethod=var1450, $r2=var1109, $i0=var2740, $i3=var3278}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMDigestMethod;	i4 = 17;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: javax.xml.crypto.dsig.spec.DigestMethodParameterSpec params>;	if $r1 == null goto $i1 = 31 * i4;	$i1 = 31 * i4;	$r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMDigestMethod: java.lang.String getAlgorithm()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i3 = $i1 + $i0;	return $i3
;block_num 2