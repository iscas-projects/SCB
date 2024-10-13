(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var457 0)
(declare-sort var973 0)
(declare-sort var2067 0)
(declare-sort var2439 0)
(declare-sort var1670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var973) Bool)
(declare-fun var2067_checkArgument/1735511034 (Bool) void)
(declare-fun getString/-897720134 (var973) String)
(declare-fun removeFirstChild/-176146663 (var973) var973)
(declare-fun var973-init () var973)
(declare-fun <init>/-171470918 (var973 var2439) void)
(declare-fun removeChildren/1141553798 (var973) var973)
(declare-fun addChildrenToBack/51036869 (var973 var973) void)
(declare-fun replaceWith/-1153548851 (var973 var973) void)
(declare-fun reportChangeToEnclosingScope/561508277 (var1670 var973) void)
(declare-fun cast-from-var457-to-var1670 (var457) var1670)
(declare-const null-var457 var457)
(declare-const null-var973 var973)
(declare-const var2439-ARRAYLIT var2439)
(declare-const var2335 var457) ; Statement: r5 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var2335 null-var457)))
(declare-const var30 var973) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var30 null-var973)))
(declare-const var3267 var973) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3267 null-var973)))
(assert true)
(define-const var1656 Bool (isCall/1872284454 var30)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var1656 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3754 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2067_checkArgument/1735511034 var3754)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2) 

(declare-const var3754!1 Bool)
(assert true)
(define-const var991 String (getString/-897720134 var3267)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2193 Bool (= var991 "of")) ; Statement: $z3 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("of") 
 ; Statement: if $z3 != 0 goto virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeFirstChild()>() 
(assert (not (= (ite var2193 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (removeFirstChild/-176146663 var30)) ; Statement: virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeFirstChild()>() 

(declare-const var30!1 var973)
(define-const var2752 var973 var973-init) ; Statement: $r2 = new com.google.javascript.rhino.Node 
(define-const var3842 var2439 var2439-ARRAYLIT) ; Statement: $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ARRAYLIT> 
(assert true)
;(assert (<init>/-171470918 var2752 var3842)) ; Statement: specialinvoke $r2.<com.google.javascript.rhino.Node: void <init>(com.google.javascript.rhino.Token)>($r3) 

(declare-const var2752!1 var973)
(declare-const var3842!1 var2439)
(assert true)
(define-const var1636 var973 (removeChildren/1141553798 var30!1)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeChildren()>() 
(assert true)
;(assert (addChildrenToBack/51036869 var2752!1 var1636)) ; Statement: virtualinvoke $r2.<com.google.javascript.rhino.Node: void addChildrenToBack(com.google.javascript.rhino.Node)>($r4) 

(declare-const var2752!2 var973)
(declare-const var1636!1 var973)
(assert true)
;(assert (replaceWith/-1153548851 var30!1 var2752!2)) ; Statement: virtualinvoke r0.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>($r2) 

(declare-const var30!2 var973)
(declare-const var2752!3 var973)
(assert true)
;(assert (reportChangeToEnclosingScope/561508277 (cast-from-var457-to-var1670 var2335) var2752!3)) ; Statement: virtualinvoke r5.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>($r2) 

(declare-const var2335!1 var457)
(declare-const var2752!4 var973)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), var2067_checkArgument/1735511034=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), removeFirstChild/-176146663=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var973-init=([], com.google.javascript.rhino.Node), <init>/-171470918=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Token], void), removeChildren/1141553798=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), addChildrenToBack/51036869=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), replaceWith/-1153548851=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), reportChangeToEnclosingScope/561508277=([com.google.javascript.jscomp.AbstractPeepholeOptimization, com.google.javascript.rhino.Node], void), cast-from-var457-to-var1670=([com.google.javascript.jscomp.PeepholeReplaceKnownMethods], com.google.javascript.jscomp.AbstractPeepholeOptimization)}
; {var457=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var2335=r5, var973=com.google.javascript.rhino.Node, var30=r0, var3267=r1, var1656=$z0, var3754=$z2, var2067=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var991=$r6, var2193=$z3, var2752=$r2, var2439=com.google.javascript.rhino.Token, var3842=$r3, var1636=$r4, var1670=com.google.javascript.jscomp.AbstractPeepholeOptimization}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var457, r5=var2335, com.google.javascript.rhino.Node=var973, r0=var30, r1=var3267, $z0=var1656, $z2=var3754, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2067, $r6=var991, $z3=var2193, $r2=var2752, com.google.javascript.rhino.Token=var2439, $r3=var3842, $r4=var1636, com.google.javascript.jscomp.AbstractPeepholeOptimization=var1670}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2);	$r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("of");	if $z3 != 0 goto virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeFirstChild()>();	virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeFirstChild()>();	$r2 = new com.google.javascript.rhino.Node;	$r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ARRAYLIT>;	specialinvoke $r2.<com.google.javascript.rhino.Node: void <init>(com.google.javascript.rhino.Token)>($r3);	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeChildren()>();	virtualinvoke $r2.<com.google.javascript.rhino.Node: void addChildrenToBack(com.google.javascript.rhino.Node)>($r4);	virtualinvoke r0.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>($r2);	virtualinvoke r5.<com.google.javascript.jscomp.PeepholeReplaceKnownMethods: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>($r2);	return $r2
;block_num 4