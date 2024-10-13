(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var2822 0)
(declare-sort var2896 0)
(declare-sort var13 0)
(declare-sort var790 0)
(declare-sort var1275 0)
(declare-sort var2556 0)
(declare-sort var3638 0)
(declare-sort var3483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lc/276435632 (var13) var2896)
(declare-fun cast-from-var1042-to-var13 (var1042) var13)
(declare-fun cast-from-var2896-to-var790 (var2896) var790)
(declare-fun getCurrentBlock/-71833717 (var2896) var1275)
(declare-fun cast-from-var790-to-var2896 (var790) var2896)
(declare-fun getScopeProtoDepth/-891806642 (var1042 var1275 var2822) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2556-init () var2556)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-601631167 (var2822) String)
(declare-fun getCurrentFunction/-915359135 (var2896) var3638)
(declare-fun append/-1031950772 (String var3483) String)
(declare-fun cast-from-var3638-to-var3483 (var3638) var3483)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2556 var3483) void)
(declare-fun cast-from-String-to-var3483 (String) var3483)
(declare-const null-var1042 var1042)
(declare-const null-var2822 var2822)
(declare-const null-Bool Bool)
(declare-const var1042-$assertionsDisabled Bool)
(declare-const var843 var1042) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var843 null-var1042)))
(declare-const var2426 var2822) ; Statement: r3 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var2426 null-var2822)))
(declare-const var2428 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2428 null-Bool)))
(define-const var2518 var2896 (lc/276435632 (cast-from-var1042-to-var13 var843))) ; Statement: $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.ir.LexicalContext lc> 
(define-const var260 var790 (cast-from-var2896-to-var790 var2518)) ; Statement: $r2 = (jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext) $r1 
(assert true)
(define-const var3581 var1275 (getCurrentBlock/-71833717 (cast-from-var790-to-var2896 var260))) ; Statement: $r4 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>() 
(assert true)
(define-const var1334 Int (getScopeProtoDepth/-891806642 var843 var3581 var2426)) ; Statement: i0 = specialinvoke r0.<jdk.nashorn.internal.codegen.CodeGenerator: int getScopeProtoDepth(jdk.nashorn.internal.ir.Block,jdk.nashorn.internal.ir.Symbol)>($r4, r3) 
(define-const var2258 Bool var1042-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.CodeGenerator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var2258 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var804 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto (branch) 
(assert (not (not (= var1334 var804)))) ; Negate: Cond: i0 != $i3  
(define-const var3776 var2556 var2556-init) ; Statement: $r21 = new java.lang.AssertionError 
(define-const var825 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var825)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var825!1 String)
(assert (= var825!1 ""))
(assert true)
(define-const var3639 String (append/672562846 var825!1 "Couldn\u0027t find scope depth for symbol ")) ; Statement: $r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find scope depth for symbol ") 
(declare-const var825!2 String)
(assert (= var825!2 (str.++ var825!1 "Couldn\u0027t find scope depth for symbol ")))
(assert true)
(define-const var823 String (getName/-601631167 var2426)) ; Statement: $r11 = virtualinvoke r3.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(assert true)
(define-const var2717 String (append/672562846 var3639 var823)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3639!1 String)
(assert (= var3639!1 (str.++ var3639 var823)))
(assert true)
(define-const var3372 String (append/672562846 var2717 " in ")) ; Statement: $r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var2717!1 String)
(assert (= var2717!1 (str.++ var2717 " in ")))
(define-const var2028 var2896 (lc/276435632 (cast-from-var1042-to-var13 var843))) ; Statement: $r14 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.ir.LexicalContext lc> 
(define-const var354 var790 (cast-from-var2896-to-var790 var2028)) ; Statement: $r15 = (jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext) $r14 
(assert true)
(define-const var297 var3638 (getCurrentFunction/-915359135 (cast-from-var790-to-var2896 var354))) ; Statement: $r16 = virtualinvoke $r15.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: jdk.nashorn.internal.ir.FunctionNode getCurrentFunction()>() 
(assert true)
(define-const var2026 String (append/-1031950772 var3372 (cast-from-var3638-to-var3483 var297))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3372!1 String)
(assert (str.prefixof var3372 var3372!1))
(assert true)
(define-const var3931 String (toString/-2075883882 var2026)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3776 (cast-from-String-to-var3483 var3931))) ; Statement: specialinvoke $r21.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19) 

