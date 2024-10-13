(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1917_isOutputLanguageJava/1735442213 () Bool)
(declare-fun var1917_getOutputLanguage/-1523304050 () String)
(define-const var301 Bool var1917_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (= (ite var301 1 0) 0)) ; Cond: $z0 == 0 
(define-const var736 String var1917_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var1430 Bool (= var736 "c++")) ; Statement: $z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.RuntimeException 
(assert (not (= (ite var1430 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "bool" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1917_isOutputLanguageJava/1735442213=([], boolean), var1917_getOutputLanguage/-1523304050=([], java.lang.String)}
; {var1917=org.javacc.parser.Options, var301=$z0, var736=$r0, var1430=$z1}
; {org.javacc.parser.Options=var1917, $z0=var301, $r0=var736, $z1=var1430}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z1 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z1 == 0 goto $r1 = new java.lang.RuntimeException;	return "bool"
;block_num 3