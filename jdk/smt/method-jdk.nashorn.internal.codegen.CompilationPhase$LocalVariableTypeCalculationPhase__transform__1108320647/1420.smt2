(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var569 0)
(declare-sort var2894 0)
(declare-sort var3149 0)
(declare-sort var930 0)
(declare-sort var2693 0)
(declare-sort var1373 0)
(declare-sort var1703 0)
(declare-sort var436 0)
(declare-sort var1253 0)
(declare-sort var2062 0)
(declare-sort var2337 0)
(declare-sort var310 0)
(declare-sort var742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2693-init () var2693)
(declare-fun <init>/316761964 (var2693 var2894) void)
(declare-fun var1373_access$100/729536946 (var930 var1703) var930)
(declare-fun cast-from-var2693-to-var1703 (var2693) var1703)
(declare-fun getScriptEnvironment/-476870127 (var2894) var436)
(declare-fun getErr/1279724519 (var436) var1253)
(declare-fun _print_lower_ast/-920435095 (var436) Bool)
(declare-fun getFlag/298653294 (var930 Int) Bool)
(declare-fun _print_lower_parse/-920435095 (var436) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1714936033 (var930) String)
(declare-fun var2062_quote/-789117686 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var1253 String) void)
(declare-fun var2337-init () var2337)
(declare-fun <init>/1211939575 (var2337 var310) void)
(declare-fun cast-from-var930-to-var310 (var930) var310)
(declare-fun println/1363973599 (var1253 var742) void)
(declare-fun cast-from-var2337-to-var742 (var2337) var742)
(declare-const null-var569 var569)
(declare-const null-var2894 var2894)
(declare-const null-var3149 var3149)
(declare-const null-var930 var930)
(declare-const var3629 var569) ; Statement: r20 := @this: jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase 
(assert (not (= var3629 null-var569)))
(declare-const var2630 var2894) ; Statement: r2 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var2630 null-var2894)))
(declare-const var1779 var3149) ; Statement: r21 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var1779 null-var3149)))
(declare-const var1743 var930) ; Statement: r0 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1743 null-var930)))
(define-const var1238 var2693 var2693-init) ; Statement: $r1 = new jdk.nashorn.internal.codegen.LocalVariableTypesCalculator 
(assert true)
;(assert (<init>/316761964 var1238 var2630)) ; Statement: specialinvoke $r1.<jdk.nashorn.internal.codegen.LocalVariableTypesCalculator: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r2) 

(declare-const var1238!1 var2693)
(declare-const var2630!1 var2894)
(define-const var3522 var930 (var1373_access$100/729536946 var1743 (cast-from-var2693-to-var1703 var1238!1))) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0, $r1) 
(assert true)
(define-const var634 var436 (getScriptEnvironment/-476870127 var2630!1)) ; Statement: r4 = virtualinvoke r2.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>() 
(assert true)
(define-const var1223 var1253 (getErr/1279724519 var634)) ; Statement: r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getErr()>() 
(define-const var666 Bool (_print_lower_ast/-920435095 var634)) ; Statement: $z0 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_ast> 
 ; Statement: if $z0 != 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (not (= (ite var666 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3654 Bool (getFlag/298653294 var1743 1048576)) ; Statement: $z2 = virtualinvoke r0.<jdk.nashorn.internal.ir.FunctionNode: boolean getFlag(int)>(1048576) 
 ; Statement: if $z2 == 0 goto $z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse> 
(assert (= (ite var3654 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1462 Bool (_print_lower_parse/-920435095 var634)) ; Statement: $z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse> 
 ; Statement: if $z3 != 0 goto $r13 = new java.lang.StringBuilder 
(assert (not (= (ite var1462 1 0) 0))) ; Cond: $z3 != 0 
(define-const var649 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var649)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var649!1 String)
(assert (= var649!1 ""))
(assert true)
(define-const var1403 String (append/672562846 var649!1 "Lower AST for: ")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ") 
(declare-const var649!2 String)
(assert (= var649!2 (str.++ var649!1 "Lower AST for: ")))
(assert true)
(define-const var1123 String (getName/-1714936033 var3522)) ; Statement: $r14 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(define-const var2556 String (var2062_quote/-789117686 var1123)) ; Statement: $r15 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r14) 
(assert true)
(define-const var715 String (append/672562846 var1403 var2556)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1403!1 String)
(assert (= var1403!1 (str.++ var1403 var2556)))
(assert true)
(define-const var2828 String (toString/-2075883882 var715)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1223 var2828)) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r18) 

(declare-const var1223!1 var1253)
(declare-const var2828!1 String)
(define-const var2648 var2337 var2337-init) ; Statement: $r19 = new jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert true)
;(assert (<init>/1211939575 var2648 (cast-from-var930-to-var310 var3522))) ; Statement: specialinvoke $r19.<jdk.nashorn.internal.ir.debug.PrintVisitor: void <init>(jdk.nashorn.internal.ir.Node)>(r3) 

