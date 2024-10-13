(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var752 0)
(declare-sort var1783 0)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var752_stringValue/-689356382 (String) String)
(declare-fun var1402_getProperties/656610844 () var1783)
(declare-fun getProperty/1391780669 (var1783 String) String)
(define-const var2065 String (var752_stringValue/-689356382 "GRAMMAR_ENCODING")) ; Statement: $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING") 
(assert true)
(define-const var2135 Bool (= var2065 "")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING") 
(assert (not (= (ite var2135 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1698 var1783 var1402_getProperties/656610844) ; Statement: $r2 = staticinvoke <java.lang.System: java.util.Properties getProperties()>() 
(assert true)
(define-const var3809 String (getProperty/1391780669 var1698 "file.encoding")) ; Statement: $r3 = virtualinvoke $r2.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("file.encoding") 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var752_stringValue/-689356382=([java.lang.String], java.lang.String), var1402_getProperties/656610844=([], java.util.Properties), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String)}
; {var752=org.javacc.parser.Options, var2065=$r0, var2135=$z0, var1783=java.util.Properties, var1402=java.lang.System, var1698=$r2, var3809=$r3}
; {org.javacc.parser.Options=var752, $r0=var2065, $z0=var2135, java.util.Properties=var1783, java.lang.System=var1402, $r2=var1698, $r3=var3809}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING");	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("GRAMMAR_ENCODING");	$r2 = staticinvoke <java.lang.System: java.util.Properties getProperties()>();	$r3 = virtualinvoke $r2.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("file.encoding");	return $r3
;block_num 2