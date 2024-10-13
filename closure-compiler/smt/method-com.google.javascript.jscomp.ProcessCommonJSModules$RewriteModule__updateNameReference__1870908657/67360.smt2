(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1142 0)
(declare-sort var639 0)
(declare-sort var995 0)
(declare-sort var920 0)
(declare-sort var3138 0)
(declare-sort var3019 0)
(declare-sort var636 0)
(declare-sort var3654 0)
(declare-sort var902 0)
(declare-sort var2896 0)
(declare-sort var3242 0)
(declare-sort var1872 0)
(declare-sort var2159 0)
(declare-sort var2226 0)
(declare-sort var2493 0)
(declare-sort var3149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1802087535 (var995) var995)
(declare-fun var3138_checkNotNull/1446102589 (var3019) var3019)
(declare-fun cast-from-var995-to-var3019 (var995) var3019)
(declare-fun cast-from-String-to-var3019 (String) var3019)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun this$0/1258888565 (var1142) var636)
(declare-fun getInput/1894382808 (var639) var3654)
(declare-fun var636_getModuleName/-1268626034 (var3654) String)
(declare-fun getBasePropertyImport/1957645713 (var636 String) String)
(declare-fun getScope/200456311 (var639) var902)
(declare-fun getVar/361782256 (var3242 String) var2896)
(declare-fun cast-from-var902-to-var3242 (var902) var3242)
(declare-fun cast-from-var2896-to-var1872 (var2896) var1872)
(declare-fun getToken/1324186377 (var995) var2226)
(declare-fun ordinal/-291641772 (var2493) Int)
(declare-fun cast-from-var2226-to-var2493 (var2226) var2493)
(declare-fun var3149_isFunctionExpression/-417689451 (var995) Bool)
(declare-const null-var1142 var1142)
(declare-const null-var639 var639)
(declare-const null-var995 var995)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2159-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var616 var1142) ; Statement: r2 := @this: com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule 
(assert (not (= var616 null-var1142)))
(declare-const var2733 var639) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var2733 null-var639)))
(declare-const var689 var995) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var689 null-var995)))
(declare-const var2216 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2216 null-String)))
(declare-const var3788 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3788 null-String)))
(declare-const var1012 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1012 null-Bool)))
(declare-const var1157 Bool) ; Statement: z2 := @parameter5: boolean 
(assert (not (= var1157 null-Bool)))
(assert true)
(define-const var3867 var995 (getParent/-1802087535 var689)) ; Statement: r80 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
;(assert (var3138_checkNotNull/1446102589 (cast-from-var995-to-var3019 var3867))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r80) 

(declare-const var3867!1 var995)
;(assert (var3138_checkNotNull/1446102589 (cast-from-String-to-var3019 var3788))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var3788!1 String)
(assert true)
(define-const var3333 Int (indexOf/-1037706067 var3788!1 46)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 < 0 goto $z18 = 0 
(assert (< var3333 0)) ; Cond: $i0 < 0 
(define-const var3699 Bool (ite (= 1 0) true false)) ; Statement: $z18 = 0 
(define-const var2378 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(define-const var2123 Bool (ite (= 1 0) true false)) ; Statement: $z16 = 0 
(define-const var2848 Bool (ite (= 1 0) true false)) ; Statement: $z15 = 0 
(assert true) ; Non Conditional
(define-const var2496 Bool var2378) ; Statement: z0 = $z17 
(define-const var1989 var636 (this$0/1258888565 var616)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0> 
(assert true)
(define-const var3869 var3654 (getInput/1894382808 var2733)) ; Statement: $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(define-const var1514 String (var636_getModuleName/-1268626034 var3869)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getModuleName(com.google.javascript.jscomp.CompilerInput)>($r5) 
(assert true)
(define-const var718 String (getBasePropertyImport/1957645713 var1989 var1514)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getBasePropertyImport(java.lang.String)>($r6) 
(assert true)
(define-const var3624 Bool (= var3788!1 var718)) ; Statement: $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var3796 var902 (getScope/200456311 var2733)) ; Statement: $r8 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert true)
(define-const var3408 var2896 (getVar/361782256 (cast-from-var902-to-var3242 var3796) var3788!1)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getVar(java.lang.String)>(r1) 
(define-const var1545 var1872 (cast-from-var2896-to-var1872 var3408)) ; Statement: $r79 = (com.google.javascript.jscomp.Var) $r9 
(define-const var3358 var1872 var1545) ; Statement: r81 = $r79 
(define-const var847 (Array Int Int) var2159-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r10 = <com.google.javascript.jscomp.ProcessCommonJSModules$3: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var1800 var2226 (getToken/1324186377 var3867!1)) ; Statement: $r11 = virtualinvoke r80.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var1746 Int (ordinal/-291641772 (cast-from-var2226-to-var2493 var1800))) ; Statement: $i1 = virtualinvoke $r11.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var3918 Int (select var847 var1746)) ; Statement: $i2 = $r10[$i1] 
 ; Statement: tableswitch($i2) {     case 6: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 7: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 8: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 9: goto if $z16 != 0 goto (branch);     case 10: goto $i3 = virtualinvoke r80.<com.google.javascript.rhino.Node: int getIndexOfChild(com.google.javascript.rhino.Node)>(r0);     case 11: goto if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);     default: goto if $z16 != 0 goto (branch); } 
(assert (and (= var3918 11) (and (not (= var3918 10)) (and (not (= var3918 9)) (and (not (= var3918 8)) (and (not (= var3918 7)) (and (not (= var3918 6)) true))))))) ; Intersect: Cond: $i2 == 11  and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Non Conditional      
 ; Statement: if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80) 
