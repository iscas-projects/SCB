(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2649 0)
(declare-sort var2039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHostAddress/1493983505 (var2039) String)
(declare-fun getCanonicalHostName/-622274826 (var2039) String)
(declare-const null-var2649 var2649)
(declare-const null-var2039 var2039)
(declare-const var1904 var2649) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var1904 null-var2649)))
(declare-const var1535 var2039) ; Statement: r0 := @parameter0: java.net.InetAddress 
(assert (not (= var1535 null-var2039)))
(assert true)
(define-const var3904 String (getHostAddress/1493983505 var1535)) ; Statement: $r2 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert true)
(define-const var3686 String (getCanonicalHostName/-622274826 var1535)) ; Statement: $r1 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getCanonicalHostName()>() 
(assert true)
(define-const var3035 Bool (= var3904 var3686)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3035 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2314 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getHostAddress/1493983505=([java.net.InetAddress], java.lang.String), getCanonicalHostName/-622274826=([java.net.InetAddress], java.lang.String)}
; {var2649=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var1904=r3, var2039=java.net.InetAddress, var1535=r0, var3904=$r2, var3686=$r1, var3035=$z0, var2314=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var2649, r3=var1904, java.net.InetAddress=var2039, r0=var1535, $r2=var3904, $r1=var3686, $z0=var3035, $z1=var2314}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	r0 := @parameter0: java.net.InetAddress;	$r2 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getHostAddress()>();	$r1 = virtualinvoke r0.<java.net.InetAddress: java.lang.String getCanonicalHostName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3