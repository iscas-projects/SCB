(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1713 0)
(declare-sort var2841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHostAddress/1493983505 (var2841) String)
(declare-fun getCanonicalHostName/-622274826 (var2841) String)
(declare-const null-var1713 var1713)
(declare-const null-var2841 var2841)
(declare-const var1165 var1713) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var1165 null-var1713)))
(declare-const var1235 var2841) ; Statement: r0 := @parameter0: java.net.InetAddress 
(assert (not (= var1235 null-var2841)))
(assert true)
(define-const var3525 String (getHostAddress/1493983505 var1235)) ; Statement: $r2 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert true)
(define-const var593 String (getCanonicalHostName/-622274826 var1235)) ; Statement: $r1 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getCanonicalHostName()>() 
(assert true)
(define-const var2264 Bool (= var3525 var593)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2264 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3176 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getHostAddress/1493983505=([java.net.InetAddress], java.lang.String), getCanonicalHostName/-622274826=([java.net.InetAddress], java.lang.String)}
; {var1713=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var1165=r3, var2841=java.net.InetAddress, var1235=r0, var3525=$r2, var593=$r1, var2264=$z0, var3176=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var1713, r3=var1165, java.net.InetAddress=var2841, r0=var1235, $r2=var3525, $r1=var593, $z0=var2264, $z1=var3176}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	r0 := @parameter0: java.net.InetAddress;	$r2 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getHostAddress()>();	$r1 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getCanonicalHostName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3