(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1599 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAlgorithm/14574345 (var1599) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getParameterSpec/1619709845 (var1599) var2585)
(declare-const null-var1599 var1599)
(declare-const null-var2585 var2585)
(declare-const var2304 var1599) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMTransform 
(assert (not (= var2304 null-var1599)))
(assert true)
(define-const var135 String (getAlgorithm/14574345 var2304)) ; Statement: $r1 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var1228 Int (hashCode/-467973558 var135)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3600 Int (+ 527 var1228)) ; Statement: i3 = 527 + $i0 
(assert true)
(define-const var817 var2585 (getParameterSpec/1619709845 var2304)) ; Statement: r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.security.spec.AlgorithmParameterSpec getParameterSpec()>() 
 ; Statement: if r2 == null goto return i3 
(assert (= var817 null-var2585)) ; Cond: r2 == null 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAlgorithm/14574345=([org.jcp.xml.dsig.internal.dom.DOMTransform], java.lang.String), hashCode/-467973558=([java.lang.String], int), getParameterSpec/1619709845=([org.jcp.xml.dsig.internal.dom.DOMTransform], java.security.spec.AlgorithmParameterSpec)}
; {var1599=org.jcp.xml.dsig.internal.dom.DOMTransform, var2304=r0, var135=$r1, var1228=$i0, var3600=i3, var2585=java.security.spec.AlgorithmParameterSpec, var817=r2}
; {org.jcp.xml.dsig.internal.dom.DOMTransform=var1599, r0=var2304, $r1=var135, $i0=var1228, i3=var3600, java.security.spec.AlgorithmParameterSpec=var2585, r2=var817}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMTransform;	$r1 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 527 + $i0;	r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.security.spec.AlgorithmParameterSpec getParameterSpec()>();	if r2 == null goto return i3;	return i3
;block_num 2