(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1871 0)
(declare-sort var3432 0)
(declare-sort var3632 0)
(declare-sort var3080 0)
(declare-sort var3877 0)
(declare-sort var3193 0)
(declare-sort var3515 0)
(declare-sort var2424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var3432) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3080_checkState/1633726539 (Bool var3877) void)
(declare-fun cast-from-var3432-to-var3877 (var3432) var3877)
(declare-fun arrowFunctionNeedsParens/1851993738 (var1871 var3432) Bool)
(declare-fun maybeAddGenericTypes/-312415498 (var1871 var3432) void)
(declare-fun isAsyncFunction/-1316971166 (var3432) Bool)
(declare-fun getNext/-860917720 (var3432) var3432)
(declare-fun add/1049372498 (var1871 var3432) void)
(declare-fun maybeAddTypeDecl/-1456012140 (var1871 var3432) void)
(declare-fun cc/223109865 (var1871) var3193)
(declare-fun addOp/1409586206 (var3193 String Bool) void)
(declare-fun isBlock/1715609001 (var3432) Bool)
(declare-fun var2424_precedence/1814393881 (var3515) Int)
(declare-fun var1871_getContextForArrowFunctionBody/1724422653 (var3632) var3632)
(declare-fun addExpr/1187548138 (var1871 var3432 Int var3632) void)
(declare-fun endFunction/-1193118010 (var3193 Bool) void)
(declare-const null-var1871 var1871)
(declare-const null-var3432 var3432)
(declare-const null-var3632 var3632)
(declare-const var3515-COMMA var3515)
(declare-const var3632-STATEMENT var3632)
(declare-const var924 var1871) ; Statement: r2 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var924 null-var1871)))
(declare-const var491 var3432) ; Statement: r3 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var491 null-var3432)))
(declare-const var3259 var3432) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3259 null-var3432)))
(declare-const var3995 var3432) ; Statement: r6 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var3995 null-var3432)))
(declare-const var576 var3632) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context 
(assert (not (= var576 null-var3632)))
(assert true)
(define-const var1305 String (getString/-897720134 var3259)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3826 Bool (isEmpty/-1285796103 var1305)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
;(assert (var3080_checkState/1633726539 var3826 (cast-from-var3432-to-var3877 var3259))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0) 

(declare-const var3826!1 Bool)
(declare-const var3259!1 var3432)
(assert true)
(define-const var1164 Bool (arrowFunctionNeedsParens/1851993738 var924 var491)) ; Statement: z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3) 
 ; Statement: if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 
