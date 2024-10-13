(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var198 0)
(declare-sort var3692 0)
(declare-sort var2578 0)
(declare-sort var3102 0)
(declare-sort var72 0)
(declare-sort var716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var3692) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3102_checkState/1633726539 (Bool var72) void)
(declare-fun cast-from-var3692-to-var72 (var3692) var72)
(declare-fun arrowFunctionNeedsParens/1851993738 (var198 var3692) Bool)
(declare-fun maybeAddGenericTypes/-312415498 (var198 var3692) void)
(declare-fun isAsyncFunction/-1316971166 (var3692) Bool)
(declare-fun getNext/-860917720 (var3692) var3692)
(declare-fun add/1049372498 (var198 var3692) void)
(declare-fun maybeAddTypeDecl/-1456012140 (var198 var3692) void)
(declare-fun cc/223109865 (var198) var716)
(declare-fun addOp/1409586206 (var716 String Bool) void)
(declare-fun isBlock/1715609001 (var3692) Bool)
(declare-fun endFunction/-1193118010 (var716 Bool) void)
(declare-const null-var198 var198)
(declare-const null-var3692 var3692)
(declare-const null-var2578 var2578)
(declare-const var2578-STATEMENT var2578)
(declare-const var2475 var198) ; Statement: r2 := @this: com.google.javascript.jscomp.CodeGenerator 
(assert (not (= var2475 null-var198)))
(declare-const var2846 var3692) ; Statement: r3 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2846 null-var3692)))
(declare-const var3963 var3692) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3963 null-var3692)))
(declare-const var943 var3692) ; Statement: r6 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var943 null-var3692)))
(declare-const var305 var2578) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context 
(assert (not (= var305 null-var2578)))
(assert true)
(define-const var3104 String (getString/-897720134 var3963)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var29 Bool (isEmpty/-1285796103 var3104)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
;(assert (var3102_checkState/1633726539 var29 (cast-from-var3692-to-var72 var3963))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0) 

(declare-const var29!1 Bool)
(declare-const var3963!1 var3692)
(assert true)
(define-const var764 Bool (arrowFunctionNeedsParens/1851993738 var2475 var2846)) ; Statement: z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3) 
 ; Statement: if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 
