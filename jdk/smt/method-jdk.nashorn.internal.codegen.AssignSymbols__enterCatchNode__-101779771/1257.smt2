(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3867 0)
(declare-sort var54 0)
(declare-sort var2573 0)
(declare-sort var910 0)
(declare-sort var234 0)
(declare-sort var2518 0)
(declare-sort var934 0)
(declare-sort var1669 0)
(declare-sort var3671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getException/1894145519 (var54) var2573)
(declare-fun lc/276435632 (var234) var910)
(declare-fun cast-from-var3867-to-var234 (var3867) var234)
(declare-fun getCurrentBlock/-71833717 (var910) var2518)
(declare-fun start/1540093611 (var3867 var934) Bool)
(declare-fun cast-from-var54-to-var934 (var54) var934)
(declare-fun getName/-1684945865 (var2573) String)
(declare-fun symbolName/-133345059 (var1669) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun defineSymbol/-1174624801 (var3867 var2518 String var934 Int) var3671)
(declare-fun clearFlag/1419571327 (var3671 Int) var3671)
(declare-const null-var3867 var3867)
(declare-const null-var54 var54)
(declare-const var1669-EXCEPTION_PREFIX var1669)
(declare-const var3407 var3867) ; Statement: r2 := @this: jdk.nashorn.internal.codegen.AssignSymbols 
(assert (not (= var3407 null-var3867)))
(declare-const var3165 var54) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.CatchNode 
(assert (not (= var3165 null-var54)))
(assert true)
(define-const var3548 var2573 (getException/1894145519 var3165)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.IdentNode getException()>() 
(define-const var2286 var910 (lc/276435632 (cast-from-var3867-to-var234 var3407))) ; Statement: $r3 = r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.LexicalContext lc> 
(assert true)
(define-const var3790 var2518 (getCurrentBlock/-71833717 var2286)) ; Statement: r4 = virtualinvoke $r3.<jdk.nashorn.internal.ir.LexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>() 
(assert true)
;(assert (start/1540093611 var3407 (cast-from-var54-to-var934 var3165))) ; Statement: specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: boolean start(jdk.nashorn.internal.ir.Node)>(r0) 

(declare-const var3407!1 var3867)
(declare-const var3165!1 var54)
(assert true)
(define-const var3263 String (getName/-1684945865 var3548)) ; Statement: r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(define-const var128 var1669 var1669-EXCEPTION_PREFIX) ; Statement: $r6 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants EXCEPTION_PREFIX> 
(assert true)
(define-const var3864 String (symbolName/-133345059 var128)) ; Statement: $r7 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var2210 Bool (startsWith/-1785782452 var3263 var3864)) ; Statement: z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>($r7) 
 ; Statement: if z0 == 0 goto $b2 = 0 
