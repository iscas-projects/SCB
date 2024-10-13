(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2367 0)
(declare-sort var1073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2367 var2367)
(declare-const null-String String)
(declare-const var123 var2367) ; Statement: r5 := @this: freemarker.template.Configuration 
(assert (not (= var123 null-var2367)))
(declare-const var2125 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2125 null-String)))
(define-const var0 String "encoding") ; Statement: $r1 = "encoding" 
(assert true)
(define-const var2144 Bool (= var0 var2125)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return "default_encoding" 
(assert (not (not (= (ite var2144 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1763 String "charset") ; Statement: $r2 = "charset" 
(assert true)
(define-const var2404 Bool (= var1763 var2125)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto return "default_encoding" 
(assert (not (= (ite var2404 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return "default_encoding" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2367=freemarker.template.Configuration, var123=r5, var2125=r0, var1073=null_type, var0=$r1, var2144=$z0, var1763=$r2, var2404=$z1}
; {freemarker.template.Configuration=var2367, r5=var123, r0=var2125, null_type=var1073, $r1=var0, $z0=var2144, $r2=var1763, $z1=var2404}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r5 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$r1 = "encoding";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto return "default_encoding";	$r2 = "charset";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 != 0 goto return "default_encoding";	return "default_encoding"
;block_num 3