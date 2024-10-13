(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1587 0)
(declare-sort var3384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHostPortPair/582926859 (var3384) String)
(declare-const null-String String)
(declare-const null-var3384 var3384)
(declare-const var272 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var272 null-String)))
(declare-const var368 var3384) ; Statement: r1 := @parameter1: com.mysql.cj.conf.HostInfo 
(assert (not (= var368 null-var3384)))
(assert true)
(define-const var2501 String (getHostPortPair/582926859 var368)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHostPortPair()>() 
(assert true)
(define-const var1410 Bool (= var272 var2501)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getHostPortPair/582926859=([com.mysql.cj.conf.HostInfo], java.lang.String)}
; {var272=r0, var1587=null_type, var3384=com.mysql.cj.conf.HostInfo, var368=r1, var2501=$r2, var1410=$z0}
; {r0=var272, null_type=var1587, com.mysql.cj.conf.HostInfo=var3384, r1=var368, $r2=var2501, $z0=var1410}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.mysql.cj.conf.HostInfo;	$r2 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHostPortPair()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1