(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var449 0)
(declare-sort var2632 0)
(declare-sort var437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var449) Bool)
(declare-fun var437_checkArgument/1735511034 (Bool) void)
(declare-fun getNext/-860917720 (var449) var449)
(declare-const null-var2129 var2129)
(declare-const null-var449 var449)
(declare-const null-String String)
(declare-const var83 var2129) ; Statement: r4 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var83 null-var2129)))
(declare-const var1191 var449) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1191 null-var449)))
(declare-const var2641 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2641 null-String)))
(declare-const var3143 var449) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var3143 null-var449)))
(assert true)
(define-const var2574 Bool (isCall/1872284454 var1191)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
;(assert (var437_checkArgument/1735511034 var2574)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var2574!1 Bool)
(assert true)
(define-const var3882 Bool (= var2641 "parseInt")) ; Statement: z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("parseInt") 
(assert true)
(define-const var297 var449 (getNext/-860917720 var3143)) ; Statement: r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(define-const var3177 Int 0) ; Statement: i5 = 0 
 ; Statement: if r3 == null goto $z2 = virtualinvoke r4.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean isNumericLiteral(com.google.javascript.rhino.Node)>(r2) 
(assert (not (= var297 null-var449))) ; Negate: Cond: r3 == null  
 ; Statement: if z1 != 0 goto $r9 = virtualinvoke r3.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (not (not (= (ite var3882 1 0) 0)))) ; Negate: Cond: z1 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), var437_checkArgument/1735511034=([boolean], void), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var2129=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var83=r4, var449=com.google.javascript.rhino.Node, var1191=r0, var2641=r1, var2632=null_type, var3143=r2, var2574=$z0, var437=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3882=z1, var297=r3, var3177=i5}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var2129, r4=var83, com.google.javascript.rhino.Node=var449, r0=var1191, r1=var2641, null_type=var2632, r2=var3143, $z0=var2574, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var437, z1=var3882, r3=var297, i5=var3177}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("parseInt");	r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	i5 = 0;	if r3 == null goto $z2 = virtualinvoke r4.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: boolean isNumericLiteral(com.google.javascript.rhino.Node)>(r2);	if z1 != 0 goto $r9 = virtualinvoke r3.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	return r0
;block_num 3