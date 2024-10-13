(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1555_stringValue/-689356382 (String) String)
(define-const var683 String (var1555_stringValue/-689356382 "PARSER_CODE_GENERATOR")) ; Statement: r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("PARSER_CODE_GENERATOR") 
(assert true)
(define-const var896 Bool (= var683 "")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (= (ite var896 1 0) 0)) ; Cond: $z0 == 0 
(define-const var949 String var683) ; Statement: $r1 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1555_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var1555=org.javacc.parser.Options, var683=r0, var896=$z0, var949=$r1}
; {org.javacc.parser.Options=var1555, r0=var683, $z0=var896, $r1=var949}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("PARSER_CODE_GENERATOR");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = r0;	$r1 = r0;	return $r1
;block_num 3