(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var852 0)
(declare-sort var2881 0)
(declare-sort var140 0)
(declare-sort var1945 0)
(declare-sort var3515 0)
(declare-sort var3421 0)
(declare-sort var1822 0)
(declare-sort var1010 0)
(declare-sort var3286 0)
(declare-sort var2292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addCompileUnit/-1852081373 (var2881 Int) var3515)
(declare-fun var3421-init () var3421)
(declare-fun <init>/-2050474268 (var3421 var852) void)
(declare-fun var1822_access$100/729536946 (var1945 var1010) var1945)
(declare-fun cast-from-var3421-to-var1010 (var3421) var1010)
(declare-fun var3286-init () var3286)
(declare-fun <init>/2107716518 (var3286 var2881 var1945 var3515) void)
(declare-fun split/1599935578 (var3286 var1945 Bool) var1945)
(declare-fun var2292-init () var2292)
(declare-fun <init>/-1786067521 (var2292 var2881) void)
(declare-fun cast-from-var2292-to-var1010 (var2292) var1010)
(declare-const null-var852 var852)
(declare-const null-var2881 var2881)
(declare-const null-var140 var140)
(declare-const null-var1945 var1945)
(declare-const var852-$assertionsDisabled Bool)
(declare-const var2232 var852) ; Statement: r4 := @this: jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase 
(assert (not (= var2232 null-var852)))
(declare-const var96 var2881) ; Statement: r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var96 null-var2881)))
(declare-const var1732 var140) ; Statement: r26 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var1732 null-var140)))
(declare-const var1466 var1945) ; Statement: r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1466 null-var1945)))
(assert true)
(define-const var33 var3515 (addCompileUnit/-1852081373 var96 0)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.CompileUnit addCompileUnit(long)>(0L) 
(define-const var2450 var3421 var3421-init) ; Statement: $r3 = new jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1 
(assert true)
;(assert (<init>/-2050474268 var2450 var2232)) ; Statement: specialinvoke $r3.<jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1: void <init>(jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase)>(r4) 

(declare-const var2450!1 var3421)
(declare-const var2232!1 var852)
(define-const var1868 var1945 (var1822_access$100/729536946 var1466 (cast-from-var3421-to-var1010 var2450!1))) ; Statement: r27 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r2, $r3) 
(define-const var978 var3286 var3286-init) ; Statement: $r5 = new jdk.nashorn.internal.codegen.Splitter 
(assert true)
;(assert (<init>/2107716518 var978 var96 var1868 var33)) ; Statement: specialinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: void <init>(jdk.nashorn.internal.codegen.Compiler,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.codegen.CompileUnit)>(r0, r27, r1) 

(declare-const var978!1 var3286)
(declare-const var96!1 var2881)
(declare-const var1868!1 var1945)
(declare-const var33!1 var3515)
(assert true)
(define-const var2890 var1945 (split/1599935578 var978!1 var1868!1 (ite (= 1 1) true false))) ; Statement: r28 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: jdk.nashorn.internal.ir.FunctionNode split(jdk.nashorn.internal.ir.FunctionNode,boolean)>(r27, 1) 
(define-const var3099 var2292 var2292-init) ; Statement: $r6 = new jdk.nashorn.internal.codegen.SplitIntoFunctions 
(assert true)
;(assert (<init>/-1786067521 var3099 var96!1)) ; Statement: specialinvoke $r6.<jdk.nashorn.internal.codegen.SplitIntoFunctions: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r0) 

(declare-const var3099!1 var2292)
(declare-const var96!2 var2881)
(define-const var141 var1945 (var1822_access$100/729536946 var2890 (cast-from-var2292-to-var1010 var3099!1))) ; Statement: r29 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r28, $r6) 
(define-const var3072 Bool var852-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled> 
(assert (not (= (ite var3072 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1990 Bool var852-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto return r29 
(assert (not (= (ite var1990 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {addCompileUnit/-1852081373=([jdk.nashorn.internal.codegen.Compiler, long], jdk.nashorn.internal.codegen.CompileUnit), var3421-init=([], jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1), <init>/-2050474268=([jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1, jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase], void), var1822_access$100/729536946=([jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.FunctionNode), cast-from-var3421-to-var1010=([jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1], jdk.nashorn.internal.ir.visitor.NodeVisitor), var3286-init=([], jdk.nashorn.internal.codegen.Splitter), <init>/2107716518=([jdk.nashorn.internal.codegen.Splitter, jdk.nashorn.internal.codegen.Compiler, jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.codegen.CompileUnit], void), split/1599935578=([jdk.nashorn.internal.codegen.Splitter, jdk.nashorn.internal.ir.FunctionNode, boolean], jdk.nashorn.internal.ir.FunctionNode), var2292-init=([], jdk.nashorn.internal.codegen.SplitIntoFunctions), <init>/-1786067521=([jdk.nashorn.internal.codegen.SplitIntoFunctions, jdk.nashorn.internal.codegen.Compiler], void), cast-from-var2292-to-var1010=([jdk.nashorn.internal.codegen.SplitIntoFunctions], jdk.nashorn.internal.ir.visitor.NodeVisitor)}
; {var852=jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase, var2232=r4, var2881=jdk.nashorn.internal.codegen.Compiler, var96=r0, var140=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var1732=r26, var1945=jdk.nashorn.internal.ir.FunctionNode, var1466=r2, var3515=jdk.nashorn.internal.codegen.CompileUnit, var33=r1, var3421=jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1, var2450=$r3, var1822=jdk.nashorn.internal.codegen.CompilationPhase, var1010=jdk.nashorn.internal.ir.visitor.NodeVisitor, var1868=r27, var3286=jdk.nashorn.internal.codegen.Splitter, var978=$r5, var2890=r28, var2292=jdk.nashorn.internal.codegen.SplitIntoFunctions, var3099=$r6, var141=r29, var3072=$z0, var1990=$z1}
; {jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase=var852, r4=var2232, jdk.nashorn.internal.codegen.Compiler=var2881, r0=var96, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var140, r26=var1732, jdk.nashorn.internal.ir.FunctionNode=var1945, r2=var1466, jdk.nashorn.internal.codegen.CompileUnit=var3515, r1=var33, jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1=var3421, $r3=var2450, jdk.nashorn.internal.codegen.CompilationPhase=var1822, jdk.nashorn.internal.ir.visitor.NodeVisitor=var1010, r27=var1868, jdk.nashorn.internal.codegen.Splitter=var3286, $r5=var978, r28=var2890, jdk.nashorn.internal.codegen.SplitIntoFunctions=var2292, $r6=var3099, r29=var141, $z0=var3072, $z1=var1990}
;seq 
;cnt {}
;stmts r4 := @this: jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase;	r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r26 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.CompileUnit addCompileUnit(long)>(0L);	$r3 = new jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1;	specialinvoke $r3.<jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1: void <init>(jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase)>(r4);	r27 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r2, $r3);	$r5 = new jdk.nashorn.internal.codegen.Splitter;	specialinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: void <init>(jdk.nashorn.internal.codegen.Compiler,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.codegen.CompileUnit)>(r0, r27, r1);	r28 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: jdk.nashorn.internal.ir.FunctionNode split(jdk.nashorn.internal.ir.FunctionNode,boolean)>(r27, 1);	$r6 = new jdk.nashorn.internal.codegen.SplitIntoFunctions;	specialinvoke $r6.<jdk.nashorn.internal.codegen.SplitIntoFunctions: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r0);	r29 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r28, $r6);	$z0 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled>;	$z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled>;	if $z1 != 0 goto return r29;	return r29
;block_num 3