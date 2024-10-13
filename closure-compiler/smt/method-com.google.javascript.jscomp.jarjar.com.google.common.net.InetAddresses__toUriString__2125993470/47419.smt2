(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3473_toAddrString/1425377219 (var3000) String)
(declare-const null-var3000 var3000)
(declare-const var3989 var3000) ; Statement: r0 := @parameter0: java.net.InetAddress 
(assert (not (= var3989 null-var3000)))
(define-const var2588 Bool false) ; Statement: $z0 = r0 instanceof java.net.Inet6Address 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0) 
(assert (= (ite var2588 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2121 String (var3473_toAddrString/1425377219 var3989)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3473_toAddrString/1425377219=([java.net.InetAddress], java.lang.String)}
; {var3000=java.net.InetAddress, var3989=r0, var2588=$z0, var3473=com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses, var2121=$r1}
; {java.net.InetAddress=var3000, r0=var3989, $z0=var2588, com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses=var3473, $r1=var2121}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.net.InetAddress;	$z0 = r0 instanceof java.net.Inet6Address;	if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0);	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0);	return $r1
;block_num 2