(declare-const var3776!1 var2556)
(declare-const var3931!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {lc/276435632=([jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.LexicalContext), cast-from-var1042-to-var13=([jdk.nashorn.internal.codegen.CodeGenerator], jdk.nashorn.internal.ir.visitor.NodeVisitor), cast-from-var2896-to-var790=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext), getCurrentBlock/-71833717=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.Block), cast-from-var790-to-var2896=([jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext], jdk.nashorn.internal.ir.LexicalContext), getScopeProtoDepth/-891806642=([jdk.nashorn.internal.codegen.CodeGenerator, jdk.nashorn.internal.ir.Block, jdk.nashorn.internal.ir.Symbol], int), cast-from-Int-to-Int=([int], int), var2556-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), getCurrentFunction/-915359135=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.FunctionNode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3638-to-var3483=([jdk.nashorn.internal.ir.FunctionNode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3483=([java.lang.String], java.lang.Object)}
; {var1042=jdk.nashorn.internal.codegen.CodeGenerator, var843=r0, var2822=jdk.nashorn.internal.ir.Symbol, var2426=r3, var2428=z1, var2896=jdk.nashorn.internal.ir.LexicalContext, var13=jdk.nashorn.internal.ir.visitor.NodeVisitor, var2518=$r1, var790=jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext, var260=$r2, var1275=jdk.nashorn.internal.ir.Block, var3581=$r4, var1334=i0, var2258=$z0, var804=$i3, var2556=java.lang.AssertionError, var3776=$r21, var825=$r20, var3639=$r12, var823=$r11, var2717=$r13, var3372=$r17, var2028=$r14, var354=$r15, var3638=jdk.nashorn.internal.ir.FunctionNode, var297=$r16, var3483=java.lang.Object, var2026=$r18, var3931=$r19}
; {jdk.nashorn.internal.codegen.CodeGenerator=var1042, r0=var843, jdk.nashorn.internal.ir.Symbol=var2822, r3=var2426, z1=var2428, jdk.nashorn.internal.ir.LexicalContext=var2896, jdk.nashorn.internal.ir.visitor.NodeVisitor=var13, $r1=var2518, jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext=var790, $r2=var260, jdk.nashorn.internal.ir.Block=var1275, $r4=var3581, i0=var1334, $z0=var2258, $i3=var804, java.lang.AssertionError=var2556, $r21=var3776, $r20=var825, $r12=var3639, $r11=var823, $r13=var2717, $r17=var3372, $r14=var2028, $r15=var354, jdk.nashorn.internal.ir.FunctionNode=var3638, $r16=var297, java.lang.Object=var3483, $r18=var2026, $r19=var3931}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	r3 := @parameter0: jdk.nashorn.internal.ir.Symbol;	z1 := @parameter1: boolean;	$r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.ir.LexicalContext lc>;	$r2 = (jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext) $r1;	$r4 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>();	i0 = specialinvoke r0.<jdk.nashorn.internal.codegen.CodeGenerator: int getScopeProtoDepth(jdk.nashorn.internal.ir.Block,jdk.nashorn.internal.ir.Symbol)>($r4, r3);	$z0 = <jdk.nashorn.internal.codegen.CodeGenerator: boolean $assertionsDisabled>;	if $z0 != 0 goto (branch);	$i3 = (int) -1;	if i0 != $i3 goto (branch);	$r21 = new java.lang.AssertionError;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t find scope depth for symbol ");	$r11 = virtualinvoke r3.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r14 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.ir.LexicalContext lc>;	$r15 = (jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext) $r14;	$r16 = virtualinvoke $r15.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: jdk.nashorn.internal.ir.FunctionNode getCurrentFunction()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19);	throw $r21
;block_num 3