(declare-const var2648!1 var2337)
(declare-const var3522!1 var930)
(assert true)
;(assert (println/1363973599 var1223!1 (cast-from-var2337-to-var742 var2648!1))) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r19) 

(declare-const var1223!2 var1253)
(declare-const var2648!2 var2337)
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2693-init=([], jdk.nashorn.internal.codegen.LocalVariableTypesCalculator), <init>/316761964=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator, jdk.nashorn.internal.codegen.Compiler], void), var1373_access$100/729536946=([jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.FunctionNode), cast-from-var2693-to-var1703=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator], jdk.nashorn.internal.ir.visitor.NodeVisitor), getScriptEnvironment/-476870127=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), getErr/1279724519=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.io.PrintWriter), _print_lower_ast/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), getFlag/298653294=([jdk.nashorn.internal.ir.FunctionNode, int], boolean), _print_lower_parse/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), var2062_quote/-789117686=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var2337-init=([], jdk.nashorn.internal.ir.debug.PrintVisitor), <init>/1211939575=([jdk.nashorn.internal.ir.debug.PrintVisitor, jdk.nashorn.internal.ir.Node], void), cast-from-var930-to-var310=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.ir.Node), println/1363973599=([java.io.PrintWriter, java.lang.Object], void), cast-from-var2337-to-var742=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.Object)}
; {var569=jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase, var3629=r20, var2894=jdk.nashorn.internal.codegen.Compiler, var2630=r2, var3149=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var1779=r21, var930=jdk.nashorn.internal.ir.FunctionNode, var1743=r0, var2693=jdk.nashorn.internal.codegen.LocalVariableTypesCalculator, var1238=$r1, var1373=jdk.nashorn.internal.codegen.CompilationPhase, var1703=jdk.nashorn.internal.ir.visitor.NodeVisitor, var3522=r3, var436=jdk.nashorn.internal.runtime.ScriptEnvironment, var634=r4, var1253=java.io.PrintWriter, var1223=r5, var666=$z0, var3654=$z2, var1462=$z3, var649=$r13, var1403=$r16, var1123=$r14, var2062=jdk.nashorn.internal.runtime.logging.DebugLogger, var2556=$r15, var715=$r17, var2828=$r18, var2337=jdk.nashorn.internal.ir.debug.PrintVisitor, var2648=$r19, var310=jdk.nashorn.internal.ir.Node, var742=java.lang.Object}
; {jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase=var569, r20=var3629, jdk.nashorn.internal.codegen.Compiler=var2894, r2=var2630, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var3149, r21=var1779, jdk.nashorn.internal.ir.FunctionNode=var930, r0=var1743, jdk.nashorn.internal.codegen.LocalVariableTypesCalculator=var2693, $r1=var1238, jdk.nashorn.internal.codegen.CompilationPhase=var1373, jdk.nashorn.internal.ir.visitor.NodeVisitor=var1703, r3=var3522, jdk.nashorn.internal.runtime.ScriptEnvironment=var436, r4=var634, java.io.PrintWriter=var1253, r5=var1223, $z0=var666, $z2=var3654, $z3=var1462, $r13=var649, $r16=var1403, $r14=var1123, jdk.nashorn.internal.runtime.logging.DebugLogger=var2062, $r15=var2556, $r17=var715, $r18=var2828, jdk.nashorn.internal.ir.debug.PrintVisitor=var2337, $r19=var2648, jdk.nashorn.internal.ir.Node=var310, java.lang.Object=var742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase;	r2 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r21 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r0 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	$r1 = new jdk.nashorn.internal.codegen.LocalVariableTypesCalculator;	specialinvoke $r1.<jdk.nashorn.internal.codegen.LocalVariableTypesCalculator: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r2);	r3 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0, $r1);	r4 = virtualinvoke r2.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>();	r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getErr()>();	$z0 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_ast>;	if $z0 != 0 goto $r6 = new java.lang.StringBuilder;	$z2 = virtualinvoke r0.<jdk.nashorn.internal.ir.FunctionNode: boolean getFlag(int)>(1048576);	if $z2 == 0 goto $z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse>;	$z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse>;	if $z3 != 0 goto $r13 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ");	$r14 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r15 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r18);	$r19 = new jdk.nashorn.internal.ir.debug.PrintVisitor;	specialinvoke $r19.<jdk.nashorn.internal.ir.debug.PrintVisitor: void <init>(jdk.nashorn.internal.ir.Node)>(r3);	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r19);	return r3
;block_num 5