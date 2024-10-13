(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3382 0)
(declare-sort var468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProtocol/70454678 (var3382) String)
(declare-const null-var3382 var3382)
(declare-const null-var468 var468)
(declare-const var1921 var3382) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var1921 null-var3382)))
(assert true)
(define-const var1858 String (getProtocol/70454678 var1921)) ; Statement: $r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var2117 Bool (= var1858 "file")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("file") 
 ; Statement: if $z0 == 0 goto r16 = virtualinvoke r0.<java.net.URL: java.lang.String getPath()>() 
(assert (not (= (ite var2117 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3857 var468) ; Statement: $r12 := @caughtexception 
(assert (not (= var3857 null-var468)))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getProtocol/70454678=([java.net.URL], java.lang.String)}
; {var3382=java.net.URL, var1921=r0, var1858=$r1, var2117=$z0, var468=java.lang.Throwable, var3857=$r12}
; {java.net.URL=var3382, r0=var1921, $r1=var1858, $z0=var2117, java.lang.Throwable=var468, $r12=var3857}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URL;	$r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("file");	if $z0 == 0 goto r16 = virtualinvoke r0.<java.net.URL: java.lang.String getPath()>();	$r12 := @caughtexception;	return null
;block_num 2