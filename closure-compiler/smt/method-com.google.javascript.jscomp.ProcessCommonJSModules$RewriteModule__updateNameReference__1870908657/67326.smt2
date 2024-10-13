(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var180 0)
(declare-sort var2920 0)
(declare-sort var2334 0)
(declare-sort var3001 0)
(declare-sort var1424 0)
(declare-sort var1729 0)
(declare-sort var2534 0)
(declare-sort var2710 0)
(declare-sort var244 0)
(declare-sort var3111 0)
(declare-sort var2036 0)
(declare-sort var3055 0)
(declare-sort var1201 0)
(declare-sort var1290 0)
(declare-sort var1780 0)
(declare-sort var582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1802087535 (var2334) var2334)
(declare-fun var1424_checkNotNull/1446102589 (var1729) var1729)
(declare-fun cast-from-var2334-to-var1729 (var2334) var1729)
(declare-fun cast-from-String-to-var1729 (String) var1729)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun this$0/1258888565 (var180) var2534)
(declare-fun getInput/1894382808 (var2920) var2710)
(declare-fun var2534_getModuleName/-1268626034 (var2710) String)
(declare-fun getBasePropertyImport/1957645713 (var2534 String) String)
(declare-fun getScope/200456311 (var2920) var244)
(declare-fun getVar/361782256 (var2036 String) var3111)
(declare-fun cast-from-var244-to-var2036 (var244) var2036)
(declare-fun cast-from-var3111-to-var3055 (var3111) var3055)
(declare-fun getToken/1324186377 (var2334) var1290)
(declare-fun ordinal/-291641772 (var1780) Int)
(declare-fun cast-from-var1290-to-var1780 (var1290) var1780)
(declare-fun var582_isFunctionExpression/-417689451 (var2334) Bool)
(declare-const null-var180 var180)
(declare-const null-var2920 var2920)
(declare-const null-var2334 var2334)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1201-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var1577 var180) ; Statement: r2 := @this: com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule 
(assert (not (= var1577 null-var180)))
(declare-const var3496 var2920) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var3496 null-var2920)))
(declare-const var2705 var2334) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2705 null-var2334)))
(declare-const var328 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var328 null-String)))
(declare-const var8 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var8 null-String)))
(declare-const var752 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var752 null-Bool)))
(declare-const var1387 Bool) ; Statement: z2 := @parameter5: boolean 
(assert (not (= var1387 null-Bool)))
(assert true)
(define-const var2812 var2334 (getParent/-1802087535 var2705)) ; Statement: r80 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
;(assert (var1424_checkNotNull/1446102589 (cast-from-var2334-to-var1729 var2812))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r80) 

