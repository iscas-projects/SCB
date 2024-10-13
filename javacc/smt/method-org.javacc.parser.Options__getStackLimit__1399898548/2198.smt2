(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var676_stringValue/-689356382 (String) String)
(define-const var2847 String (var676_stringValue/-689356382 "STACK_LIMIT")) ; Statement: r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("STACK_LIMIT") 
(assert true)
(define-const var3461 Bool (= var2847 "0")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var3461 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {var676_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var676=org.javacc.parser.Options, var2847=r0, var3461=$z0}
; {org.javacc.parser.Options=var676, r0=var2847, $z0=var3461}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("STACK_LIMIT");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 == 0 goto return r0;	return ""
;block_num 2