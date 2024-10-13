(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3061 0)
(declare-sort var221 0)
(declare-sort var1524 0)
(declare-sort var1840 0)
(declare-sort var469 0)
(declare-sort var1612 0)
(declare-sort var290 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var221) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1840_checkState/1633726539 (Bool var469) void)
(declare-fun cast-from-var221-to-var469 (var221) var469)
(declare-fun arrowFunctionNeedsParens/1851993738 (var3061 var221) Bool)
(declare-fun maybeAddGenericTypes/-312415498 (var3061 var221) void)
(declare-fun isAsyncFunction/-1316971166 (var221) Bool)
(declare-fun getNext/-860917720 (var221) var221)
(declare-fun add/1049372498 (var3061 var221) void)
(declare-fun maybeAddTypeDecl/-1456012140 (var3061 var221) void)
(declare-fun cc/223109865 (var3061) var1612)
(declare-fun addOp/1409586206 (var1612 String Bool) void)
(declare-fun isBlock/1715609001 (var221) Bool)
(declare-fun var665_precedence/1814393881 (var290) Int)
(declare-fun var3061_getContextForArrowFunctionBody/1724422653 (var1524) var1524)
(declare-fun addExpr/1187548138 (var3061 var221 Int var1524) void)
(declare-fun endFunction/-1193118010 (var1612 Bool) void)
(declare-const null-var3061 var3061)
(declare-const null-var221 var221)
(declare-const null-var1524 var1524)
(declare-const var290-COMMA var290)
(declare-const var1524-STATEMENT var1524)
(declare-const var3328 var3061) ; Statement: r2 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var3328 null-var3061)))
(declare-const var2888 var221) ; Statement: r3 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2888 null-var221)))
(declare-const var2297 var221) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2297 null-var221)))
(declare-const var2189 var221) ; Statement: r6 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2189 null-var221)))
(declare-const var3205 var1524) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context 
(assert (not (= var3205 null-var1524)))
(assert true)
(define-const var1182 String (getString/-897720134 var2297)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var131 Bool (isEmpty/-1285796103 var1182)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
;(assert (var1840_checkState/1633726539 var131 (cast-from-var221-to-var469 var2297))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0) 

(declare-const var131!1 Bool)
(declare-const var2297!1 var221)
(assert true)
(define-const var71 Bool (arrowFunctionNeedsParens/1851993738 var3328 var2888)) ; Statement: z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3) 
 ; Statement: if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 
