(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1145 0)
(declare-sort var3011 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAlgorithm/14574345 (var3011) String)
(declare-fun cast-from-var1145-to-var3011 (var1145) var3011)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getParameterSpec/1619709845 (var3011) var91)
(declare-const null-var1145 var1145)
(declare-const null-var91 var91)
(declare-const var337 var1145) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod 
(assert (not (= var337 null-var1145)))
(assert true)
(define-const var2536 String (getAlgorithm/14574345 (cast-from-var1145-to-var3011 var337))) ; Statement: $r1 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod: java.lang.String getAlgorithm()>() 
(assert true)
(define-const var2646 Int (hashCode/-467973558 var2536)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3760 Int (+ 527 var2646)) ; Statement: i3 = 527 + $i0 
(assert true)
(define-const var2895 var91 (getParameterSpec/1619709845 (cast-from-var1145-to-var3011 var337))) ; Statement: r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod: java.security.spec.AlgorithmParameterSpec getParameterSpec()>() 
 ; Statement: if r2 == null goto return i3 
(assert (= var2895 null-var91)) ; Cond: r2 == null 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAlgorithm/14574345=([org.jcp.xml.dsig.internal.dom.DOMTransform], java.lang.String), cast-from-var1145-to-var3011=([org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod], org.jcp.xml.dsig.internal.dom.DOMTransform), hashCode/-467973558=([java.lang.String], int), getParameterSpec/1619709845=([org.jcp.xml.dsig.internal.dom.DOMTransform], java.security.spec.AlgorithmParameterSpec)}
; {var1145=org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod, var337=r0, var3011=org.jcp.xml.dsig.internal.dom.DOMTransform, var2536=$r1, var2646=$i0, var3760=i3, var91=java.security.spec.AlgorithmParameterSpec, var2895=r2}
; {org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod=var1145, r0=var337, org.jcp.xml.dsig.internal.dom.DOMTransform=var3011, $r1=var2536, $i0=var2646, i3=var3760, java.security.spec.AlgorithmParameterSpec=var91, r2=var2895}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod;	$r1 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod: java.lang.String getAlgorithm()>();	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 527 + $i0;	r2 = virtualinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod: java.security.spec.AlgorithmParameterSpec getParameterSpec()>();	if r2 == null goto return i3;	return i3
;block_num 2