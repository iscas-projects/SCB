(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getXPath/124276196 (var1901) String)
(declare-const null-var1901 var1901)
(declare-const var3334 var1901) ; Statement: r0 := @parameter0: javax.xml.crypto.dsig.spec.XPathFilterParameterSpec 
(assert (not (= var3334 null-var1901)))
(declare-const var2133 var1901) ; Statement: r1 := @parameter1: javax.xml.crypto.dsig.spec.XPathFilterParameterSpec 
(assert (not (= var2133 null-var1901)))
(assert true)
(define-const var563 String (getXPath/124276196 var3334)) ; Statement: $r3 = virtualinvoke r0.<javax.xml.crypto.dsig.spec.XPathFilterParameterSpec: java.lang.String getXPath()>() 
(assert true)
(define-const var736 String (getXPath/124276196 var2133)) ; Statement: $r2 = virtualinvoke r1.<javax.xml.crypto.dsig.spec.XPathFilterParameterSpec: java.lang.String getXPath()>() 
(assert true)
(define-const var601 Bool (= var563 var736)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var601 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3793 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getXPath/124276196=([javax.xml.crypto.dsig.spec.XPathFilterParameterSpec], java.lang.String)}
; {var1901=javax.xml.crypto.dsig.spec.XPathFilterParameterSpec, var3334=r0, var2133=r1, var563=$r3, var736=$r2, var601=$z0, var3793=$z2}
; {javax.xml.crypto.dsig.spec.XPathFilterParameterSpec=var1901, r0=var3334, r1=var2133, $r3=var563, $r2=var736, $z0=var601, $z2=var3793}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: javax.xml.crypto.dsig.spec.XPathFilterParameterSpec;	r1 := @parameter1: javax.xml.crypto.dsig.spec.XPathFilterParameterSpec;	$r3 = virtualinvoke r0.<javax.xml.crypto.dsig.spec.XPathFilterParameterSpec: java.lang.String getXPath()>();	$r2 = virtualinvoke r1.<javax.xml.crypto.dsig.spec.XPathFilterParameterSpec: java.lang.String getXPath()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3