(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3848 0)
(declare-sort var805 0)
(declare-sort var3586 0)
(declare-sort var398 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var805) Bool)
(declare-fun var398_checkArgument/1735511034 (Bool) void)
(declare-fun isStringLit/305832528 (var805) Bool)
(declare-fun getString/-897720134 (var805) String)
(declare-fun getNext/-860917720 (var805) var805)
(declare-fun getSideEffectFreeStringValue/124010551 (var1226 var805) String)
(declare-fun cast-from-var3848-to-var1226 (var3848) var1226)
(declare-const null-var3848 var3848)
(declare-const null-var805 var805)
(declare-const null-String String)
(declare-const var1242 var3848) ; Statement: r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var1242 null-var3848)))
(declare-const var184 var805) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var184 null-var805)))
(declare-const var1683 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1683 null-String)))
(declare-const var2307 var805) ; Statement: r1 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2307 null-var805)))
(declare-const var860 var805) ; Statement: r4 := @parameter3: com.google.javascript.rhino.Node 
(assert (not (= var860 null-var805)))
(assert true)
(define-const var3315 Bool (isCall/1872284454 var184)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
;(assert (var398_checkArgument/1735511034 var3315)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var3315!1 Bool)
(assert true)
(define-const var2899 Bool (isStringLit/305832528 var2307)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
;(assert (var398_checkArgument/1735511034 var2899)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var2899!1 Bool)
(assert true)
(define-const var2191 String (getString/-897720134 var2307)) ; Statement: r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var526 Bool (= var1683 "indexOf")) ; Statement: z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("indexOf") 
(assert true)
(define-const var3570 var805 (getNext/-860917720 var860)) ; Statement: r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
(define-const var1994 String (getSideEffectFreeStringValue/124010551 (cast-from-var3848-to-var1226 var1242) var860)) ; Statement: r7 = virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: java.lang.String getSideEffectFreeStringValue(com.google.javascript.rhino.Node)>(r4) 
 ; Statement: if r7 != null goto (branch) 
(assert (not (not (= var1994 null-String)))) ; Negate: Cond: r7 != null  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), var398_checkArgument/1735511034=([boolean], void), isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getSideEffectFreeStringValue/124010551=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], java.lang.String), cast-from-var3848-to-var1226=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods], com.google.javascript.jscomp.AbstractPeepholeOptimization)}
; {var3848=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var1242=r6, var805=com.google.javascript.rhino.Node, var184=r0, var1683=r3, var3586=null_type, var2307=r1, var860=r4, var3315=$z0, var398=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2899=$z1, var2191=r2, var526=z2, var3570=r5, var1226=com.google.javascript.jscomp.AbstractPeepholeOptimization, var1994=r7}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var3848, r6=var1242, com.google.javascript.rhino.Node=var805, r0=var184, r3=var1683, null_type=var3586, r1=var2307, r4=var860, $z0=var3315, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var398, $z1=var2899, r2=var2191, z2=var526, r5=var3570, com.google.javascript.jscomp.AbstractPeepholeOptimization=var1226, r7=var1994}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r0 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: java.lang.String;	r1 := @parameter2: com.google.javascript.rhino.Node;	r4 := @parameter3: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isStringLit()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("indexOf");	r5 = virtualinvoke r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	r7 = virtualinvoke r6.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: java.lang.String getSideEffectFreeStringValue(com.google.javascript.rhino.Node)>(r4);	if r7 != null goto (branch);	return r0
;block_num 2