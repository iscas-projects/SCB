(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProtocol/70454678 (var2696) String)
(declare-const null-var2696 var2696)
(declare-const var3399 var2696) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3399 null-var2696)))
(assert true)
(define-const var204 String (getProtocol/70454678 var3399)) ; Statement: r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(define-const var1649 String "jar") ; Statement: $r2 = "jar" 
(assert true)
(define-const var1331 Bool (= var1649 var204)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z4 = 1 
(assert (not (= (ite var1331 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1858 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {getProtocol/70454678=([java.net.URL], java.lang.String)}
; {var2696=java.net.URL, var3399=r0, var204=r1, var1649=$r2, var1331=$z0, var1858=$z4}
; {java.net.URL=var2696, r0=var3399, r1=var204, $r2=var1649, $z0=var1331, $z4=var1858}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URL;	r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$r2 = "jar";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 3