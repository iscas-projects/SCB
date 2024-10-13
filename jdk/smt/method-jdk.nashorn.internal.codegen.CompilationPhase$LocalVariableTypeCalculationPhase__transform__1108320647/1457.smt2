(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var281 0)
(declare-sort var1469 0)
(declare-sort var1613 0)
(declare-sort var2627 0)
(declare-sort var1280 0)
(declare-sort var2608 0)
(declare-sort var3139 0)
(declare-sort var352 0)
(declare-sort var3113 0)
(declare-sort var1598 0)
(declare-sort var3190 0)
(declare-sort var2714 0)
(declare-sort var3015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1280-init () var1280)
(declare-fun <init>/316761964 (var1280 var1469) void)
(declare-fun var2608_access$100/729536946 (var2627 var3139) var2627)
(declare-fun cast-from-var1280-to-var3139 (var1280) var3139)
(declare-fun getScriptEnvironment/-476870127 (var1469) var352)
(declare-fun getErr/1279724519 (var352) var3113)
(declare-fun _print_lower_ast/-920435095 (var352) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1714936033 (var2627) String)
(declare-fun var1598_quote/-789117686 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var3113 String) void)
(declare-fun var3190-init () var3190)
(declare-fun <init>/229570245 (var3190 var2714) void)
(declare-fun cast-from-var2627-to-var2714 (var2627) var2714)
(declare-fun println/1363973599 (var3113 var3015) void)
(declare-fun cast-from-var3190-to-var3015 (var3190) var3015)
(declare-fun _print_lower_parse/-920435095 (var352) Bool)
(declare-fun getFlag/298653294 (var2627 Int) Bool)
(declare-const null-var281 var281)
(declare-const null-var1469 var1469)
(declare-const null-var1613 var1613)
(declare-const null-var2627 var2627)
(declare-const var744 var281) ; Statement: r20 := @this: jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase 
(assert (not (= var744 null-var281)))
(declare-const var1127 var1469) ; Statement: r2 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var1127 null-var1469)))
(declare-const var3537 var1613) ; Statement: r21 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var3537 null-var1613)))
(declare-const var1754 var2627) ; Statement: r0 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1754 null-var2627)))
(define-const var1792 var1280 var1280-init) ; Statement: $r1 = new jdk.nashorn.internal.codegen.LocalVariableTypesCalculator 
(assert true)
;(assert (<init>/316761964 var1792 var1127)) ; Statement: specialinvoke $r1.<jdk.nashorn.internal.codegen.LocalVariableTypesCalculator: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r2) 

(declare-const var1792!1 var1280)
(declare-const var1127!1 var1469)
(define-const var2583 var2627 (var2608_access$100/729536946 var1754 (cast-from-var1280-to-var3139 var1792!1))) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0, $r1) 
(assert true)
(define-const var2211 var352 (getScriptEnvironment/-476870127 var1127!1)) ; Statement: r4 = virtualinvoke r2.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>() 
(assert true)
(define-const var2929 var3113 (getErr/1279724519 var2211)) ; Statement: r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getErr()>() 
(define-const var1145 Bool (_print_lower_ast/-920435095 var2211)) ; Statement: $z0 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_ast> 
 ; Statement: if $z0 != 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var1145 1 0) 0))) ; Cond: $z0 != 0 
(define-const var195 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var195)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var195!1 String)
(assert (= var195!1 ""))
(assert true)
(define-const var2830 String (append/672562846 var195!1 "Lower AST for: ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ") 
(declare-const var195!2 String)
(assert (= var195!2 (str.++ var195!1 "Lower AST for: ")))
(assert true)
(define-const var3128 String (getName/-1714936033 var2583)) ; Statement: $r7 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(define-const var1287 String (var1598_quote/-789117686 var3128)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r7) 
(assert true)
(define-const var883 String (append/672562846 var2830 var1287)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2830!1 String)
(assert (= var2830!1 (str.++ var2830 var1287)))
(assert true)
(define-const var886 String (toString/-2075883882 var883)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2929 var886)) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r11) 

(declare-const var2929!1 var3113)
(declare-const var886!1 String)
(define-const var3464 var3190 var3190-init) ; Statement: $r12 = new jdk.nashorn.internal.ir.debug.ASTWriter 
(assert true)
;(assert (<init>/229570245 var3464 (cast-from-var2627-to-var2714 var2583))) ; Statement: specialinvoke $r12.<jdk.nashorn.internal.ir.debug.ASTWriter: void <init>(jdk.nashorn.internal.ir.Node)>(r3) 

(declare-const var3464!1 var3190)
(declare-const var2583!1 var2627)
(assert true)
;(assert (println/1363973599 var2929!1 (cast-from-var3190-to-var3015 var3464!1))) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r12) 

