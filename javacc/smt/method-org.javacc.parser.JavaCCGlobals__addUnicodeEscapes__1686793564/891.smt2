(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var814 0)
(declare-sort var2778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2778_getOutputLanguage/-1523304050 () String)
(declare-const null-String String)
(declare-const var625 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var625 null-String)))
(define-const var3777 String var2778_getOutputLanguage/-1523304050) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert true)
(define-const var3674 Bool (= var3777 "c++")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++") 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
(assert (not (= (ite var3674 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2778_getOutputLanguage/-1523304050=([], java.lang.String)}
; {var625=r7, var814=null_type, var2778=org.javacc.parser.Options, var3777=$r0, var3674=$z0}
; {r7=var625, null_type=var814, org.javacc.parser.Options=var2778, $r0=var3777, $z0=var3674}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @parameter0: java.lang.String;	$r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("c++");	if $z0 == 0 goto $z1 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	return r7
;block_num 2