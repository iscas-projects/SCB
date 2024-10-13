(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1740 0)
(declare-sort var304 0)
(declare-sort var1066 0)
(declare-sort var3263 0)
(declare-sort var518 0)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lc/276435632 (var3263) var1066)
(declare-fun cast-from-var1740-to-var3263 (var1740) var3263)
(declare-fun cast-from-var1066-to-var518 (var1066) var518)
(declare-fun getCurrentBlock/-71833717 (var1066) var2917)
(declare-fun cast-from-var518-to-var1066 (var518) var1066)
(declare-fun getScopeProtoDepth/-891806642 (var1740 var2917 var304) Int)
(declare-const null-var1740 var1740)
(declare-const null-var304 var304)
(declare-const null-Bool Bool)
(declare-const var1740-$assertionsDisabled Bool)
(declare-const var2260 var1740) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator 
(assert (not (= var2260 null-var1740)))
(declare-const var2650 var304) ; Statement: r3 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var2650 null-var304)))
(declare-const var3133 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3133 null-Bool)))
(define-const var1380 var1066 (lc/276435632 (cast-from-var1740-to-var3263 var2260))) ; Statement: $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.ir.LexicalContext lc> 
(define-const var2904 var518 (cast-from-var1066-to-var518 var1380)) ; Statement: $r2 = (jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext) $r1 
(assert true)
(define-const var1098 var2917 (getCurrentBlock/-71833717 (cast-from-var518-to-var1066 var2904))) ; Statement: $r4 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>() 
(assert true)
(define-const var3265 Int (getScopeProtoDepth/-891806642 var2260 var1098 var2650)) ; Statement: i0 = specialinvoke r0.<jdk.nashorn.internal.codegen.CodeGenerator: int getScopeProtoDepth(jdk.nashorn.internal.ir.Block,jdk.nashorn.internal.ir.Symbol)>($r4, r3) 
(define-const var153 Bool var1740-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.CodeGenerator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var153 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if i0 <= 0 goto return 
(assert (<= var3265 0)) ; Cond: i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lc/276435632=([jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.LexicalContext), cast-from-var1740-to-var3263=([jdk.nashorn.internal.codegen.CodeGenerator], jdk.nashorn.internal.ir.visitor.NodeVisitor), cast-from-var1066-to-var518=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext), getCurrentBlock/-71833717=([jdk.nashorn.internal.ir.LexicalContext], jdk.nashorn.internal.ir.Block), cast-from-var518-to-var1066=([jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext], jdk.nashorn.internal.ir.LexicalContext), getScopeProtoDepth/-891806642=([jdk.nashorn.internal.codegen.CodeGenerator, jdk.nashorn.internal.ir.Block, jdk.nashorn.internal.ir.Symbol], int)}
; {var1740=jdk.nashorn.internal.codegen.CodeGenerator, var2260=r0, var304=jdk.nashorn.internal.ir.Symbol, var2650=r3, var3133=z1, var1066=jdk.nashorn.internal.ir.LexicalContext, var3263=jdk.nashorn.internal.ir.visitor.NodeVisitor, var1380=$r1, var518=jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext, var2904=$r2, var2917=jdk.nashorn.internal.ir.Block, var1098=$r4, var3265=i0, var153=$z0}
; {jdk.nashorn.internal.codegen.CodeGenerator=var1740, r0=var2260, jdk.nashorn.internal.ir.Symbol=var304, r3=var2650, z1=var3133, jdk.nashorn.internal.ir.LexicalContext=var1066, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3263, $r1=var1380, jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext=var518, $r2=var2904, jdk.nashorn.internal.ir.Block=var2917, $r4=var1098, i0=var3265, $z0=var153}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator;	r3 := @parameter0: jdk.nashorn.internal.ir.Symbol;	z1 := @parameter1: boolean;	$r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.ir.LexicalContext lc>;	$r2 = (jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext) $r1;	$r4 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CodeGeneratorLexicalContext: jdk.nashorn.internal.ir.Block getCurrentBlock()>();	i0 = specialinvoke r0.<jdk.nashorn.internal.codegen.CodeGenerator: int getScopeProtoDepth(jdk.nashorn.internal.ir.Block,jdk.nashorn.internal.ir.Symbol)>($r4, r3);	$z0 = <jdk.nashorn.internal.codegen.CodeGenerator: boolean $assertionsDisabled>;	if $z0 != 0 goto (branch);	if i0 <= 0 goto return;	return
;block_num 3