(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1526 0)
(declare-sort var721 0)
(declare-sort var3838 0)
(declare-sort var3468 0)
(declare-sort var3655 0)
(declare-sort var458 0)
(declare-sort var3963 0)
(declare-sort var2916 0)
(declare-sort var1847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getException/1894145519 (var721) var3838)
(declare-fun lc/276435632 (var3655) var3468)
(declare-fun cast-from-var1526-to-var3655 (var1526) var3655)
(declare-fun getCurrentBlock/-71833717 (var3468) var458)
(declare-fun start/1540093611 (var1526 var3963) Bool)
(declare-fun cast-from-var721-to-var3963 (var721) var3963)
(declare-fun getName/-1684945865 (var3838) String)
(declare-fun symbolName/-133345059 (var2916) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun defineSymbol/-1174624801 (var1526 var458 String var3963 Int) var1847)
(declare-fun clearFlag/1419571327 (var1847 Int) var1847)
(declare-const null-var1526 var1526)
(declare-const null-var721 var721)
(declare-const var2916-EXCEPTION_PREFIX var2916)
(declare-const var1011 var1526) ; Statement: r2 := @this: jdk.nashorn.internal.codegen.AssignSymbols 
(assert (not (= var1011 null-var1526)))
(declare-const var1154 var721) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.CatchNode 
(assert (not (= var1154 null-var721)))
(assert true)
(define-const var2097 var3838 (getException/1894145519 var1154)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.IdentNode getException()>() 
(define-const var804 var3468 (lc/276435632 (cast-from-var1526-to-var3655 var1011))) ; Statement: $r3 = r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.LexicalContext lc> 
(assert true)
(define-const var1395 var458 (getCurrentBlock/-71833717 var804)) ; Statement: r4 = virtualinvoke $r3.<jdk.nashorn.internal.ir.LexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>() 
(assert true)
;(assert (start/1540093611 var1011 (cast-from-var721-to-var3963 var1154))) ; Statement: specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: boolean start(jdk.nashorn.internal.ir.Node)>(r0) 

(declare-const var1011!1 var1526)
(declare-const var1154!1 var721)
(assert true)
(define-const var2428 String (getName/-1684945865 var2097)) ; Statement: r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(define-const var3961 var2916 var2916-EXCEPTION_PREFIX) ; Statement: $r6 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants EXCEPTION_PREFIX> 
(assert true)
(define-const var3461 String (symbolName/-133345059 var3961)) ; Statement: $r7 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3533 Bool (startsWith/-1785782452 var2428 var3461)) ; Statement: z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>($r7) 
 ; Statement: if z0 == 0 goto $b2 = 0 
(assert (= (ite var3533 1 0) 0)) ; Cond: z0 == 0 
(define-const var2031 Int 0) ; Statement: $b2 = 0 
(assert true) ; Non Conditional
(define-const var3659 Int (bv2nat (bvor ((_ int2bv 64) 18) ((_ int2bv 64) var2031)))) ; Statement: $b0 = 18 | $b2 
(define-const var1408 Int (bv2nat (bvor ((_ int2bv 64) var3659) ((_ int2bv 64) 8192)))) ; Statement: $s1 = $b0 | 8192 
(assert true)
(define-const var3759 var1847 (defineSymbol/-1174624801 var1011!1 var1395 var2428 (cast-from-var721-to-var3963 var1154!1) var1408)) ; Statement: $r8 = specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.Symbol defineSymbol(jdk.nashorn.internal.ir.Block,java.lang.String,jdk.nashorn.internal.ir.Node,int)>(r4, r5, r0, $s1) 
(assert true)
;(assert (clearFlag/1419571327 var3759 16)) ; Statement: virtualinvoke $r8.<jdk.nashorn.internal.ir.Symbol: jdk.nashorn.internal.ir.Symbol clearFlag(int)>(16) 

(declare-const var3759!1 var1847)
(declare-const var1120 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getException/1894145519=([jdk.nashorn.internal.ir.CatchNode], jdk.nashorn.internal.ir.IdentNode), lc/276435632=([jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.LexicalContext), cast-from-var1526-to-var3655=([jdk.nashorn.internal.codegen.AssignSymbols], jdk.nashorn.internal.ir.visitor.NodeVisitor), getCurrentBlock/-71833717=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.Block), start/1540093611=([jdk.nashorn.internal.codegen.AssignSymbols, jdk.nashorn.internal.ir.Node], boolean), cast-from-var721-to-var3963=([jdk.nashorn.internal.ir.CatchNode], jdk.nashorn.internal.ir.Node), getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), defineSymbol/-1174624801=([jdk.nashorn.internal.codegen.AssignSymbols, jdk.nashorn.internal.ir.Block, java.lang.String, jdk.nashorn.internal.ir.Node, int], jdk.nashorn.internal.ir.Symbol), clearFlag/1419571327=([jdk.nashorn.internal.ir.Symbol, int], jdk.nashorn.internal.ir.Symbol)}
; {var1526=jdk.nashorn.internal.codegen.AssignSymbols, var1011=r2, var721=jdk.nashorn.internal.ir.CatchNode, var1154=r0, var3838=jdk.nashorn.internal.ir.IdentNode, var2097=r1, var3468=jdk.nashorn.internal.ir.LexicalContext, var3655=jdk.nashorn.internal.ir.visitor.NodeVisitor, var804=$r3, var458=jdk.nashorn.internal.ir.Block, var1395=r4, var3963=jdk.nashorn.internal.ir.Node, var2428=r5, var2916=jdk.nashorn.internal.codegen.CompilerConstants, var3961=$r6, var3461=$r7, var3533=z0, var2031=$b2, var3659=$b0, var1408=$s1, var1847=jdk.nashorn.internal.ir.Symbol, var3759=$r8, var1120=16}
; {jdk.nashorn.internal.codegen.AssignSymbols=var1526, r2=var1011, jdk.nashorn.internal.ir.CatchNode=var721, r0=var1154, jdk.nashorn.internal.ir.IdentNode=var3838, r1=var2097, jdk.nashorn.internal.ir.LexicalContext=var3468, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3655, $r3=var804, jdk.nashorn.internal.ir.Block=var458, r4=var1395, jdk.nashorn.internal.ir.Node=var3963, r5=var2428, jdk.nashorn.internal.codegen.CompilerConstants=var2916, $r6=var3961, $r7=var3461, z0=var3533, $b2=var2031, $b0=var3659, $s1=var1408, jdk.nashorn.internal.ir.Symbol=var1847, $r8=var3759, 16=var1120}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.codegen.AssignSymbols;	r0 := @parameter0: jdk.nashorn.internal.ir.CatchNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.IdentNode getException()>();	$r3 = r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.LexicalContext lc>;	r4 = virtualinvoke $r3.<jdk.nashorn.internal.ir.LexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>();	specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: boolean start(jdk.nashorn.internal.ir.Node)>(r0);	r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r6 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants EXCEPTION_PREFIX>;	$r7 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>($r7);	if z0 == 0 goto $b2 = 0;	$b2 = 0;	$b0 = 18 | $b2;	$s1 = $b0 | 8192;	$r8 = specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.Symbol defineSymbol(jdk.nashorn.internal.ir.Block,java.lang.String,jdk.nashorn.internal.ir.Node,int)>(r4, r5, r0, $s1);	virtualinvoke $r8.<jdk.nashorn.internal.ir.Symbol: jdk.nashorn.internal.ir.Symbol clearFlag(int)>(16);	return 1
;block_num 3