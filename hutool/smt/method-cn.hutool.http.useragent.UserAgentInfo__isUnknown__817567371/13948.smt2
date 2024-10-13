(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/268366484 (var745) String)
(declare-const null-var745 var745)
(declare-const var3509 var745) ; Statement: r0 := @this: cn.hutool.http.useragent.UserAgentInfo 
(assert (not (= var3509 null-var745)))
(define-const var3027 String "Unknown") ; Statement: $r2 = "Unknown" 
(define-const var752 String (name/268366484 var3509)) ; Statement: $r1 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name> 
(assert true)
(define-const var1920 Bool (= var3027 var752)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/268366484=([cn.hutool.http.useragent.UserAgentInfo], java.lang.String)}
; {var745=cn.hutool.http.useragent.UserAgentInfo, var3509=r0, var3027=$r2, var752=$r1, var1920=$z0}
; {cn.hutool.http.useragent.UserAgentInfo=var745, r0=var3509, $r2=var3027, $r1=var752, $z0=var1920}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.http.useragent.UserAgentInfo;	$r2 = "Unknown";	$r1 = r0.<cn.hutool.http.useragent.UserAgentInfo: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1