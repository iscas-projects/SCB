(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3724 0)
(declare-sort var2710 0)
(declare-sort var3197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3197_getString/-103458448 (String var2710 String) String)
(declare-const null-String String)
(declare-const null-var2710 var2710)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1286 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1286 null-String)))
(declare-const var350 var2710) ; Statement: r1 := @parameter1: java.util.Map 
(assert (not (= var350 null-var2710)))
(declare-const var2828 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2828 null-String)))
(declare-const var3115 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var3115 null-__Array__Int__String__)))
(define-const var2073 String (var3197_getString/-103458448 var1286 var350 var2828)) ; Statement: r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>(r0, r1, r2) 
(assert true)
(define-const var3997 Bool (= var2828 var2073)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return r3 
(assert (not (= (ite var3997 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3197_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String)}
; {var1286=r0, var3724=null_type, var2710=java.util.Map, var350=r1, var2828=r2, var3115=r4, var3197=org.hibernate.internal.util.config.ConfigurationHelper, var2073=r3, var3997=$z0}
; {r0=var1286, null_type=var3724, java.util.Map=var2710, r1=var350, r2=var2828, r4=var3115, org.hibernate.internal.util.config.ConfigurationHelper=var3197, r3=var2073, $z0=var3997}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Map;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>(r0, r1, r2);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto return r3;	return r3
;block_num 2