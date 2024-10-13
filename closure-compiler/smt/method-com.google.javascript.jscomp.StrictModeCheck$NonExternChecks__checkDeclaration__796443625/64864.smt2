(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2187 0)
(declare-sort var275 0)
(declare-sort var566 0)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var275) String)
(declare-fun this$0/1624962035 (var2187) var566)
(declare-fun arr-String-init () (Array Int String))
(declare-fun report/-473559816 (var566 var275 var811 (Array Int String)) void)
(declare-const null-var2187 var2187)
(declare-const null-var275 var275)
(declare-const var566-EVAL_DECLARATION var811)
(declare-const var1814 var2187) ; Statement: r5 := @this: com.google.javascript.jscomp.StrictModeCheck$NonExternChecks 
(assert (not (= var1814 null-var2187)))
(declare-const var574 var275) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var574 null-var275)))
(define-const var2890 String "eval") ; Statement: $r2 = "eval" 
(assert true)
(define-const var1820 String (getString/-897720134 var574)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3478 Bool (= var2890 var1820)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "arguments" 
(assert (not (= (ite var3478 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2339 var566 (this$0/1624962035 var1814)) ; Statement: $r11 = r5.<com.google.javascript.jscomp.StrictModeCheck$NonExternChecks: com.google.javascript.jscomp.StrictModeCheck this$0> 
(define-const var1749 var811 var566-EVAL_DECLARATION) ; Statement: $r10 = <com.google.javascript.jscomp.StrictModeCheck: com.google.javascript.jscomp.DiagnosticType EVAL_DECLARATION> 
(define-const var494 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[0] 
(assert true)
;(assert (report/-473559816 var2339 var574 var1749 var494)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.StrictModeCheck: void report(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r0, $r10, $r9) 

(declare-const var2339!1 var566)
(declare-const var574!1 var275)
(declare-const var1749!1 var811)
(declare-const var494!1 (Array Int String))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), this$0/1624962035=([com.google.javascript.jscomp.StrictModeCheck$NonExternChecks], com.google.javascript.jscomp.StrictModeCheck), arr-String-init=([], java.lang.String[]), report/-473559816=([com.google.javascript.jscomp.StrictModeCheck, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], void)}
; {var2187=com.google.javascript.jscomp.StrictModeCheck$NonExternChecks, var1814=r5, var275=com.google.javascript.rhino.Node, var574=r0, var2890=$r2, var1820=$r1, var3478=$z0, var566=com.google.javascript.jscomp.StrictModeCheck, var2339=$r11, var811=com.google.javascript.jscomp.DiagnosticType, var1749=$r10, var494=$r9}
; {com.google.javascript.jscomp.StrictModeCheck$NonExternChecks=var2187, r5=var1814, com.google.javascript.rhino.Node=var275, r0=var574, $r2=var2890, $r1=var1820, $z0=var3478, com.google.javascript.jscomp.StrictModeCheck=var566, $r11=var2339, com.google.javascript.jscomp.DiagnosticType=var811, $r10=var1749, $r9=var494}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.StrictModeCheck$NonExternChecks;	r0 := @parameter0: com.google.javascript.rhino.Node;	$r2 = "eval";	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "arguments";	$r11 = r5.<com.google.javascript.jscomp.StrictModeCheck$NonExternChecks: com.google.javascript.jscomp.StrictModeCheck this$0>;	$r10 = <com.google.javascript.jscomp.StrictModeCheck: com.google.javascript.jscomp.DiagnosticType EVAL_DECLARATION>;	$r9 = newarray (java.lang.String)[0];	virtualinvoke $r11.<com.google.javascript.jscomp.StrictModeCheck: void report(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r0, $r10, $r9);	goto [?= return];	return
;block_num 3