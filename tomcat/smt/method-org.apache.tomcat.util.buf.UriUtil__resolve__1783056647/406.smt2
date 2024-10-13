(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2041 0)
(declare-sort var2562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScheme/-227151860 (var2041) String)
(declare-fun resolve/-693503306 (var2041 String) var2041)
(declare-const null-var2041 var2041)
(declare-const null-String String)
(declare-const var1935 var2041) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var1935 null-var2041)))
(declare-const var3643 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3643 null-String)))
(assert true)
(define-const var3844 String (getScheme/-227151860 var1935)) ; Statement: $r1 = virtualinvoke r0.<java.net.URI: java.lang.String getScheme()>() 
(assert true)
(define-const var9 Bool (= var3844 "jar")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("jar") 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r0.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2) 
(assert (= (ite var9 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3600 var2041 (resolve/-693503306 var1935 var3643)) ; Statement: $r3 = virtualinvoke r0.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getScheme/-227151860=([java.net.URI], java.lang.String), resolve/-693503306=([java.net.URI, java.lang.String], java.net.URI)}
; {var2041=java.net.URI, var1935=r0, var3643=r2, var2562=null_type, var3844=$r1, var9=$z0, var3600=$r3}
; {java.net.URI=var2041, r0=var1935, r2=var3643, null_type=var2562, $r1=var3844, $z0=var9, $r3=var3600}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.net.URI;	r2 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.net.URI: java.lang.String getScheme()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("jar");	if $z0 == 0 goto $r3 = virtualinvoke r0.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2);	$r3 = virtualinvoke r0.<java.net.URI: java.net.URI resolve(java.lang.String)>(r2);	return $r3
;block_num 2