(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var536_stringValue/-689356382 (String) String)
(define-const var2164 String (var536_stringValue/-689356382 "GRAMMAR_ENCODING")) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING") 
(assert true)
(define-const var233 Bool (= var2164 "")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING") 
(assert (= (ite var233 1 0) 0)) ; Cond: $z0 == 0 
(define-const var172 String (var536_stringValue/-689356382 "GRAMMAR_ENCODING")) ; Statement: $r1 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING") 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var536_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var536=org.javacc.parser.Options, var2164=$r0, var233=$z0, var172=$r1}
; {org.javacc.parser.Options=var536, $r0=var2164, $z0=var233, $r1=var172}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING");	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING");	$r1 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING");	return $r1
;block_num 2