(declare-const var2812!1 var2334)
;(assert (var1424_checkNotNull/1446102589 (cast-from-String-to-var1729 var8))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var8!1 String)
(assert true)
(define-const var1790 Int (indexOf/-1037706067 var8!1 46)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 < 0 goto $z18 = 0 
(assert (not (< var1790 0))) ; Negate: Cond: $i0 < 0  
(define-const var3091 Bool (ite (= 1 1) true false)) ; Statement: $z18 = 1 
(define-const var1242 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
(define-const var2374 Bool (ite (= 1 1) true false)) ; Statement: $z16 = 1 
(define-const var3983 Bool (ite (= 1 1) true false)) ; Statement: $z15 = 1 
 ; Statement: goto [?= z0 = $z17] 
(assert true) ; Non Conditional
(define-const var2557 Bool var1242) ; Statement: z0 = $z17 
(define-const var658 var2534 (this$0/1258888565 var1577)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0> 
(assert true)
(define-const var2834 var2710 (getInput/1894382808 var3496)) ; Statement: $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(define-const var2066 String (var2534_getModuleName/-1268626034 var2834)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getModuleName(com.google.javascript.jscomp.CompilerInput)>($r5) 
(assert true)
(define-const var3541 String (getBasePropertyImport/1957645713 var658 var2066)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getBasePropertyImport(java.lang.String)>($r6) 
(assert true)
(define-const var115 Bool (= var8!1 var3541)) ; Statement: $z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(assert true)
(define-const var2519 var244 (getScope/200456311 var3496)) ; Statement: $r8 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert true)
(define-const var3025 var3111 (getVar/361782256 (cast-from-var244-to-var2036 var2519) var8!1)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getVar(java.lang.String)>(r1) 
(define-const var2931 var3055 (cast-from-var3111-to-var3055 var3025)) ; Statement: $r79 = (com.google.javascript.jscomp.Var) $r9 
(define-const var2995 var3055 var2931) ; Statement: r81 = $r79 
(define-const var623 (Array Int Int) var1201-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r10 = <com.google.javascript.jscomp.ProcessCommonJSModules$3: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var2396 var1290 (getToken/1324186377 var2812!1)) ; Statement: $r11 = virtualinvoke r80.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var418 Int (ordinal/-291641772 (cast-from-var1290-to-var1780 var2396))) ; Statement: $i1 = virtualinvoke $r11.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var1019 Int (select var623 var418)) ; Statement: $i2 = $r10[$i1] 
 ; Statement: tableswitch($i2) {     case 6: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 7: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 8: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 9: goto if $z16 != 0 goto (branch);     case 10: goto $i3 = virtualinvoke r80.<com.google.javascript.rhino.Node: int getIndexOfChild(com.google.javascript.rhino.Node)>(r0);     case 11: goto if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);     default: goto if $z16 != 0 goto (branch); } 
(assert (and (= var1019 11) (and (not (= var1019 10)) (and (not (= var1019 9)) (and (not (= var1019 8)) (and (not (= var1019 7)) (and (not (= var1019 6)) true))))))) ; Intersect: Cond: $i2 == 11  and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Non Conditional      
 ; Statement: if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80) 
(assert (not (= (ite var3983 1 0) 0))) ; Cond: $z15 != 0 
(define-const var3465 Bool (var582_isFunctionExpression/-417689451 var2812!1)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80) 
 ; Statement: if $z1 == 0 goto $r12 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0> 
(assert (not (= (ite var3465 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var1424_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2334-to-var1729=([com.google.javascript.rhino.Node], java.lang.Object), cast-from-String-to-var1729=([java.lang.String], java.lang.Object), indexOf/-1037706067=([java.lang.String, int], int), this$0/1258888565=([com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule], com.google.javascript.jscomp.ProcessCommonJSModules), getInput/1894382808=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.CompilerInput), var2534_getModuleName/-1268626034=([com.google.javascript.jscomp.CompilerInput], java.lang.String), getBasePropertyImport/1957645713=([com.google.javascript.jscomp.ProcessCommonJSModules, java.lang.String], java.lang.String), getScope/200456311=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.Scope), getVar/361782256=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var244-to-var2036=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), cast-from-var3111-to-var3055=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var), getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1290-to-var1780=([com.google.javascript.rhino.Token], java.lang.Enum), var582_isFunctionExpression/-417689451=([com.google.javascript.rhino.Node], boolean)}
; {var180=com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule, var1577=r2, var2920=com.google.javascript.jscomp.NodeTraversal, var3496=r3, var2334=com.google.javascript.rhino.Node, var2705=r0, var328=r13, var3001=null_type, var8=r1, var752=z3, var1387=z2, var2812=r80, var1424=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1729=java.lang.Object, var1790=$i0, var3091=$z18, var1242=$z17, var2374=$z16, var3983=$z15, var2557=z0, var2534=com.google.javascript.jscomp.ProcessCommonJSModules, var658=$r4, var2710=com.google.javascript.jscomp.CompilerInput, var2834=$r5, var2066=$r6, var3541=$r7, var115=$z11, var244=com.google.javascript.jscomp.Scope, var2519=$r8, var3111=com.google.javascript.jscomp.AbstractVar, var2036=com.google.javascript.jscomp.AbstractScope, var3025=$r9, var3055=com.google.javascript.jscomp.Var, var2931=$r79, var2995=r81, var1201=com.google.javascript.jscomp.ProcessCommonJSModules$3, var623=$r10, var1290=com.google.javascript.rhino.Token, var2396=$r11, var1780=java.lang.Enum, var418=$i1, var1019=$i2, var582=com.google.javascript.jscomp.NodeUtil, var3465=$z1}
; {com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule=var180, r2=var1577, com.google.javascript.jscomp.NodeTraversal=var2920, r3=var3496, com.google.javascript.rhino.Node=var2334, r0=var2705, r13=var328, null_type=var3001, r1=var8, z3=var752, z2=var1387, r80=var2812, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1424, java.lang.Object=var1729, $i0=var1790, $z18=var3091, $z17=var1242, $z16=var2374, $z15=var3983, z0=var2557, com.google.javascript.jscomp.ProcessCommonJSModules=var2534, $r4=var658, com.google.javascript.jscomp.CompilerInput=var2710, $r5=var2834, $r6=var2066, $r7=var3541, $z11=var115, com.google.javascript.jscomp.Scope=var244, $r8=var2519, com.google.javascript.jscomp.AbstractVar=var3111, com.google.javascript.jscomp.AbstractScope=var2036, $r9=var3025, com.google.javascript.jscomp.Var=var3055, $r79=var2931, r81=var2995, com.google.javascript.jscomp.ProcessCommonJSModules$3=var1201, $r10=var623, com.google.javascript.rhino.Token=var1290, $r11=var2396, java.lang.Enum=var1780, $i1=var418, $i2=var1019, com.google.javascript.jscomp.NodeUtil=var582, $z1=var3465}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r13 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	z3 := @parameter4: boolean;	z2 := @parameter5: boolean;	r80 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r80);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46);	if $i0 < 0 goto $z18 = 0;	$z18 = 1;	$z17 = 1;	$z16 = 1;	$z15 = 1;	goto [?= z0 = $z17];	z0 = $z17;	$r4 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0>;	$r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r6 = staticinvoke <com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getModuleName(com.google.javascript.jscomp.CompilerInput)>($r5);	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.ProcessCommonJSModules: java.lang.String getBasePropertyImport(java.lang.String)>($r6);	$z11 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r7);	$r8 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getVar(java.lang.String)>(r1);	$r79 = (com.google.javascript.jscomp.Var) $r9;	r81 = $r79;	$r10 = <com.google.javascript.jscomp.ProcessCommonJSModules$3: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r11 = virtualinvoke r80.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i1 = virtualinvoke $r11.<com.google.javascript.rhino.Token: int ordinal()>();	$i2 = $r10[$i1];	tableswitch($i2) {     case 6: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 7: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 8: goto $z4 = virtualinvoke r80.<com.google.javascript.rhino.Node: boolean hasMoreThanOneChild()>();     case 9: goto if $z16 != 0 goto (branch);     case 10: goto $i3 = virtualinvoke r80.<com.google.javascript.rhino.Node: int getIndexOfChild(com.google.javascript.rhino.Node)>(r0);     case 11: goto if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);     default: goto if $z16 != 0 goto (branch); };	if $z15 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);	$z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isFunctionExpression(com.google.javascript.rhino.Node)>(r80);	if $z1 == 0 goto $r12 = r2.<com.google.javascript.jscomp.ProcessCommonJSModules$RewriteModule: com.google.javascript.jscomp.ProcessCommonJSModules this$0>;	return
;block_num 6