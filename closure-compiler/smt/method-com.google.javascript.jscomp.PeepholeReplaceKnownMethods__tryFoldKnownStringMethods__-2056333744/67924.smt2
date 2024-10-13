(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1817 0)
(declare-sort var782 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var782) Bool)
(declare-fun var2370_checkArgument/1735511034 (Bool) void)
(declare-fun getFirstChild/2090828207 (var782) var782)
(declare-fun isStringLit/305832528 (var782) Bool)
(declare-fun getString/-897720134 (var782) String)
(declare-fun getNext/-860917720 (var782) var782)
(declare-fun useTypes/-916222010 (var1817) Bool)
(declare-const null-var1817 var1817)
(declare-const null-var782 var782)
(declare-const var534 var1817) ; Statement: r2 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var534 null-var1817)))
(declare-const var278 var782) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var278 null-var782)))
(declare-const var2610 var782) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2610 null-var782)))
(assert true)
(define-const var3227 Bool (isCall/1872284454 var278)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
 ; Statement: if $z0 == 0 goto $z21 = 0 
(assert (= (ite var3227 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2534 Bool (ite (= 1 0) true false)) ; Statement: $z21 = 0 
(assert true) ; Non Conditional
;(assert (var2370_checkArgument/1735511034 var2534)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z21) 

(declare-const var2534!1 Bool)
(assert true)
(define-const var2245 var782 (getFirstChild/2090828207 var2610)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var3202 Bool (isStringLit/305832528 var2245)) ; Statement: $z22 = virtualinvoke $r20.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
(assert true)
(define-const var837 String (getString/-897720134 var2610)) ; Statement: $r21 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1748 var782 (getNext/-860917720 var2610)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
 ; Statement: if $z22 == 0 goto $z23 = r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean useTypes> 
(assert (= (ite var3202 1 0) 0)) ; Cond: $z22 == 0 
(define-const var2814 Bool (useTypes/-916222010 var534)) ; Statement: $z23 = r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean useTypes> 
 ; Statement: if $z23 == 0 goto return r0 
(assert (= (ite var2814 1 0) 0)) ; Cond: $z23 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), var2370_checkArgument/1735511034=([boolean], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), useTypes/-916222010=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods], boolean)}
; {var1817=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var534=r2, var782=com.google.javascript.rhino.Node, var278=r0, var2610=r1, var3227=$z0, var2534=$z21, var2370=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2245=$r20, var3202=$z22, var837=$r21, var1748=$r22, var2814=$z23}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var1817, r2=var534, com.google.javascript.rhino.Node=var782, r0=var278, r1=var2610, $z0=var3227, $z21=var2534, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2370, $r20=var2245, $z22=var3202, $r21=var837, $r22=var1748, $z23=var2814}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	if $z0 == 0 goto $z21 = 0;	$z21 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z21);	$r20 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z22 = virtualinvoke $r20.<com.google.javascript.rhino.Node: boolean isStringLit()>();	$r21 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	if $z22 == 0 goto $z23 = r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean useTypes>;	$z23 = r2.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean useTypes>;	if $z23 == 0 goto return r0;	return r0
;block_num 5