(assert (= (ite var764 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (maybeAddGenericTypes/-312415498 var2475 var3963!1)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0) 

(declare-const var2475!1 var198)
(declare-const var3963!2 var3692)
(assert true)
(define-const var2290 Bool (isAsyncFunction/-1316971166 var2846)) ; Statement: $z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>() 
 ; Statement: if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (= (ite var2290 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2951 var3692 (getNext/-860917720 var3963!2)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
;(assert (add/1049372498 var2475!1 var2951)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4) 

(declare-const var2475!2 var198)
(declare-const var2951!1 var3692)
(assert true)
;(assert (maybeAddTypeDecl/-1456012140 var2475!2 var2846)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3) 

(declare-const var2475!3 var198)
(declare-const var2846!1 var3692)
(define-const var665 var716 (cc/223109865 var2475!3)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(assert true)
;(assert (addOp/1409586206 var665 "=>" (ite (= 1 1) true false))) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1) 

(declare-const var665!1 var716)
(declare-const var2236 String)
(declare-const var290 Int)
(assert true)
(define-const var2870 Bool (isBlock/1715609001 var943)) ; Statement: $z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>() 
 ; Statement: if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA> 
(assert (not (= (ite var2870 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
;(assert (add/1049372498 var2475!3 var943)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>(r6) 

(declare-const var2475!4 var198)
(declare-const var943!1 var3692)
 ; Statement: goto [?= $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>] 
(assert true) ; Non Conditional
(define-const var3563 var716 (cc/223109865 var2475!4)) ; Statement: $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc> 
(define-const var59 var2578 var2578-STATEMENT) ; Statement: $r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT> 
 ; Statement: if r8 != $r10 goto $z4 = 0 
(assert (not (= var305 var59))) ; Cond: r8 != $r10 
(define-const var2714 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (endFunction/-1193118010 var3563 var2714)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4) 

(declare-const var3563!1 var716)
(declare-const var2714!1 Bool)
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var764 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var3102_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-var3692-to-var72=([com.google.javascript.rhino.Node], java.lang.Object), arrowFunctionNeedsParens/1851993738=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], boolean), maybeAddGenericTypes/-312415498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), isAsyncFunction/-1316971166=([com.google.javascript.rhino.Node], boolean), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), add/1049372498=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), maybeAddTypeDecl/-1456012140=([com.google.javascript.jscomp.CodeGenerator, com.google.javascript.rhino.Node], void), cc/223109865=([com.google.javascript.jscomp.CodeGenerator], com.google.javascript.jscomp.CodeConsumer), addOp/1409586206=([com.google.javascript.jscomp.CodeConsumer, java.lang.String, boolean], void), isBlock/1715609001=([com.google.javascript.rhino.Node], boolean), endFunction/-1193118010=([com.google.javascript.jscomp.CodeConsumer, boolean], void)}
; {var198=com.google.javascript.jscomp.CodeGenerator, var2475=r2, var3692=com.google.javascript.rhino.Node, var2846=r3, var3963=r0, var943=r6, var2578=com.google.javascript.jscomp.CodeGenerator$Context, var305=r8, var3104=$r1, var29=$z0, var3102=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var72=java.lang.Object, var764=z1, var2290=$z2, var2951=$r4, var716=com.google.javascript.jscomp.CodeConsumer, var665=$r5, var2236="=>", var290=1, var2870=$z3, var3563=$r11, var59=$r10, var2714=$z4}
; {com.google.javascript.jscomp.CodeGenerator=var198, r2=var2475, com.google.javascript.rhino.Node=var3692, r3=var2846, r0=var3963, r6=var943, com.google.javascript.jscomp.CodeGenerator$Context=var2578, r8=var305, $r1=var3104, $z0=var29, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3102, java.lang.Object=var72, z1=var764, $z2=var2290, $r4=var2951, com.google.javascript.jscomp.CodeConsumer=var716, $r5=var665, "=>"=var2236, 1=var290, $z3=var2870, $r11=var3563, $r10=var59, $z4=var2714}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodeGenerator;	r3 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	r6 := @parameter2: com.google.javascript.rhino.Node;	r8 := @parameter3: com.google.javascript.jscomp.CodeGenerator$Context;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0);	z1 = virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: boolean arrowFunctionNeedsParens(com.google.javascript.rhino.Node)>(r3);	if z1 == 0 goto virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddGenericTypes(com.google.javascript.rhino.Node)>(r0);	$z2 = virtualinvoke r3.<com.google.javascript.rhino.Node: boolean isAsyncFunction()>();	if $z2 == 0 goto $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>($r4);	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void maybeAddTypeDecl(com.google.javascript.rhino.Node)>(r3);	$r5 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	virtualinvoke $r5.<com.google.javascript.jscomp.CodeConsumer: void addOp(java.lang.String,boolean)>("=>", 1);	$z3 = virtualinvoke r6.<com.google.javascript.rhino.Node: boolean isBlock()>();	if $z3 == 0 goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;	virtualinvoke r2.<com.google.javascript.jscomp.CodeGenerator: void add(com.google.javascript.rhino.Node)>(r6);	goto [?= $r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>];	$r11 = r2.<com.google.javascript.jscomp.CodeGenerator: com.google.javascript.jscomp.CodeConsumer cc>;	$r10 = <com.google.javascript.jscomp.CodeGenerator$Context: com.google.javascript.jscomp.CodeGenerator$Context STATEMENT>;	if r8 != $r10 goto $z4 = 0;	$z4 = 0;	virtualinvoke $r11.<com.google.javascript.jscomp.CodeConsumer: void endFunction(boolean)>($z4);	if z1 == 0 goto return;	return
;block_num 8