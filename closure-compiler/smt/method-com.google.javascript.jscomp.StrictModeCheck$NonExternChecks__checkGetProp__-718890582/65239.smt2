(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2707 0)
(declare-sort var231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var231) var231)
(declare-fun getString/-897720134 (var231) String)
(declare-fun isName/-1249361959 (var231) Bool)
(declare-const null-var2707 var2707)
(declare-const null-var231 var231)
(declare-const var1259 var2707) ; Statement: r3 := @this: com.google.javascript.jscomp.StrictModeCheck$NonExternChecks 
(assert (not (= var1259 null-var2707)))
(declare-const var1537 var231) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1537 null-var231)))
(assert true)
(define-const var682 var231 (getFirstChild/2090828207 var1537)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var1301 String (getString/-897720134 var1537)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1319 Bool (= var1301 "callee")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("callee") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("caller") 
(assert (not (= (ite var1319 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1137 Bool (isName/-1249361959 var682)) ; Statement: $z7 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z7 == 0 goto return 
(assert (= (ite var1137 1 0) 0)) ; Cond: $z7 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isName/-1249361959=([com.google.javascript.rhino.Node], boolean)}
; {var2707=com.google.javascript.jscomp.StrictModeCheck$NonExternChecks, var1259=r3, var231=com.google.javascript.rhino.Node, var1537=r0, var682=r1, var1301=r2, var1319=$z0, var1137=$z7}
; {com.google.javascript.jscomp.StrictModeCheck$NonExternChecks=var2707, r3=var1259, com.google.javascript.rhino.Node=var231, r0=var1537, r1=var682, r2=var1301, $z0=var1319, $z7=var1137}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.StrictModeCheck$NonExternChecks;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("callee");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("caller");	$z7 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isName()>();	if $z7 == 0 goto return;	return
;block_num 3