(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2081 0)
(declare-sort var413 0)
(declare-sort var3322 0)
(declare-sort var609 0)
(declare-sort var1182 0)
(declare-sort var3432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printLocalVariableConversion/1292819794 (var2081 var3322) void)
(declare-fun cast-from-var413-to-var3322 (var413) var3322)
(declare-fun isDoWhile/-761619174 (var413) Bool)
(declare-fun sb/709861400 (var2081) String)
(declare-fun printTypes/709861400 (var2081) Bool)
(declare-fun toString/1110857014 (var413 String Bool) void)
(declare-fun getBody/-1546809675 (var413) var609)
(declare-fun accept/-1193142580 (var609 var1182) var3432)
(declare-fun cast-from-var2081-to-var1182 (var2081) var1182)
(declare-const null-var2081 var2081)
(declare-const null-var413 var413)
(declare-const var728 var2081) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var728 null-var2081)))
(declare-const var692 var413) ; Statement: r1 := @parameter0: jdk.nashorn.internal.ir.WhileNode 
(assert (not (= var692 null-var413)))
(assert true)
;(assert (printLocalVariableConversion/1292819794 var728 (cast-from-var413-to-var3322 var692))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>(r1) 

(declare-const var728!1 var2081)
(declare-const var692!1 var413)
(assert true)
(define-const var337 Bool (isDoWhile/-761619174 var692!1)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: boolean isDoWhile()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert (= (ite var337 1 0) 0)) ; Cond: $z0 == 0 
(define-const var775 String (sb/709861400 var728!1)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var470 Bool (printTypes/709861400 var728!1)) ; Statement: $z1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> 
(assert true)
;(assert (toString/1110857014 var692!1 var775 var470)) ; Statement: virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: void toString(java.lang.StringBuilder,boolean)>($r2, $z1) 

(declare-const var692!2 var413)
(declare-const var775!1 String)
(declare-const var470!1 Bool)
(assert true)
(define-const var2528 var609 (getBody/-1546809675 var692!2)) ; Statement: $r3 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: jdk.nashorn.internal.ir.Block getBody()>() 
(assert true)
;(assert (accept/-1193142580 var2528 (cast-from-var2081-to-var1182 var728!1))) ; Statement: virtualinvoke $r3.<jdk.nashorn.internal.ir.Block: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0) 

(declare-const var2528!1 var609)
(declare-const var728!2 var2081)
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {printLocalVariableConversion/1292819794=([jdk.nashorn.internal.ir.debug.PrintVisitor, jdk.nashorn.internal.ir.JoinPredecessor], void), cast-from-var413-to-var3322=([jdk.nashorn.internal.ir.WhileNode], jdk.nashorn.internal.ir.JoinPredecessor), isDoWhile/-761619174=([jdk.nashorn.internal.ir.WhileNode], boolean), sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), printTypes/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean), toString/1110857014=([jdk.nashorn.internal.ir.WhileNode, java.lang.StringBuilder, boolean], void), getBody/-1546809675=([jdk.nashorn.internal.ir.WhileNode], jdk.nashorn.internal.ir.Block), accept/-1193142580=([jdk.nashorn.internal.ir.Block, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.Node), cast-from-var2081-to-var1182=([jdk.nashorn.internal.ir.debug.PrintVisitor], jdk.nashorn.internal.ir.visitor.NodeVisitor)}
; {var2081=jdk.nashorn.internal.ir.debug.PrintVisitor, var728=r0, var413=jdk.nashorn.internal.ir.WhileNode, var692=r1, var3322=jdk.nashorn.internal.ir.JoinPredecessor, var337=$z0, var775=$r2, var470=$z1, var609=jdk.nashorn.internal.ir.Block, var2528=$r3, var1182=jdk.nashorn.internal.ir.visitor.NodeVisitor, var3432=jdk.nashorn.internal.ir.Node}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2081, r0=var728, jdk.nashorn.internal.ir.WhileNode=var413, r1=var692, jdk.nashorn.internal.ir.JoinPredecessor=var3322, $z0=var337, $r2=var775, $z1=var470, jdk.nashorn.internal.ir.Block=var609, $r3=var2528, jdk.nashorn.internal.ir.visitor.NodeVisitor=var1182, jdk.nashorn.internal.ir.Node=var3432}
;seq <jdk.nashorn.internal.ir.WhileNode: void toString(java.lang.StringBuilder,boolean)>
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r1 := @parameter0: jdk.nashorn.internal.ir.WhileNode;	specialinvoke r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: void printLocalVariableConversion(jdk.nashorn.internal.ir.JoinPredecessor)>(r1);	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: boolean isDoWhile()>();	if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r2 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$z1 = r0.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes>;	virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: void toString(java.lang.StringBuilder,boolean)>($r2, $z1);	$r3 = virtualinvoke r1.<jdk.nashorn.internal.ir.WhileNode: jdk.nashorn.internal.ir.Block getBody()>();	virtualinvoke $r3.<jdk.nashorn.internal.ir.Block: jdk.nashorn.internal.ir.Node accept(jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0);	return 0
;block_num 3