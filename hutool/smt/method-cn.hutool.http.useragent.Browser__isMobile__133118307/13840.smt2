(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1682 0)
(declare-sort var126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/2144553633 (var126) String)
(declare-fun cast-from-var1682-to-var126 (var1682) var126)
(declare-const null-var1682 var1682)
(declare-const var433 var1682) ; Statement: r0 := @this: cn.hutool.http.useragent.Browser 
(assert (not (= var433 null-var1682)))
(assert true)
(define-const var2263 String (getName/2144553633 (cast-from-var1682-to-var126 var433))) ; Statement: r1 = virtualinvoke r0.<cn.hutool.http.useragent.Browser: java.lang.String getName()>() 
(define-const var693 String "PSP") ; Statement: $r2 = "PSP" 
(assert true)
(define-const var767 Bool (= var693 var2263)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z7 = 1 
(assert (not (= (ite var767 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1270 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= return $z7] 
(assert true) ; Non Conditional
 ; Statement: return $z7 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/2144553633=([cn.hutool.http.useragent.UserAgentInfo], java.lang.String), cast-from-var1682-to-var126=([cn.hutool.http.useragent.Browser], cn.hutool.http.useragent.UserAgentInfo)}
; {var1682=cn.hutool.http.useragent.Browser, var433=r0, var126=cn.hutool.http.useragent.UserAgentInfo, var2263=r1, var693=$r2, var767=$z0, var1270=$z7}
; {cn.hutool.http.useragent.Browser=var1682, r0=var433, cn.hutool.http.useragent.UserAgentInfo=var126, r1=var2263, $r2=var693, $z0=var767, $z7=var1270}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.http.useragent.Browser;	r1 = virtualinvoke r0.<cn.hutool.http.useragent.Browser: java.lang.String getName()>();	$r2 = "PSP";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z7 = 1;	$z7 = 1;	goto [?= return $z7];	return $z7
;block_num 3