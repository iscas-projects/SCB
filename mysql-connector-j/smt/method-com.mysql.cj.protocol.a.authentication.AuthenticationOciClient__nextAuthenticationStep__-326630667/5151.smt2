(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2261 0)
(declare-sort var3885 0)
(declare-sort var3874 0)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3874_clear/2124191932 (var3874) void)
(declare-fun sourceOfAuthData/-587129497 (var2261) String)
(declare-fun var3885-init () var3885)
(declare-fun <init>/233406230 (var3885 Int) void)
(declare-fun var3874_add/328494887 (var3874 var2477) Bool)
(declare-fun cast-from-var3885-to-var2477 (var3885) var2477)
(declare-const null-var2261 var2261)
(declare-const null-var3885 var3885)
(declare-const null-var3874 var3874)
(declare-const var2261-PLUGIN_NAME String)
(declare-const var173 var2261) ; Statement: r1 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationOciClient 
(assert (not (= var173 null-var2261)))
(declare-const var2892 var3885) ; Statement: r5 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var2892 null-var3885)))
(declare-const var2708 var3874) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2708 null-var3874)))
;(assert (var3874_clear/2124191932 var2708)) ; Statement: interfaceinvoke r0.<java.util.List: void clear()>() 

(declare-const var2708!1 var3874)
(define-const var2148 String (sourceOfAuthData/-587129497 var173)) ; Statement: $r3 = r1.<com.mysql.cj.protocol.a.authentication.AuthenticationOciClient: java.lang.String sourceOfAuthData> 
(define-const var1536 String var2261-PLUGIN_NAME) ; Statement: $r2 = <com.mysql.cj.protocol.a.authentication.AuthenticationOciClient: java.lang.String PLUGIN_NAME> 
(assert true)
(define-const var1985 Bool (= var2148 var1536)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(assert (= (ite var1985 1 0) 0)) ; Cond: $z0 == 0 
(define-const var75 var3885 var3885-init) ; Statement: $r4 = new com.mysql.cj.protocol.a.NativePacketPayload 
(assert true)
;(assert (<init>/233406230 var75 0)) ; Statement: specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>(0) 

(declare-const var75!1 var3885)
(declare-const var323 Int)
;(assert (var3874_add/328494887 var2708!1 (cast-from-var3885-to-var2477 var75!1))) ; Statement: interfaceinvoke r0.<java.util.List: boolean add(java.lang.Object)>($r4) 

(declare-const var2708!2 var3874)
(declare-const var75!2 var3885)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3874_clear/2124191932=([java.util.List], void), sourceOfAuthData/-587129497=([com.mysql.cj.protocol.a.authentication.AuthenticationOciClient], java.lang.String), var3885-init=([], com.mysql.cj.protocol.a.NativePacketPayload), <init>/233406230=([com.mysql.cj.protocol.a.NativePacketPayload, int], void), var3874_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3885-to-var2477=([com.mysql.cj.protocol.a.NativePacketPayload], java.lang.Object)}
; {var2261=com.mysql.cj.protocol.a.authentication.AuthenticationOciClient, var173=r1, var3885=com.mysql.cj.protocol.a.NativePacketPayload, var2892=r5, var3874=java.util.List, var2708=r0, var2148=$r3, var1536=$r2, var1985=$z0, var75=$r4, var323=0, var2477=java.lang.Object}
; {com.mysql.cj.protocol.a.authentication.AuthenticationOciClient=var2261, r1=var173, com.mysql.cj.protocol.a.NativePacketPayload=var3885, r5=var2892, java.util.List=var3874, r0=var2708, $r3=var2148, $r2=var1536, $z0=var1985, $r4=var75, 0=var323, java.lang.Object=var2477}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.mysql.cj.protocol.a.authentication.AuthenticationOciClient;	r5 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	r0 := @parameter1: java.util.List;	interfaceinvoke r0.<java.util.List: void clear()>();	$r3 = r1.<com.mysql.cj.protocol.a.authentication.AuthenticationOciClient: java.lang.String sourceOfAuthData>;	$r2 = <com.mysql.cj.protocol.a.authentication.AuthenticationOciClient: java.lang.String PLUGIN_NAME>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r4 = new com.mysql.cj.protocol.a.NativePacketPayload;	specialinvoke $r4.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(int)>(0);	interfaceinvoke r0.<java.util.List: boolean add(java.lang.Object)>($r4);	return 1
;block_num 2