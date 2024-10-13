(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3322 0)
(declare-sort var962 0)
(declare-sort var3803 0)
(declare-sort var239 0)
(declare-sort var2863 0)
(declare-sort var2016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun getParent/-1802087535 (var962) var962)
(declare-fun astFactory/-2005638214 (var3322) var239)
(declare-fun globalTypedScope/-2005638214 (var3322) var2863)
(declare-fun createQNameFromTypedScope/1766173071 (var239 var2863 String) var962)
(declare-fun srcrefTree/-1502961263 (var962 var962) var962)
(declare-fun getJSType/-1250155936 (var962) var2016)
(declare-fun setJSType/1050966809 (var962 var2016) var962)
(declare-fun var3322_safeSetStringIfDeclaration/-1055247649 (var962 var962 var962) Bool)
(declare-const null-var3322 var3322)
(declare-const null-var962 var962)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3110 var3322) ; Statement: r2 := @this: com.google.javascript.jscomp.ClosureRewriteModule 
(assert (not (= var3110 null-var3322)))
(declare-const var3488 var962) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3488 null-var962)))
(declare-const var2168 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2168 null-String)))
(declare-const var755 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var755 null-Bool)))
(assert true)
(define-const var1670 Bool (contains/1009244746 var2168 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 != 0 goto r15 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert (not (= (ite var1670 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var554 var962 (getParent/-1802087535 var3488)) ; Statement: r15 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(define-const var3122 var239 (astFactory/-2005638214 var3110)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ClosureRewriteModule: com.google.javascript.jscomp.AstFactory astFactory> 
(define-const var608 var2863 (globalTypedScope/-2005638214 var3110)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.ClosureRewriteModule: com.google.javascript.jscomp.TypedScope globalTypedScope> 
(assert true)
(define-const var3071 var962 (createQNameFromTypedScope/1766173071 var3122 var608 var2168)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.AstFactory: com.google.javascript.rhino.Node createQNameFromTypedScope(com.google.javascript.jscomp.TypedScope,java.lang.String)>($r3, r0) 
(assert true)
(define-const var3668 var962 (srcrefTree/-1502961263 var3071 var3488)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTree(com.google.javascript.rhino.Node)>(r1) 
(assert true)
(define-const var1683 var2016 (getJSType/-1250155936 var3488)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.jstype.JSType getJSType()>() 
(assert true)
;(assert (setJSType/1050966809 var3668 var1683)) ; Statement: virtualinvoke r6.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setJSType(com.google.javascript.rhino.jstype.JSType)>($r7) 

(declare-const var3668!1 var962)
(declare-const var1683!1 var2016)
(define-const var2361 Bool (var3322_safeSetStringIfDeclaration/-1055247649 var554 var3488 var3668!1)) ; Statement: z1 = staticinvoke <com.google.javascript.jscomp.ClosureRewriteModule: boolean safeSetStringIfDeclaration(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>(r15, r1, r6) 
 ; Statement: if z1 == 0 goto virtualinvoke r1.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r6) 
(assert (not (= (ite var2361 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), astFactory/-2005638214=([com.google.javascript.jscomp.ClosureRewriteModule], com.google.javascript.jscomp.AstFactory), globalTypedScope/-2005638214=([com.google.javascript.jscomp.ClosureRewriteModule], com.google.javascript.jscomp.TypedScope), createQNameFromTypedScope/1766173071=([com.google.javascript.jscomp.AstFactory, com.google.javascript.jscomp.TypedScope, java.lang.String], com.google.javascript.rhino.Node), srcrefTree/-1502961263=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getJSType/-1250155936=([com.google.javascript.rhino.Node], com.google.javascript.rhino.jstype.JSType), setJSType/1050966809=([com.google.javascript.rhino.Node, com.google.javascript.rhino.jstype.JSType], com.google.javascript.rhino.Node), var3322_safeSetStringIfDeclaration/-1055247649=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], boolean)}
; {var3322=com.google.javascript.jscomp.ClosureRewriteModule, var3110=r2, var962=com.google.javascript.rhino.Node, var3488=r1, var2168=r0, var3803=null_type, var755=z3, var1670=$z0, var554=r15, var239=com.google.javascript.jscomp.AstFactory, var3122=$r4, var2863=com.google.javascript.jscomp.TypedScope, var608=$r3, var3071=$r5, var3668=r6, var2016=com.google.javascript.rhino.jstype.JSType, var1683=$r7, var2361=z1}
; {com.google.javascript.jscomp.ClosureRewriteModule=var3322, r2=var3110, com.google.javascript.rhino.Node=var962, r1=var3488, r0=var2168, null_type=var3803, z3=var755, $z0=var1670, r15=var554, com.google.javascript.jscomp.AstFactory=var239, $r4=var3122, com.google.javascript.jscomp.TypedScope=var2863, $r3=var608, $r5=var3071, r6=var3668, com.google.javascript.rhino.jstype.JSType=var2016, $r7=var1683, z1=var2361}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ClosureRewriteModule;	r1 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: java.lang.String;	z3 := @parameter2: boolean;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 != 0 goto r15 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	r15 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	$r4 = r2.<com.google.javascript.jscomp.ClosureRewriteModule: com.google.javascript.jscomp.AstFactory astFactory>;	$r3 = r2.<com.google.javascript.jscomp.ClosureRewriteModule: com.google.javascript.jscomp.TypedScope globalTypedScope>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.AstFactory: com.google.javascript.rhino.Node createQNameFromTypedScope(com.google.javascript.jscomp.TypedScope,java.lang.String)>($r3, r0);	r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTree(com.google.javascript.rhino.Node)>(r1);	$r7 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.jstype.JSType getJSType()>();	virtualinvoke r6.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setJSType(com.google.javascript.rhino.jstype.JSType)>($r7);	z1 = staticinvoke <com.google.javascript.jscomp.ClosureRewriteModule: boolean safeSetStringIfDeclaration(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>(r15, r1, r6);	if z1 == 0 goto virtualinvoke r1.<com.google.javascript.rhino.Node: void replaceWith(com.google.javascript.rhino.Node)>(r6);	return
;block_num 3