(assert (not (= (ite var2210 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3715 Int 64) ; Statement: $b2 = 64 
 ; Statement: goto [?= $b0 = 18 | $b2] 
(assert true) ; Non Conditional
(define-const var2243 Int (bv2nat (bvor ((_ int2bv 64) 18) ((_ int2bv 64) var3715)))) ; Statement: $b0 = 18 | $b2 
(define-const var1 Int (bv2nat (bvor ((_ int2bv 64) var2243) ((_ int2bv 64) 8192)))) ; Statement: $s1 = $b0 | 8192 
(assert true)
(define-const var858 var3671 (defineSymbol/-1174624801 var3407!1 var3790 var3263 (cast-from-var54-to-var934 var3165!1) var1)) ; Statement: $r8 = specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.Symbol defineSymbol(jdk.nashorn.internal.ir.Block,java.lang.String,jdk.nashorn.internal.ir.Node,int)>(r4, r5, r0, $s1) 
(assert true)
;(assert (clearFlag/1419571327 var858 16)) ; Statement: virtualinvoke $r8.<jdk.nashorn.internal.ir.Symbol: jdk.nashorn.internal.ir.Symbol clearFlag(int)>(16) 

(declare-const var858!1 var3671)
(declare-const var1378 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getException/1894145519=([jdk.nashorn.internal.ir.CatchNode], jdk.nashorn.internal.ir.IdentNode), lc/276435632=([jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.LexicalContext), cast-from-var3867-to-var234=([jdk.nashorn.internal.codegen.AssignSymbols], jdk.nashorn.internal.ir.visitor.NodeVisitor), getCurrentBlock/-71833717=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.Block), start/1540093611=([jdk.nashorn.internal.codegen.AssignSymbols, jdk.nashorn.internal.ir.Node], boolean), cast-from-var54-to-var934=([jdk.nashorn.internal.ir.CatchNode], jdk.nashorn.internal.ir.Node), getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), defineSymbol/-1174624801=([jdk.nashorn.internal.codegen.AssignSymbols, jdk.nashorn.internal.ir.Block, java.lang.String, jdk.nashorn.internal.ir.Node, int], jdk.nashorn.internal.ir.Symbol), clearFlag/1419571327=([jdk.nashorn.internal.ir.Symbol, int], jdk.nashorn.internal.ir.Symbol)}
; {var3867=jdk.nashorn.internal.codegen.AssignSymbols, var3407=r2, var54=jdk.nashorn.internal.ir.CatchNode, var3165=r0, var2573=jdk.nashorn.internal.ir.IdentNode, var3548=r1, var910=jdk.nashorn.internal.ir.LexicalContext, var234=jdk.nashorn.internal.ir.visitor.NodeVisitor, var2286=$r3, var2518=jdk.nashorn.internal.ir.Block, var3790=r4, var934=jdk.nashorn.internal.ir.Node, var3263=r5, var1669=jdk.nashorn.internal.codegen.CompilerConstants, var128=$r6, var3864=$r7, var2210=z0, var3715=$b2, var2243=$b0, var1=$s1, var3671=jdk.nashorn.internal.ir.Symbol, var858=$r8, var1378=16}
; {jdk.nashorn.internal.codegen.AssignSymbols=var3867, r2=var3407, jdk.nashorn.internal.ir.CatchNode=var54, r0=var3165, jdk.nashorn.internal.ir.IdentNode=var2573, r1=var3548, jdk.nashorn.internal.ir.LexicalContext=var910, jdk.nashorn.internal.ir.visitor.NodeVisitor=var234, $r3=var2286, jdk.nashorn.internal.ir.Block=var2518, r4=var3790, jdk.nashorn.internal.ir.Node=var934, r5=var3263, jdk.nashorn.internal.codegen.CompilerConstants=var1669, $r6=var128, $r7=var3864, z0=var2210, $b2=var3715, $b0=var2243, $s1=var1, jdk.nashorn.internal.ir.Symbol=var3671, $r8=var858, 16=var1378}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.codegen.AssignSymbols;	r0 := @parameter0: jdk.nashorn.internal.ir.CatchNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.CatchNode: jdk.nashorn.internal.ir.IdentNode getException()>();	$r3 = r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.LexicalContext lc>;	r4 = virtualinvoke $r3.<jdk.nashorn.internal.ir.LexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>();	specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: boolean start(jdk.nashorn.internal.ir.Node)>(r0);	r5 = virtualinvoke r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r6 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants EXCEPTION_PREFIX>;	$r7 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>($r7);	if z0 == 0 goto $b2 = 0;	$b2 = 64;	goto [?= $b0 = 18 | $b2];	$b0 = 18 | $b2;	$s1 = $b0 | 8192;	$r8 = specialinvoke r2.<jdk.nashorn.internal.codegen.AssignSymbols: jdk.nashorn.internal.ir.Symbol defineSymbol(jdk.nashorn.internal.ir.Block,java.lang.String,jdk.nashorn.internal.ir.Node,int)>(r4, r5, r0, $s1);	virtualinvoke $r8.<jdk.nashorn.internal.ir.Symbol: jdk.nashorn.internal.ir.Symbol clearFlag(int)>(16);	return 1
;block_num 3