(assert (= (ite var71 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (maybeAddGenericTypes/-312415498 var3328 var2297!1)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 

(declare-const var3328!1 var3061)
(declare-const var2297!2 var221)
(assert true)
(define-const var3964 Bool (isAsyncFunction/-1316971166 var2888)) ; Statement: $z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>() 
 ; Statement: if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (= (ite var3964 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1888 var221 (getNext/-860917720 var2297!2)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
;(assert (add/1049372498 var3328!1 var1888)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4) 

(declare-const var3328!2 var3061)
(declare-const var1888!1 var221)
(assert true)
;(assert (maybeAddTypeDecl/-1456012140 var3328!2 var2888)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3) 

(declare-const var3328!3 var3061)
(declare-const var2888!1 var221)
(define-const var3288 var1612 (cc/223109865 var3328!3)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(assert true)
;(assert (addOp/1409586206 var3288 "=>" (ite (= 1 1) true false))) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1) 

(declare-const var3288!1 var1612)
(declare-const var2534 String)
(declare-const var702 Int)
(assert true)
(define-const var2595 Bool (isBlock/1715609001 var2189)) ; Statement: $z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>() 
 ; Statement: if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA> 
(assert (= (ite var2595 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3557 var290 var290-COMMA) ; Statement: $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA> 
(define-const var2506 Int (var665_precedence/1814393881 var3557)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: int precedence(com.google.javascript.rhino.Token)>($r7) 
(define-const var1317 Int (+ var2506 1)) ; Statement: $i1 = $i0 + 1 
(define-const var693 var1524 (var3061_getContextForArrowFunctionBody/1724422653 var3205)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeGenerator$Context getContextForArrowFunctionBody(com.google.javascript.jscomp.CodeGenerator$Context)>(r8) 
(assert true)
;(assert (addExpr/1187548138 var3328!3 var2189 var1317 var693)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void addExpr(com.google.javascript.rhino.Node,int,com.google.javascript.jscomp.CodeGenerator$Context)>(r6, $i1, $r9) 

(declare-const var3328!4 var3061)
(declare-const var2189!1 var221)
(declare-const var1317!1 Int)
(declare-const var693!1 var1524)
(assert true) ; Non Conditional
(define-const var1586 var1612 (cc/223109865 var3328!4)) ; Statement: $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(define-const var124 var1524 var1524-STATEMENT) ; Statement: $r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT> 
 ; Statement: if r8 != $r10 goto $z4 = 0 
(assert (not (= var3205 var124))) ; Cond: r8 != $r10 
(define-const var323 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (endFunction/-1193118010 var1586 var323)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4) 

(declare-const var1586!1 var1612)
(declare-const var323!1 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var71 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1840_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-var221-to-var469=([com.google.javascript.rhino.Node], java.lang.Object), arrowFunctionNeedsParens/1851993738=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], boolean), maybeAddGenericTypes/-312415498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), isAsyncFunction/-1316971166=([com.google.javascript.rhino.Node], boolean), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), add/1049372498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), maybeAddTypeDecl/-1456012140=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), cc/223109865=([com.google.javascript.jscomp.CodeGenerator], com.google.javascript.jscomp.CodeConsumer), addOp/1409586206=([com.google.javascript.jscomp.CodeConsumer, java.lang.String, boolean], void), isBlock/1715609001=([com.google.javascript.rhino.Node], boolean), var665_precedence/1814393881=([com.google.javascript.rhino.Token], int), var3061_getContextForArrowFunctionBody/1724422653=([com.google.javascript.jscomp.CodeGenerator$Context], com.google.javascript.jscomp.CodeGenerator$Context), addExpr/1187548138=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node, int, com.google.javascript.jscomp.CodeGenerator$Context], void), endFunction/-1193118010=([com.google.javascript.jscomp.CodeConsumer, boolean], void)}
; {var3061=com.google.javascript.jscomp.CodeGenerator, var3328=r2, var221=com.google.javascript.rhino.Node, var2888=r3, var2297=r0, var2189=r6, var1524=com.google.javascript.jscomp.CodeGenerator$Context, var3205=r8, var1182=$r1, var131=$z0, var1840=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var469=java.lang.Object, var71=z1, var3964=$z2, var1888=$r4, var1612=com.google.javascript.jscomp.CodeConsumer, var3288=$r5, var2534="=>", var702=1, var2595=$z3, var290=com.google.javascript.rhino.Token, var3557=$r7, var665=com.google.javascript.jscomp.NodeUtil, var2506=$i0, var1317=$i1, var693=$r9, var1586=$r11, var124=$r10, var323=$z4}
; {com.google.javascript.jscomp.CodeGenerator=var3061, r2=var3328, com.google.javascript.rhino.Node=var221, r3=var2888, r0=var2297, r6=var2189, com.google.javascript.jscomp.CodeGenerator$Context=var1524, r8=var3205, $r1=var1182, $z0=var131, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1840, java.lang.Object=var469, z1=var71, $z2=var3964, $r4=var1888, com.google.javascript.jscomp.CodeConsumer=var1612, $r5=var3288, "=>"=var2534, 1=var702, $z3=var2595, com.google.javascript.rhino.Token=var290, $r7=var3557, com.google.javascript.jscomp.NodeUtil=var665, $i0=var2506, $i1=var1317, $r9=var693, $r11=var1586, $r10=var124, $z4=var323}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodeGenerator;	r3 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	r6 := @parameter2: com.google.javascript.rhino.Node;	r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0);	z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3);	if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	$z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>();	if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3);	$r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1);	$z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>();	if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;	$r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;	$i0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: int precedence(com.google.javascript.rhino.Token)>($r7);	$i1 = $i0 + 1;	$r9 = staticinvoke <com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeGenerator$Context getContextForArrowFunctionBody(com.google.javascript.jscomp.CodeGenerator$Context)>(r8);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void addExpr(com.google.javascript.rhino.Node,int,com.google.javascript.jscomp.CodeGenerator$Context)>(r6, $i1, $r9);	$r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	$r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT>;	if r8 != $r10 goto $z4 = 0;	$z4 = 0;	virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4);	if z1 == 0 goto return;	return
;block_num 8