(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var241 0)
(declare-sort var2296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shortName/-1654954018 (var241) String)
(declare-const null-var241 var241)
(declare-const null-String String)
(declare-const var351 var241) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var351 null-var241)))
(declare-const var2074 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2074 null-String)))
(define-const var2471 String (shortName/-1654954018 var351)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String shortName> 
(assert true)
(define-const var484 Bool (= var2074 var2471)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var484 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1529 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {shortName/-1654954018=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String)}
; {var241=jdk.nashorn.internal.runtime.options.OptionTemplate, var351=r1, var2074=r0, var2296=null_type, var2471=$r2, var484=$z0, var1529=$z2}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var241, r1=var351, r0=var2074, null_type=var2296, $r2=var2471, $z0=var484, $z2=var1529}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate;	r0 := @parameter0: java.lang.String;	$r2 = r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String shortName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3