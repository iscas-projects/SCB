(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3800 0)
(declare-sort var492 0)
(declare-sort var3586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3586_clear/2124191932 (var3586) void)
(declare-fun sourceOfAuthData/-1276471434 (var3800) String)
(declare-const null-var3800 var3800)
(declare-const null-var492 var492)
(declare-const null-var3586 var3586)
(declare-const var3800-PLUGIN_NAME String)
(declare-const var2402 var3800) ; Statement: r1 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient 
(assert (not (= var2402 null-var3800)))
(declare-const var3610 var492) ; Statement: r8 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var3610 null-var492)))
(declare-const var2889 var3586) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2889 null-var3586)))
;(assert (var3586_clear/2124191932 var2889)) ; Statement: interfaceinvoke r0.<java.util.List: void clear()>() 

(declare-const var2889!1 var3586)
(define-const var1400 String (sourceOfAuthData/-1276471434 var2402)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient: java.lang.String sourceOfAuthData> 
(define-const var2865 String var3800-PLUGIN_NAME) ; Statement: $r2 = <com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient: java.lang.String PLUGIN_NAME> 
(assert true)
(define-const var3983 Bool (= var1400 var2865)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r5 = <com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient$1: int[] $SwitchMap$com$mysql$cj$protocol$a$authentication$AuthenticationWebAuthnClient$AuthStage> 
(assert (not (not (= (ite var3983 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3586_clear/2124191932=([java.util.List], void), sourceOfAuthData/-1276471434=([com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient], java.lang.String)}
; {var3800=com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient, var2402=r1, var492=com.mysql.cj.protocol.a.NativePacketPayload, var3610=r8, var3586=java.util.List, var2889=r0, var1400=$r3, var2865=$r2, var3983=$z0}
; {com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient=var3800, r1=var2402, com.mysql.cj.protocol.a.NativePacketPayload=var492, r8=var3610, java.util.List=var3586, r0=var2889, $r3=var1400, $r2=var2865, $z0=var3983}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient;	r8 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	r0 := @parameter1: java.util.List;	interfaceinvoke r0.<java.util.List: void clear()>();	$r3 = r1.<com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient: java.lang.String sourceOfAuthData>;	$r2 = <com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient: java.lang.String PLUGIN_NAME>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r5 = <com.mysql.cj.protocol.a.authentication.AuthenticationWebAuthnClient$1: int[] $SwitchMap$com$mysql$cj$protocol$a$authentication$AuthenticationWebAuthnClient$AuthStage>;	return 1
;block_num 2