(assert (not (= (ite var2848 1 0) 0))) ; Cond: $z15 != 0 
(define-const var2639 Bool (var3149_isFunctionExpression/-417689451 var3867!1)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80) 
 ; Statement: if $z1 == 0 goto $r12 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0> 
(assert (not (= (ite var2639 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var3138_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var995-to-var3019=([com.google.javascript.rhino.Node], java.lang.Object), cast-from-String-to-var3019=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), this$0/1258888565=([com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule], com.google.javascript.jscomp.ProcessCommonJSModules), getInput/1894382808=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.CompilerInput), var636_getModuleName/-1268626034=([com.google.javascript.jscomp.CompilerInput], java.lang.String), getBasePropertyImport/1957645713=([com.google.javascript.jscomp.ProcessCommonJSModules, java.lang.String], java.lang.String), getScope/200456311=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.Scope), getVar/361782256=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var902-to-var3242=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), cast-from-var2896-to-var1872=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var), getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2226-to-var2493=([com.google.javascript.rhino.Token], java.lang.Enum), var3149_isFunctionExpression/-417689451=([com.google.javascript.rhino.Node], boolean)}
; {var1142=com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule, var616=r2, var639=com.google.javascript.jscomp.NodeTraversal, var2733=r3, var995=com.google.javascript.rhino.Node, var689=r0, var2216=r13, var920=null_type, var3788=r1, var1012=z3, var1157=z2, var3867=r80, var3138=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3019=java.lang.Object, var3333=$i0, var3699=$z18, var2378=$z17, var2123=$z16, var2848=$z15, var2496=z0, var636=com.google.javascript.jscomp.ProcessCommonJSModules, var1989=$r4, var3654=com.google.javascript.jscomp.CompilerInput, var3869=$r5, var1514=$r6, var718=$r7, var3624=$z11, var902=com.google.javascript.jscomp.Scope, var3796=$r8, var2896=com.google.javascript.jscomp.AbstractVar, var3242=com.google.javascript.jscomp.AbstractScope, var3408=$r9, var1872=com.google.javascript.jscomp.Var, var1545=$r79, var3358=r81, var2159=com.google.javascript.jscomp.ProcessCommonJSModules$3, var847=$r10, var2226=com.google.javascript.rhino.Token, var1800=$r11, var2493=java.lang.Enum, var1746=$i1, var3918=$i2, var3149=com.google.javascript.jscomp.NodeUtil, var2639=$z1}
; {com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule=var1142, r2=var616, com.google.javascript.jscomp.NodeTraversal=var639, r3=var2733, com.google.javascript.rhino.Node=var995, r0=var689, r13=var2216, null_type=var920, r1=var3788, z3=var1012, z2=var1157, r80=var3867, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3138, java.lang.Object=var3019, $i0=var3333, $z18=var3699, $z17=var2378, $z16=var2123, $z15=var2848, z0=var2496, com.google.javascript.jscomp.ProcessCommonJSModules=var636, $r4=var1989, com.google.javascript.jscomp.CompilerInput=var3654, $r5=var3869, $r6=var1514, $r7=var718, $z11=var3624, com.google.javascript.jscomp.Scope=var902, $r8=var3796, com.google.javascript.jscomp.AbstractVar=var2896, com.google.javascript.jscomp.AbstractScope=var3242, $r9=var3408, com.google.javascript.jscomp.Var=var1872, $r79=var1545, r81=var3358, com.google.javascript.jscomp.ProcessCommonJSModules$3=var2159, $r10=var847, com.google.javascript.rhino.Token=var2226, $r11=var1800, java.lang.Enum=var2493, $i1=var1746, $i2=var3918, com.google.javascript.jscomp.NodeUtil=var3149, $z1=var2639}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r13 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	z3 := @parameter4: boolean;	z2 := @parameter5: boolean;	r80 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r80);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46);	if $i0 < 0 goto $z18 = 0;	$z18 = 0;	$z17 = 0;	$z16 = 0;	$z15 = 0;	z0 = $z17;	$r4 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0>;	$r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r6 = staticinvoke <com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getModuleName(com.google.javascript.jscomp.CompilerInput)>($r5);	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getBasePropertyImport(java.lang.String)>($r6);	$z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r8 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getVar(java.lang.String)>(r1);	$r79 = (com.google.javascript.jscomp.Var) $r9;	r81 = $r79;	$r10 = <com.google.javascript.jscomp.ProcessCommonJSModules$3: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r11 = virtualinvoke r80.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i1 = virtualinvoke $r11.<com.google.javascript.rhino.Token: int ordinal()>();	$i2 = $r10[$i1];	tableswitch($i2) {     case 6: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 7: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 8: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 9: goto if $z16 != 0 goto (branch);     case 10: goto $i3 = virtualinvoke r80.<com.google.javascript.rhino.Node: int getIndexOfChild(com.google.javascript.rhino.Node)>(r0);     case 11: goto if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);     default: goto if $z16 != 0 goto (branch); };	if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);	$z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);	if $z1 == 0 goto $r12 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0>;	return
;block_num 6