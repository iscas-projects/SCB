(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var966 0)
(declare-sort var613 0)
(declare-sort var3766 0)
(declare-sort var3891 0)
(declare-sort var408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var966) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3766_checkState/1633726539 (Bool var3891) void)
(declare-fun cast-from-var966-to-var3891 (var966) var3891)
(declare-fun arrowFunctionNeedsParens/1851993738 (var3174 var966) Bool)
(declare-fun maybeAddGenericTypes/-312415498 (var3174 var966) void)
(declare-fun isAsyncFunction/-1316971166 (var966) Bool)
(declare-fun getNext/-860917720 (var966) var966)
(declare-fun add/1049372498 (var3174 var966) void)
(declare-fun maybeAddTypeDecl/-1456012140 (var3174 var966) void)
(declare-fun cc/223109865 (var3174) var408)
(declare-fun addOp/1409586206 (var408 String Bool) void)
(declare-fun isBlock/1715609001 (var966) Bool)
(declare-fun endFunction/-1193118010 (var408 Bool) void)
(declare-const null-var3174 var3174)
(declare-const null-var966 var966)
(declare-const null-var613 var613)
(declare-const var613-STATEMENT var613)
(declare-const var3373 var3174) ; Statement: r2 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var3373 null-var3174)))
(declare-const var3079 var966) ; Statement: r3 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3079 null-var966)))
(declare-const var2376 var966) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2376 null-var966)))
(declare-const var3288 var966) ; Statement: r6 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var3288 null-var966)))
(declare-const var3608 var613) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context 
(assert (not (= var3608 null-var613)))
(assert true)
(define-const var929 String (getString/-897720134 var2376)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2299 Bool (isEmpty/-1285796103 var929)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
;(assert (var3766_checkState/1633726539 var2299 (cast-from-var966-to-var3891 var2376))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0) 

(declare-const var2299!1 Bool)
(declare-const var2376!1 var966)
(assert true)
(define-const var469 Bool (arrowFunctionNeedsParens/1851993738 var3373 var3079)) ; Statement: z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3) 
 ; Statement: if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 
(assert (= (ite var469 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (maybeAddGenericTypes/-312415498 var3373 var2376!1)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 

(declare-const var3373!1 var3174)
(declare-const var2376!2 var966)
(assert true)
(define-const var573 Bool (isAsyncFunction/-1316971166 var3079)) ; Statement: $z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>() 
 ; Statement: if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (= (ite var573 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2356 var966 (getNext/-860917720 var2376!2)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
;(assert (add/1049372498 var3373!1 var2356)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4) 

(declare-const var3373!2 var3174)
(declare-const var2356!1 var966)
(assert true)
;(assert (maybeAddTypeDecl/-1456012140 var3373!2 var3079)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3) 

(declare-const var3373!3 var3174)
(declare-const var3079!1 var966)
(define-const var862 var408 (cc/223109865 var3373!3)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(assert true)
;(assert (addOp/1409586206 var862 "=>" (ite (= 1 1) true false))) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1) 

(declare-const var862!1 var408)
(declare-const var3812 String)
(declare-const var3652 Int)
(assert true)
(define-const var918 Bool (isBlock/1715609001 var3288)) ; Statement: $z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>() 
 ; Statement: if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA> 
(assert (not (= (ite var918 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
;(assert (add/1049372498 var3373!3 var3288)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>(r6) 

(declare-const var3373!4 var3174)
(declare-const var3288!1 var966)
 ; Statement: goto [?= $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>] 
(assert true) ; Non Conditional
(define-const var1364 var408 (cc/223109865 var3373!4)) ; Statement: $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(define-const var531 var613 var613-STATEMENT) ; Statement: $r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT> 
 ; Statement: if r8 != $r10 goto $z4 = 0 
(assert (not (not (= var3608 var531)))) ; Negate: Cond: r8 != $r10  
(define-const var3702 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4)] 
(assert true) ; Non Conditional
(assert true)
;(assert (endFunction/-1193118010 var1364 var3702)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4) 

(declare-const var1364!1 var408)
(declare-const var3702!1 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var469 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var3766_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-var966-to-var3891=([com.google.javascript.rhino.Node], java.lang.Object), arrowFunctionNeedsParens/1851993738=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], boolean), maybeAddGenericTypes/-312415498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), isAsyncFunction/-1316971166=([com.google.javascript.rhino.Node], boolean), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), add/1049372498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), maybeAddTypeDecl/-1456012140=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), cc/223109865=([com.google.javascript.jscomp.CodeGenerator], com.google.javascript.jscomp.CodeConsumer), addOp/1409586206=([com.google.javascript.jscomp.CodeConsumer, java.lang.String, boolean], void), isBlock/1715609001=([com.google.javascript.rhino.Node], boolean), endFunction/-1193118010=([com.google.javascript.jscomp.CodeConsumer, boolean], void)}
; {var3174=com.google.javascript.jscomp.CodeGenerator, var3373=r2, var966=com.google.javascript.rhino.Node, var3079=r3, var2376=r0, var3288=r6, var613=com.google.javascript.jscomp.CodeGenerator$Context, var3608=r8, var929=$r1, var2299=$z0, var3766=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3891=java.lang.Object, var469=z1, var573=$z2, var2356=$r4, var408=com.google.javascript.jscomp.CodeConsumer, var862=$r5, var3812="=>", var3652=1, var918=$z3, var1364=$r11, var531=$r10, var3702=$z4}
; {com.google.javascript.jscomp.CodeGenerator=var3174, r2=var3373, com.google.javascript.rhino.Node=var966, r3=var3079, r0=var2376, r6=var3288, com.google.javascript.jscomp.CodeGenerator$Context=var613, r8=var3608, $r1=var929, $z0=var2299, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3766, java.lang.Object=var3891, z1=var469, $z2=var573, $r4=var2356, com.google.javascript.jscomp.CodeConsumer=var408, $r5=var862, "=>"=var3812, 1=var3652, $z3=var918, $r11=var1364, $r10=var531, $z4=var3702}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodeGenerator;	r3 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	r6 := @parameter2: com.google.javascript.rhino.Node;	r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0);	z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3);	if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	$z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>();	if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3);	$r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1);	$z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>();	if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>(r6);	goto [?= $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>];	$r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	$r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT>;	if r8 != $r10 goto $z4 = 0;	$z4 = 1;	goto [?= virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4)];	virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4);	if z1 == 0 goto return;	return
;block_num 8