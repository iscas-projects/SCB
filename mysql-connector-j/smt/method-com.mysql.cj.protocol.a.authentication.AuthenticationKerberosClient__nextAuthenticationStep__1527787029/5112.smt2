(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2018 0)
(declare-sort var2696 0)
(declare-sort var2060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2060_clear/2124191932 (var2060) void)
(declare-fun sourceOfAuthData/1017247551 (var2018) String)
(declare-const null-var2018 var2018)
(declare-const null-var2696 var2696)
(declare-const null-var2060 var2060)
(declare-const var2018-PLUGIN_NAME String)
(declare-const var1528 var2018) ; Statement: r1 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient 
(assert (not (= var1528 null-var2018)))
(declare-const var2289 var2696) ; Statement: r4 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var2289 null-var2696)))
(declare-const var493 var2060) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var493 null-var2060)))
;(assert (var2060_clear/2124191932 var493)) ; Statement: interfaceinvoke r0.<java.util.List: void clear()>() 

(declare-const var493!1 var2060)
(define-const var1235 String (sourceOfAuthData/1017247551 var1528)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String sourceOfAuthData> 
(define-const var1199 String var2018-PLUGIN_NAME) ; Statement: $r2 = <com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String PLUGIN_NAME> 
(assert true)
(define-const var692 Bool (= var1235 var1199)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var692 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2060_clear/2124191932=([java.util.List], void), sourceOfAuthData/1017247551=([com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient], java.lang.String)}
; {var2018=com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient, var1528=r1, var2696=com.mysql.cj.protocol.a.NativePacketPayload, var2289=r4, var2060=java.util.List, var493=r0, var1235=$r3, var1199=$r2, var692=$z0}
; {com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient=var2018, r1=var1528, com.mysql.cj.protocol.a.NativePacketPayload=var2696, r4=var2289, java.util.List=var2060, r0=var493, $r3=var1235, $r2=var1199, $z0=var692}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient;	r4 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	r0 := @parameter1: java.util.List;	interfaceinvoke r0.<java.util.List: void clear()>();	$r3 = r1.<com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String sourceOfAuthData>;	$r2 = <com.mysql.cj.protocol.a.authentication.AuthenticationKerberosClient: java.lang.String PLUGIN_NAME>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return 1;	return 1
;block_num 2