(declare-const var2929!2 var3113)
(declare-const var3464!2 var3190)
(assert true) ; Non Conditional
(define-const var2428 Bool (_print_lower_parse/-920435095 var2211)) ; Statement: $z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse> 
 ; Statement: if $z3 != 0 goto $r13 = new java.lang.StringBuilder 
(assert (not (not (= (ite var2428 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(assert true)
(define-const var1531 Bool (getFlag/298653294 var1754 262144)) ; Statement: $z1 = virtualinvoke r0.<jdk.nashorn.internal.ir.FunctionNode: boolean getFlag(int)>(262144) 
 ; Statement: if $z1 == 0 goto return r3 
(assert (= (ite var1531 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1280-init=([], jdk.nashorn.internal.codegen.LocalVariableTypesCalculator), <init>/316761964=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator, jdk.nashorn.internal.codegen.Compiler], void), var2608_access$100/729536946=([jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.FunctionNode), cast-from-var1280-to-var3139=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator], jdk.nashorn.internal.ir.visitor.NodeVisitor), getScriptEnvironment/-476870127=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), getErr/1279724519=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.io.PrintWriter), _print_lower_ast/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), var1598_quote/-789117686=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var3190-init=([], jdk.nashorn.internal.ir.debug.ASTWriter), <init>/229570245=([jdk.nashorn.internal.ir.debug.ASTWriter, jdk.nashorn.internal.ir.Node], void), cast-from-var2627-to-var2714=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.ir.Node), println/1363973599=([java.io.PrintWriter, java.lang.Object], void), cast-from-var3190-to-var3015=([jdk.nashorn.internal.ir.debug.ASTWriter], java.lang.Object), _print_lower_parse/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), getFlag/298653294=([jdk.nashorn.internal.ir.FunctionNode, int], boolean)}
; {var281=jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase, var744=r20, var1469=jdk.nashorn.internal.codegen.Compiler, var1127=r2, var1613=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var3537=r21, var2627=jdk.nashorn.internal.ir.FunctionNode, var1754=r0, var1280=jdk.nashorn.internal.codegen.LocalVariableTypesCalculator, var1792=$r1, var2608=jdk.nashorn.internal.codegen.CompilationPhase, var3139=jdk.nashorn.internal.ir.visitor.NodeVisitor, var2583=r3, var352=jdk.nashorn.internal.runtime.ScriptEnvironment, var2211=r4, var3113=java.io.PrintWriter, var2929=r5, var1145=$z0, var195=$r6, var2830=$r9, var3128=$r7, var1598=jdk.nashorn.internal.runtime.logging.DebugLogger, var1287=$r8, var883=$r10, var886=$r11, var3190=jdk.nashorn.internal.ir.debug.ASTWriter, var3464=$r12, var2714=jdk.nashorn.internal.ir.Node, var3015=java.lang.Object, var2428=$z3, var1531=$z1}
; {jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase=var281, r20=var744, jdk.nashorn.internal.codegen.Compiler=var1469, r2=var1127, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var1613, r21=var3537, jdk.nashorn.internal.ir.FunctionNode=var2627, r0=var1754, jdk.nashorn.internal.codegen.LocalVariableTypesCalculator=var1280, $r1=var1792, jdk.nashorn.internal.codegen.CompilationPhase=var2608, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3139, r3=var2583, jdk.nashorn.internal.runtime.ScriptEnvironment=var352, r4=var2211, java.io.PrintWriter=var3113, r5=var2929, $z0=var1145, $r6=var195, $r9=var2830, $r7=var3128, jdk.nashorn.internal.runtime.logging.DebugLogger=var1598, $r8=var1287, $r10=var883, $r11=var886, jdk.nashorn.internal.ir.debug.ASTWriter=var3190, $r12=var3464, jdk.nashorn.internal.ir.Node=var2714, java.lang.Object=var3015, $z3=var2428, $z1=var1531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase;	r2 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r21 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r0 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	$r1 = new jdk.nashorn.internal.codegen.LocalVariableTypesCalculator;	specialinvoke $r1.<jdk.nashorn.internal.codegen.LocalVariableTypesCalculator: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r2);	r3 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0, $r1);	r4 = virtualinvoke r2.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>();	r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getErr()>();	$z0 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_ast>;	if $z0 != 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ");	$r7 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r8 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r11);	$r12 = new jdk.nashorn.internal.ir.debug.ASTWriter;	specialinvoke $r12.<jdk.nashorn.internal.ir.debug.ASTWriter: void <init>(jdk.nashorn.internal.ir.Node)>(r3);	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r12);	$z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse>;	if $z3 != 0 goto $r13 = new java.lang.StringBuilder;	$z1 = virtualinvoke r0.<jdk.nashorn.internal.ir.FunctionNode: boolean getFlag(int)>(262144);	if $z1 == 0 goto return r3;	return r3
;block_num 5