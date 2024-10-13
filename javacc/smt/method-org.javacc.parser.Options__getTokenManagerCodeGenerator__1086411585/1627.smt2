(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3139_stringValue/-689356382 (String) String)
(define-const var2116 String (var3139_stringValue/-689356382 "TOKEN_MANAGER_CODE_GENERATOR")) ; Statement: r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_CODE_GENERATOR") 
(assert true)
(define-const var903 Bool (= var2116 "")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (= (ite var903 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3930 String var2116) ; Statement: $r1 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3139_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var3139=org.javacc.parser.Options, var2116=r0, var903=$z0, var3930=$r1}
; {org.javacc.parser.Options=var3139, r0=var2116, $z0=var903, $r1=var3930}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_CODE_GENERATOR");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = r0;	$r1 = r0;	return $r1
;block_num 3