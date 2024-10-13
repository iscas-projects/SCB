(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var841_stringValue/-689356382 (String) String)
(declare-const null-String String)
(define-const var2045 String (var841_stringValue/-689356382 "TOKEN_MANAGER_CODE_GENERATOR")) ; Statement: r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_CODE_GENERATOR") 
(assert true)
(define-const var3787 Bool (= var2045 "")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (not (= (ite var3787 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var773 String null-String) ; Statement: $r1 = null 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var841_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var841=org.javacc.parser.Options, var2045=r0, var3787=$z0, var1911=null_type, var773=$r1}
; {org.javacc.parser.Options=var841, r0=var2045, $z0=var3787, null_type=var1911, $r1=var773}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("TOKEN_MANAGER_CODE_GENERATOR");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = r0;	$r1 = null;	goto [?= return $r1];	return $r1
;block_num 3