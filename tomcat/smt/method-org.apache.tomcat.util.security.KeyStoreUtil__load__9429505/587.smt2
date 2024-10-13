(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3997 0)
(declare-sort var2020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/921999394 (var3997) String)
(declare-fun load/-2118206617 (var3997 var2020 (Array Int Int)) void)
(declare-const null-var3997 var3997)
(declare-const null-var2020 var2020)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2341 var3997) ; Statement: r0 := @parameter0: java.security.KeyStore 
(assert (not (= var2341 null-var3997)))
(declare-const var3443 var2020) ; Statement: r2 := @parameter1: java.io.InputStream 
(assert (not (= var3443 null-var2020)))
(declare-const var1944 (Array Int Int)) ; Statement: r3 := @parameter2: char[] 
(assert (not (= var1944 null-__Array__Int__Int__)))
(assert true)
(define-const var1439 String (getType/921999394 var2341)) ; Statement: $r1 = virtualinvoke r0.<java.security.KeyStore: java.lang.String getType()>() 
(assert true)
(define-const var2353 Bool (= var1439 "PKCS12")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("PKCS12") 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.security.KeyStore: void load(java.io.InputStream,char[])>(r2, r3) 
(assert (= (ite var2353 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (load/-2118206617 var2341 var3443 var1944)) ; Statement: virtualinvoke r0.<java.security.KeyStore: void load(java.io.InputStream,char[])>(r2, r3) 

(declare-const var2341!1 var3997)
(declare-const var3443!1 var2020)
(declare-const var1944!1 (Array Int Int))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/921999394=([java.security.KeyStore], java.lang.String), load/-2118206617=([java.security.KeyStore, java.io.InputStream, char[]], void)}
; {var3997=java.security.KeyStore, var2341=r0, var2020=java.io.InputStream, var3443=r2, var1944=r3, var1439=$r1, var2353=$z0}
; {java.security.KeyStore=var3997, r0=var2341, java.io.InputStream=var2020, r2=var3443, r3=var1944, $r1=var1439, $z0=var2353}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.security.KeyStore;	r2 := @parameter1: java.io.InputStream;	r3 := @parameter2: char[];	$r1 = virtualinvoke r0.<java.security.KeyStore: java.lang.String getType()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("PKCS12");	if $z0 == 0 goto virtualinvoke r0.<java.security.KeyStore: void load(java.io.InputStream,char[])>(r2, r3);	virtualinvoke r0.<java.security.KeyStore: void load(java.io.InputStream,char[])>(r2, r3);	return
;block_num 3