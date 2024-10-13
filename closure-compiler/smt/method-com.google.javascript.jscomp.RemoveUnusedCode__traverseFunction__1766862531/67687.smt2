(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1440 0)
(declare-sort var1081 0)
(declare-sort var2443 0)
(declare-sort var1844 0)
(declare-sort var2549 0)
(declare-sort var2098 0)
(declare-sort var2416 0)
(declare-sort var2524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasXChildren/484948296 (var1081 Int) Bool)
(declare-fun var1844_checkState/1633726539 (Bool var2549) void)
(declare-fun cast-from-var1081-to-var2549 (var1081) var2549)
(declare-fun isFunction/-1932469268 (var1081) Bool)
(declare-fun var2098_getFunctionParameters/-1895765382 (var1081) var1081)
(declare-fun getLastChild/1278987161 (var1081) var1081)
(declare-fun getNext/-860917720 (var1081) var1081)
(declare-fun scopeCreator/494140964 (var1440) var2416)
(declare-fun createScope/-1479039545 (var2416 var1081 var2443) var2443)
(declare-fun getFirstChild/2090828207 (var1081) var1081)
(declare-fun getString/-897720134 (var1081) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun traverseNode/1134770541 (var1440 var1081 var2443) void)
(declare-fun traverseChildren/-605296726 (var1440 var1081 var2443) void)
(declare-fun allFunctionParamScopes/494140964 (var1440) var2524)
(declare-fun var2524_add/328494887 (var2524 var2549) Bool)
(declare-fun cast-from-var2443-to-var2549 (var2443) var2549)
(declare-const null-var1440 var1440)
(declare-const null-var1081 var1081)
(declare-const null-var2443 var2443)
(declare-const var1204 var1440) ; Statement: r4 := @this: com.google.javascript.jscomp.RemoveUnusedCode 
(assert (not (= var1204 null-var1440)))
(declare-const var355 var1081) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var355 null-var1081)))
(declare-const var3593 var2443) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.Scope 
(assert (not (= var3593 null-var2443)))
(assert true)
(define-const var2319 Bool (hasXChildren/484948296 var355 3)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasXChildren(int)>(3) 
;(assert (var1844_checkState/1633726539 var2319 (cast-from-var1081-to-var2549 var355))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0) 

(declare-const var2319!1 Bool)
(declare-const var355!1 var1081)
(assert true)
(define-const var210 Bool (isFunction/-1932469268 var355!1)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>() 
;(assert (var1844_checkState/1633726539 var210 (cast-from-var1081-to-var2549 var355!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z1, r0) 

(declare-const var210!1 Bool)
(declare-const var355!2 var1081)
(define-const var3571 var1081 (var2098_getFunctionParameters/-1895765382 var355!2)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node getFunctionParameters(com.google.javascript.rhino.Node)>(r0) 
(assert true)
(define-const var3777 var1081 (getLastChild/1278987161 var355!2)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var3180 var1081 (getNext/-860917720 var3777)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
 ; Statement: if $r3 != null goto $z4 = 0 
(assert (not (= var3180 null-var1081))) ; Cond: $r3 != null 
(define-const var2781 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
;(assert (var1844_checkState/1633726539 var2781 (cast-from-var1081-to-var2549 var3777))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, r2) 

(declare-const var2781!1 Bool)
(declare-const var3777!1 var1081)
(define-const var945 var2416 (scopeCreator/494140964 var1204)) ; Statement: $r7 = r4.<com.google.javascript.jscomp.RemoveUnusedCode: com.google.javascript.jscomp.SyntacticScopeCreator scopeCreator> 
(assert true)
(define-const var936 var2443 (createScope/-1479039545 var945 var355!2 var3593)) ; Statement: $r8 = virtualinvoke $r7.<com.google.javascript.jscomp.SyntacticScopeCreator: com.google.javascript.jscomp.Scope createScope(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r0, r5) 
(define-const var364 var2416 (scopeCreator/494140964 var1204)) ; Statement: $r9 = r4.<com.google.javascript.jscomp.RemoveUnusedCode: com.google.javascript.jscomp.SyntacticScopeCreator scopeCreator> 
(assert true)
(define-const var791 var2443 (createScope/-1479039545 var364 var3777!1 var936)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.jscomp.SyntacticScopeCreator: com.google.javascript.jscomp.Scope createScope(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r2, $r8) 
(assert true)
(define-const var1639 var1081 (getFirstChild/2090828207 var355!2)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var832 String (getString/-897720134 var1639)) ; Statement: $r12 = virtualinvoke $r11.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3658 Bool (isEmpty/-1285796103 var832)) ; Statement: $z5 = virtualinvoke $r12.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 != 0 goto virtualinvoke r4.<com.google.javascript.jscomp.RemoveUnusedCode: void traverseNode(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r1, $r8) 
(assert (not (= (ite var3658 1 0) 0))) ; Cond: $z5 != 0 
(assert true)
;(assert (traverseNode/1134770541 var1204 var3571 var936)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.RemoveUnusedCode: void traverseNode(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r1, $r8) 

(declare-const var1204!1 var1440)
(declare-const var3571!1 var1081)
(declare-const var936!1 var2443)
(assert true)
;(assert (traverseChildren/-605296726 var1204!1 var3777!1 var791)) ; Statement: virtualinvoke r4.<com.google.javascript.jscomp.RemoveUnusedCode: void traverseChildren(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r2, $r10) 

(declare-const var1204!2 var1440)
(declare-const var3777!2 var1081)
(declare-const var791!1 var2443)
(define-const var2183 var2524 (allFunctionParamScopes/494140964 var1204!2)) ; Statement: $r13 = r4.<com.google.javascript.jscomp.RemoveUnusedCode: java.util.List allFunctionParamScopes> 
;(assert (var2524_add/328494887 var2183 (cast-from-var2443-to-var2549 var936!1))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r8) 

(declare-const var2183!1 var2524)
(declare-const var936!2 var2443)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hasXChildren/484948296=([com.google.javascript.rhino.Node, int], boolean), var1844_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-var1081-to-var2549=([com.google.javascript.rhino.Node], java.lang.Object), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), var2098_getFunctionParameters/-1895765382=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), scopeCreator/494140964=([com.google.javascript.jscomp.RemoveUnusedCode], com.google.javascript.jscomp.SyntacticScopeCreator), createScope/-1479039545=([com.google.javascript.jscomp.SyntacticScopeCreator, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.Scope), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), traverseNode/1134770541=([com.google.javascript.jscomp.RemoveUnusedCode, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope], void), traverseChildren/-605296726=([com.google.javascript.jscomp.RemoveUnusedCode, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope], void), allFunctionParamScopes/494140964=([com.google.javascript.jscomp.RemoveUnusedCode], java.util.List), var2524_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2443-to-var2549=([com.google.javascript.jscomp.Scope], java.lang.Object)}
; {var1440=com.google.javascript.jscomp.RemoveUnusedCode, var1204=r4, var1081=com.google.javascript.rhino.Node, var355=r0, var2443=com.google.javascript.jscomp.Scope, var3593=r5, var2319=$z0, var1844=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2549=java.lang.Object, var210=$z1, var2098=com.google.javascript.jscomp.NodeUtil, var3571=r1, var3777=r2, var3180=$r3, var2781=$z4, var2416=com.google.javascript.jscomp.SyntacticScopeCreator, var945=$r7, var936=$r8, var364=$r9, var791=$r10, var1639=$r11, var832=$r12, var3658=$z5, var2524=java.util.List, var2183=$r13}
; {com.google.javascript.jscomp.RemoveUnusedCode=var1440, r4=var1204, com.google.javascript.rhino.Node=var1081, r0=var355, com.google.javascript.jscomp.Scope=var2443, r5=var3593, $z0=var2319, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1844, java.lang.Object=var2549, $z1=var210, com.google.javascript.jscomp.NodeUtil=var2098, r1=var3571, r2=var3777, $r3=var3180, $z4=var2781, com.google.javascript.jscomp.SyntacticScopeCreator=var2416, $r7=var945, $r8=var936, $r9=var364, $r10=var791, $r11=var1639, $r12=var832, $z5=var3658, java.util.List=var2524, $r13=var2183}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.RemoveUnusedCode;	r0 := @parameter0: com.google.javascript.rhino.Node;	r5 := @parameter1: com.google.javascript.jscomp.Scope;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasXChildren(int)>(3);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z1, r0);	r1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node getFunctionParameters(com.google.javascript.rhino.Node)>(r0);	r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	if $r3 != null goto $z4 = 0;	$z4 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, r2);	$r7 = r4.<com.google.javascript.jscomp.RemoveUnusedCode: com.google.javascript.jscomp.SyntacticScopeCreator scopeCreator>;	$r8 = virtualinvoke $r7.<com.google.javascript.jscomp.SyntacticScopeCreator: com.google.javascript.jscomp.Scope createScope(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r0, r5);	$r9 = r4.<com.google.javascript.jscomp.RemoveUnusedCode: com.google.javascript.jscomp.SyntacticScopeCreator scopeCreator>;	$r10 = virtualinvoke $r9.<com.google.javascript.jscomp.SyntacticScopeCreator: com.google.javascript.jscomp.Scope createScope(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r2, $r8);	$r11 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r12 = virtualinvoke $r11.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z5 = virtualinvoke $r12.<java.lang.String: boolean isEmpty()>();	if $z5 != 0 goto virtualinvoke r4.<com.google.javascript.jscomp.RemoveUnusedCode: void traverseNode(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r1, $r8);	virtualinvoke r4.<com.google.javascript.jscomp.RemoveUnusedCode: void traverseNode(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r1, $r8);	virtualinvoke r4.<com.google.javascript.jscomp.RemoveUnusedCode: void traverseChildren(com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope)>(r2, $r10);	$r13 = r4.<com.google.javascript.jscomp.RemoveUnusedCode: java.util.List allFunctionParamScopes>;	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r8);	return
;block_num 4