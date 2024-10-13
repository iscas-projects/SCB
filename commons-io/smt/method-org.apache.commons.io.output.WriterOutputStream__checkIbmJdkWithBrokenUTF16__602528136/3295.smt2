(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var354 0)
(declare-sort var548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1362759805 (var354) String)
(declare-const null-var354 var354)
(declare-const var548-UTF_16 var354)
(declare-const var3234 var354) ; Statement: r1 := @parameter0: java.nio.charset.Charset 
(assert (not (= var3234 null-var354)))
(define-const var256 var354 var548-UTF_16) ; Statement: $r0 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
(assert true)
(define-const var2647 String (name/1362759805 var256)) ; Statement: $r3 = virtualinvoke $r0.<java.nio.charset.Charset: java.lang.String name()>() 
(assert true)
(define-const var2187 String (name/1362759805 var3234)) ; Statement: $r2 = virtualinvoke r1.<java.nio.charset.Charset: java.lang.String name()>() 
(assert true)
(define-const var557 Bool (= var2647 var2187)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r4 = "v\u00e9s" 
(assert (not (not (= (ite var557 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1362759805=([java.nio.charset.Charset], java.lang.String)}
; {var354=java.nio.charset.Charset, var3234=r1, var548=java.nio.charset.StandardCharsets, var256=$r0, var2647=$r3, var2187=$r2, var557=$z0}
; {java.nio.charset.Charset=var354, r1=var3234, java.nio.charset.StandardCharsets=var548, $r0=var256, $r3=var2647, $r2=var2187, $z0=var557}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.nio.charset.Charset;	$r0 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	$r3 = virtualinvoke $r0.<java.nio.charset.Charset: java.lang.String name()>();	$r2 = virtualinvoke r1.<java.nio.charset.Charset: java.lang.String name()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r4 = "v\u00e9s";	return
;block_num 2