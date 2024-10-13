(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1086 0)
(declare-sort var1377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var1377) String)
(declare-const null-var1086 var1086)
(declare-const null-var1377 var1377)
(declare-const var2063 var1086) ; Statement: r5 := @this: com.google.javascript.jscomp.StrictModeCheck$NonExternChecks 
(assert (not (= var2063 null-var1086)))
(declare-const var1783 var1377) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1783 null-var1377)))
(define-const var127 String "eval") ; Statement: $r2 = "eval" 
(assert true)
(define-const var2777 String (getString/-897720134 var1783)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1174 Bool (= var127 var2777)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "arguments" 
(assert (= (ite var1174 1 0) 0)) ; Cond: $z0 == 0 
(define-const var169 String "arguments") ; Statement: $r4 = "arguments" 
(assert true)
(define-const var2620 String (getString/-897720134 var1783)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1551 Bool (= var169 var2620)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1551 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1086=com.google.javascript.jscomp.StrictModeCheck$NonExternChecks, var2063=r5, var1377=com.google.javascript.rhino.Node, var1783=r0, var127=$r2, var2777=$r1, var1174=$z0, var169=$r4, var2620=$r3, var1551=$z1}
; {com.google.javascript.jscomp.StrictModeCheck$NonExternChecks=var1086, r5=var2063, com.google.javascript.rhino.Node=var1377, r0=var1783, $r2=var127, $r1=var2777, $z0=var1174, $r4=var169, $r3=var2620, $z1=var1551}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r5 := @this: com.google.javascript.jscomp.StrictModeCheck$NonExternChecks;	r0 := @parameter0: com.google.javascript.rhino.Node;	$r2 = "eval";	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "arguments";	$r4 = "arguments";	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto return;	return
;block_num 3