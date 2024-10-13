(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2713_stringValue/-689356382 (String) String)
(declare-const null-String String)
(define-const var1257 String (var2713_stringValue/-689356382 "PARSER_CODE_GENERATOR")) ; Statement: r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("PARSER_CODE_GENERATOR") 
(assert true)
(define-const var853 Bool (= var1257 "")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (not (= (ite var853 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1002 String null-String) ; Statement: $r1 = null 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2713_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var2713=org.javacc.parser.Options, var1257=r0, var853=$z0, var3654=null_type, var1002=$r1}
; {org.javacc.parser.Options=var2713, r0=var1257, $z0=var853, null_type=var3654, $r1=var1002}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("PARSER_CODE_GENERATOR");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = r0;	$r1 = null;	goto [?= return $r1];	return $r1
;block_num 3