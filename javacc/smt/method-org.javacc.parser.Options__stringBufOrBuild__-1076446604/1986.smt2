(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3593_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var3593_getOutputLanguage/-1523304050 () String)
(define-const var2581 Bool var3593_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var2581 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3330 String var3593_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var1112 Bool (= var3330 "c++")) ; Statement: $z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.RuntimeException 
(assert (not (= (ite var1112 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "StringBuffer" 
(check-sat)
(get-model)
(get-unsat-core)
; {var3593_isOutputLanguageJava/1735442213=([], boolean), var3593_getOutputLanguage/-1523304050=([], java.lang.String)}
; {var3593=org.javacc.parser.Options, var2581=$z0, var3330=$r0, var1112=$z1}
; {org.javacc.parser.Options=var3593, $z0=var2581, $r0=var3330, $z1=var1112}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r1 = new java.lang.RuntimeException;	return "StringBuffer"
;block_num 3