(assert (= (ite var1164 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (maybeAddGenericTypes/-312415498 var924 var3259!1)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 

(declare-const var924!1 var1871)
(declare-const var3259!2 var3432)
(assert true)
(define-const var872 Bool (isAsyncFunction/-1316971166 var491)) ; Statement: $z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>() 
 ; Statement: if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (= (ite var872 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3055 var3432 (getNext/-860917720 var3259!2)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
;(assert (add/1049372498 var924!1 var3055)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4) 

(declare-const var924!2 var1871)
(declare-const var3055!1 var3432)
(assert true)
;(assert (maybeAddTypeDecl/-1456012140 var924!2 var491)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3) 

(declare-const var924!3 var1871)
(declare-const var491!1 var3432)
(define-const var3947 var3193 (cc/223109865 var924!3)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(assert true)
;(assert (addOp/1409586206 var3947 "=>" (ite (= 1 1) true false))) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1) 

(declare-const var3947!1 var3193)
(declare-const var295 String)
(declare-const var3718 Int)
(assert true)
(define-const var3314 Bool (isBlock/1715609001 var3995)) ; Statement: $z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>() 
 ; Statement: if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA> 
(assert (= (ite var3314 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2474 var3515 var3515-COMMA) ; Statement: $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA> 
(define-const var487 Int (var2424_precedence/1814393881 var2474)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: int precedence(com.google.javascript.rhino.Token)>($r7) 
(define-const var2755 Int (+ var487 1)) ; Statement: $i1 = $i0 + 1 
(define-const var2460 var3632 (var1871_getContextForArrowFunctionBody/1724422653 var576)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeGenerator$Context getContextForArrowFunctionBody(com.google.javascript.jscomp.CodeGenerator$Context)>(r8) 
(assert true)
;(assert (addExpr/1187548138 var924!3 var3995 var2755 var2460)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void addExpr(com.google.javascript.rhino.Node,int,com.google.javascript.jscomp.CodeGenerator$Context)>(r6, $i1, $r9) 

(declare-const var924!4 var1871)
(declare-const var3995!1 var3432)
(declare-const var2755!1 Int)
(declare-const var2460!1 var3632)
(assert true) ; Non Conditional
(define-const var2977 var3193 (cc/223109865 var924!4)) ; Statement: $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(define-const var72 var3632 var3632-STATEMENT) ; Statement: $r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT> 
 ; Statement: if r8 != $r10 goto $z4 = 0 
(assert (not (not (= var576 var72)))) ; Negate: Cond: r8 != $r10  
(define-const var402 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4)] 
(assert true) ; Non Conditional
(assert true)
;(assert (endFunction/-1193118010 var2977 var402)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4) 

(declare-const var2977!1 var3193)
(declare-const var402!1 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var1164 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var3080_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-var3432-to-var3877=([com.google.javascript.rhino.Node], java.lang.Object), arrowFunctionNeedsParens/1851993738=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], boolean), maybeAddGenericTypes/-312415498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), isAsyncFunction/-1316971166=([com.google.javascript.rhino.Node], boolean), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), add/1049372498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), maybeAddTypeDecl/-1456012140=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), cc/223109865=([com.google.javascript.jscomp.CodeGenerator], com.google.javascript.jscomp.CodeConsumer), addOp/1409586206=([com.google.javascript.jscomp.CodeConsumer, java.lang.String, boolean], void), isBlock/1715609001=([com.google.javascript.rhino.Node], boolean), var2424_precedence/1814393881=([com.google.javascript.rhino.Token], int), var1871_getContextForArrowFunctionBody/1724422653=([com.google.javascript.jscomp.CodeGenerator$Context], com.google.javascript.jscomp.CodeGenerator$Context), addExpr/1187548138=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node, int, com.google.javascript.jscomp.CodeGenerator$Context], void), endFunction/-1193118010=([com.google.javascript.jscomp.CodeConsumer, boolean], void)}
; {var1871=com.google.javascript.jscomp.CodeGenerator, var924=r2, var3432=com.google.javascript.rhino.Node, var491=r3, var3259=r0, var3995=r6, var3632=com.google.javascript.jscomp.CodeGenerator$Context, var576=r8, var1305=$r1, var3826=$z0, var3080=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3877=java.lang.Object, var1164=z1, var872=$z2, var3055=$r4, var3193=com.google.javascript.jscomp.CodeConsumer, var3947=$r5, var295="=>", var3718=1, var3314=$z3, var3515=com.google.javascript.rhino.Token, var2474=$r7, var2424=com.google.javascript.jscomp.NodeUtil, var487=$i0, var2755=$i1, var2460=$r9, var2977=$r11, var72=$r10, var402=$z4}
; {com.google.javascript.jscomp.CodeGenerator=var1871, r2=var924, com.google.javascript.rhino.Node=var3432, r3=var491, r0=var3259, r6=var3995, com.google.javascript.jscomp.CodeGenerator$Context=var3632, r8=var576, $r1=var1305, $z0=var3826, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3080, java.lang.Object=var3877, z1=var1164, $z2=var872, $r4=var3055, com.google.javascript.jscomp.CodeConsumer=var3193, $r5=var3947, "=>"=var295, 1=var3718, $z3=var3314, com.google.javascript.rhino.Token=var3515, $r7=var2474, com.google.javascript.jscomp.NodeUtil=var2424, $i0=var487, $i1=var2755, $r9=var2460, $r11=var2977, $r10=var72, $z4=var402}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodeGenerator;	r3 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	r6 := @parameter2: com.google.javascript.rhino.Node;	r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0);	z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3);	if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	$z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>();	if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3);	$r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1);	$z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>();	if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;	$r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;	$i0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: int precedence(com.google.javascript.rhino.Token)>($r7);	$i1 = $i0 + 1;	$r9 = staticinvoke <com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeGenerator$Context getContextForArrowFunctionBody(com.google.javascript.jscomp.CodeGenerator$Context)>(r8);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void addExpr(com.google.javascript.rhino.Node,int,com.google.javascript.jscomp.CodeGenerator$Context)>(r6, $i1, $r9);	$r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	$r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT>;	if r8 != $r10 goto $z4 = 0;	$z4 = 1;	goto [?= virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4)];	virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4);	if z1 == 0 goto return;	return
;block_num 8