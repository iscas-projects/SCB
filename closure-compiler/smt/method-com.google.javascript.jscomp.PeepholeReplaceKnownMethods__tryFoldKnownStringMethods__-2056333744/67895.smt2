(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var744 0)
(declare-sort var792 0)
(declare-sort var2122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var792) Bool)
(declare-fun var2122_checkArgument/1735511034 (Bool) void)
(declare-fun getFirstChild/2090828207 (var792) var792)
(declare-fun isStringLit/305832528 (var792) Bool)
(declare-fun getString/-897720134 (var792) String)
(declare-fun getNext/-860917720 (var792) var792)
(declare-fun tryFoldStringSplit/-1421433918 (var744 var792 var792 var792) var792)
(declare-const null-var744 var744)
(declare-const null-var792 var792)
(declare-const var1208 var744) ; Statement: r2 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var1208 null-var744)))
(declare-const var739 var792) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var739 null-var792)))
(declare-const var3133 var792) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3133 null-var792)))
(assert true)
(define-const var332 Bool (isCall/1872284454 var739)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
 ; Statement: if $z0 == 0 goto $z21 = 0 
(assert (= (ite var332 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3880 Bool (ite (= 1 0) true false)) ; Statement: $z21 = 0 
(assert true) ; Non Conditional
;(assert (var2122_checkArgument/1735511034 var3880)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z21) 

(declare-const var3880!1 Bool)
(assert true)
(define-const var801 var792 (getFirstChild/2090828207 var3133)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var3186 Bool (isStringLit/305832528 var801)) ; Statement: $z22 = virtualinvoke $r20.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
(assert true)
(define-const var3926 String (getString/-897720134 var3133)) ; Statement: $r21 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var132 var792 (getNext/-860917720 var3133)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
 ; Statement: if $z22 == 0 goto $z23 = r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean useTypes> 
(assert (not (= (ite var3186 1 0) 0))) ; Negate: Cond: $z22 == 0  
(assert true)
(define-const var3349 Bool (= var3926 "split")) ; Statement: $z6 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>("split") 
 ; Statement: if $z6 == 0 goto (branch) 
(assert (not (= (ite var3349 1 0) 0))) ; Negate: Cond: $z6 == 0  
(assert true)
(define-const var2832 var792 (tryFoldStringSplit/-1421433918 var1208 var739 var801 var132)) ; Statement: $r19 = virtualinvoke r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: com.google.javascript.rhino.Node tryFoldStringSplit(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>(r0, $r20, $r22) 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), var2122_checkArgument/1735511034=([boolean], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), tryFoldStringSplit/-1421433918=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var744=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var1208=r2, var792=com.google.javascript.rhino.Node, var739=r0, var3133=r1, var332=$z0, var3880=$z21, var2122=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var801=$r20, var3186=$z22, var3926=$r21, var132=$r22, var3349=$z6, var2832=$r19}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var744, r2=var1208, com.google.javascript.rhino.Node=var792, r0=var739, r1=var3133, $z0=var332, $z21=var3880, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2122, $r20=var801, $z22=var3186, $r21=var3926, $r22=var132, $z6=var3349, $r19=var2832}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	if $z0 == 0 goto $z21 = 0;	$z21 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z21);	$r20 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z22 = virtualinvoke $r20.<com.google.javascript.rhino.Node: boolean isStringLit()>();	$r21 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	if $z22 == 0 goto $z23 = r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean useTypes>;	$z6 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>("split");	if $z6 == 0 goto (branch);	$r19 = virtualinvoke r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: com.google.javascript.rhino.Node tryFoldStringSplit(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>(r0, $r20, $r22);	return $r19
;block_num 5