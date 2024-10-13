(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3305 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2280-init () var2280)
(declare-fun <init>/875830710 (var2280 String) void)
(declare-const null-String String)
(declare-const var2493 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2493 null-String)))
(assert true)
(define-const var3044 Bool (= var2493 "segments.gen")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("segments.gen") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("segments") 
(assert (not (= (ite var3044 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1975 var2280 var2280-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1975 "\u0022segments.gen\u0022 is not a valid segment file name since 4.0")) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("\"segments.gen\" is not a valid segment file name since 4.0") 

(declare-const var1975!1 var2280)
(declare-const var3292 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2280-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2493=r0, var3305=null_type, var3044=$z0, var2280=java.lang.IllegalArgumentException, var1975=$r5, var3292="\"segments.gen\" is not a valid segment file name since 4.0"}
; {r0=var2493, null_type=var3305, $z0=var3044, java.lang.IllegalArgumentException=var2280, $r5=var1975, "\"segments.gen\" is not a valid segment file name since 4.0"=var3292}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("segments.gen");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("segments");	$r5 = new java.lang.IllegalArgumentException;	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("\"segments.gen\" is not a valid segment file name since 4.0");	throw $r5
;block_num 2