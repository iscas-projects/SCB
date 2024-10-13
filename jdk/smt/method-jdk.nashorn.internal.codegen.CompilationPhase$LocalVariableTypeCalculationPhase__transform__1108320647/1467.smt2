(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort var235 0)
(declare-sort var439 0)
(declare-sort var3600 0)
(declare-sort var721 0)
(declare-sort var1294 0)
(declare-sort var3360 0)
(declare-sort var742 0)
(declare-sort var1086 0)
(declare-sort var1052 0)
(declare-sort var3480 0)
(declare-sort var3314 0)
(declare-sort var524 0)
(declare-sort var3082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var721-init () var721)
(declare-fun <init>/316761964 (var721 var235) void)
(declare-fun var1294_access$100/729536946 (var3600 var3360) var3600)
(declare-fun cast-from-var721-to-var3360 (var721) var3360)
(declare-fun getScriptEnvironment/-476870127 (var235) var742)
(declare-fun getErr/1279724519 (var742) var1086)
(declare-fun _print_lower_ast/-920435095 (var742) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1714936033 (var3600) String)
(declare-fun var1052_quote/-789117686 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var1086 String) void)
(declare-fun var3480-init () var3480)
(declare-fun <init>/229570245 (var3480 var3314) void)
(declare-fun cast-from-var3600-to-var3314 (var3600) var3314)
(declare-fun println/1363973599 (var1086 var524) void)
(declare-fun cast-from-var3480-to-var524 (var3480) var524)
(declare-fun _print_lower_parse/-920435095 (var742) Bool)
(declare-fun var3082-init () var3082)
(declare-fun <init>/1211939575 (var3082 var3314) void)
(declare-fun cast-from-var3082-to-var524 (var3082) var524)
(declare-const null-var2930 var2930)
(declare-const null-var235 var235)
(declare-const null-var439 var439)
(declare-const null-var3600 var3600)
(declare-const var3694 var2930) ; Statement: r20 := @this: jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase 
(assert (not (= var3694 null-var2930)))
(declare-const var922 var235) ; Statement: r2 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var922 null-var235)))
(declare-const var2046 var439) ; Statement: r21 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var2046 null-var439)))
(declare-const var3635 var3600) ; Statement: r0 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var3635 null-var3600)))
(define-const var3399 var721 var721-init) ; Statement: $r1 = new jdk.nashorn.internal.codegen.LocalVariableTypesCalculator 
(assert true)
;(assert (<init>/316761964 var3399 var922)) ; Statement: specialinvoke $r1.<jdk.nashorn.internal.codegen.LocalVariableTypesCalculator: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r2) 

(declare-const var3399!1 var721)
(declare-const var922!1 var235)
(define-const var2067 var3600 (var1294_access$100/729536946 var3635 (cast-from-var721-to-var3360 var3399!1))) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0, $r1) 
(assert true)
(define-const var1586 var742 (getScriptEnvironment/-476870127 var922!1)) ; Statement: r4 = virtualinvoke r2.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>() 
(assert true)
(define-const var1327 var1086 (getErr/1279724519 var1586)) ; Statement: r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getErr()>() 
(define-const var2231 Bool (_print_lower_ast/-920435095 var1586)) ; Statement: $z0 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_ast> 
 ; Statement: if $z0 != 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var2231 1 0) 0))) ; Cond: $z0 != 0 
(define-const var78 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var78)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var78!1 String)
(assert (= var78!1 ""))
(assert true)
(define-const var1882 String (append/672562846 var78!1 "Lower AST for: ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ") 
(declare-const var78!2 String)
(assert (= var78!2 (str.++ var78!1 "Lower AST for: ")))
(assert true)
(define-const var1424 String (getName/-1714936033 var2067)) ; Statement: $r7 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(define-const var148 String (var1052_quote/-789117686 var1424)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r7) 
(assert true)
(define-const var2027 String (append/672562846 var1882 var148)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1882!1 String)
(assert (= var1882!1 (str.++ var1882 var148)))
(assert true)
(define-const var1873 String (toString/-2075883882 var2027)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1327 var1873)) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r11) 

(declare-const var1327!1 var1086)
(declare-const var1873!1 String)
(define-const var971 var3480 var3480-init) ; Statement: $r12 = new jdk.nashorn.internal.ir.debug.ASTWriter 
(assert true)
;(assert (<init>/229570245 var971 (cast-from-var3600-to-var3314 var2067))) ; Statement: specialinvoke $r12.<jdk.nashorn.internal.ir.debug.ASTWriter: void <init>(jdk.nashorn.internal.ir.Node)>(r3) 

(declare-const var971!1 var3480)
(declare-const var2067!1 var3600)
(assert true)
;(assert (println/1363973599 var1327!1 (cast-from-var3480-to-var524 var971!1))) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r12) 

(declare-const var1327!2 var1086)
(declare-const var971!2 var3480)
(assert true) ; Non Conditional
(define-const var3697 Bool (_print_lower_parse/-920435095 var1586)) ; Statement: $z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse> 
 ; Statement: if $z3 != 0 goto $r13 = new java.lang.StringBuilder 
(assert (not (= (ite var3697 1 0) 0))) ; Cond: $z3 != 0 
(define-const var2649 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2649)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2649!1 String)
(assert (= var2649!1 ""))
(assert true)
(define-const var2077 String (append/672562846 var2649!1 "Lower AST for: ")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ") 
(declare-const var2649!2 String)
(assert (= var2649!2 (str.++ var2649!1 "Lower AST for: ")))
(assert true)
(define-const var1938 String (getName/-1714936033 var2067!1)) ; Statement: $r14 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(define-const var3730 String (var1052_quote/-789117686 var1938)) ; Statement: $r15 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r14) 
(assert true)
(define-const var2750 String (append/672562846 var2077 var3730)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2077!1 String)
(assert (= var2077!1 (str.++ var2077 var3730)))
(assert true)
(define-const var2410 String (toString/-2075883882 var2750)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1327!2 var2410)) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r18) 

(declare-const var1327!3 var1086)
(declare-const var2410!1 String)
(define-const var3814 var3082 var3082-init) ; Statement: $r19 = new jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert true)
;(assert (<init>/1211939575 var3814 (cast-from-var3600-to-var3314 var2067!1))) ; Statement: specialinvoke $r19.<jdk.nashorn.internal.ir.debug.PrintVisitor: void <init>(jdk.nashorn.internal.ir.Node)>(r3) 

(declare-const var3814!1 var3082)
(declare-const var2067!2 var3600)
(assert true)
;(assert (println/1363973599 var1327!3 (cast-from-var3082-to-var524 var3814!1))) ; Statement: virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r19) 

(declare-const var1327!4 var1086)
(declare-const var3814!2 var3082)
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var721-init=([], jdk.nashorn.internal.codegen.LocalVariableTypesCalculator), <init>/316761964=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator, jdk.nashorn.internal.codegen.Compiler], void), var1294_access$100/729536946=([jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.FunctionNode), cast-from-var721-to-var3360=([jdk.nashorn.internal.codegen.LocalVariableTypesCalculator], jdk.nashorn.internal.ir.visitor.NodeVisitor), getScriptEnvironment/-476870127=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), getErr/1279724519=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.io.PrintWriter), _print_lower_ast/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), var1052_quote/-789117686=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var3480-init=([], jdk.nashorn.internal.ir.debug.ASTWriter), <init>/229570245=([jdk.nashorn.internal.ir.debug.ASTWriter, jdk.nashorn.internal.ir.Node], void), cast-from-var3600-to-var3314=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.ir.Node), println/1363973599=([java.io.PrintWriter, java.lang.Object], void), cast-from-var3480-to-var524=([jdk.nashorn.internal.ir.debug.ASTWriter], java.lang.Object), _print_lower_parse/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], boolean), var3082-init=([], jdk.nashorn.internal.ir.debug.PrintVisitor), <init>/1211939575=([jdk.nashorn.internal.ir.debug.PrintVisitor, jdk.nashorn.internal.ir.Node], void), cast-from-var3082-to-var524=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.Object)}
; {var2930=jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase, var3694=r20, var235=jdk.nashorn.internal.codegen.Compiler, var922=r2, var439=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var2046=r21, var3600=jdk.nashorn.internal.ir.FunctionNode, var3635=r0, var721=jdk.nashorn.internal.codegen.LocalVariableTypesCalculator, var3399=$r1, var1294=jdk.nashorn.internal.codegen.CompilationPhase, var3360=jdk.nashorn.internal.ir.visitor.NodeVisitor, var2067=r3, var742=jdk.nashorn.internal.runtime.ScriptEnvironment, var1586=r4, var1086=java.io.PrintWriter, var1327=r5, var2231=$z0, var78=$r6, var1882=$r9, var1424=$r7, var1052=jdk.nashorn.internal.runtime.logging.DebugLogger, var148=$r8, var2027=$r10, var1873=$r11, var3480=jdk.nashorn.internal.ir.debug.ASTWriter, var971=$r12, var3314=jdk.nashorn.internal.ir.Node, var524=java.lang.Object, var3697=$z3, var2649=$r13, var2077=$r16, var1938=$r14, var3730=$r15, var2750=$r17, var2410=$r18, var3082=jdk.nashorn.internal.ir.debug.PrintVisitor, var3814=$r19}
; {jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase=var2930, r20=var3694, jdk.nashorn.internal.codegen.Compiler=var235, r2=var922, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var439, r21=var2046, jdk.nashorn.internal.ir.FunctionNode=var3600, r0=var3635, jdk.nashorn.internal.codegen.LocalVariableTypesCalculator=var721, $r1=var3399, jdk.nashorn.internal.codegen.CompilationPhase=var1294, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3360, r3=var2067, jdk.nashorn.internal.runtime.ScriptEnvironment=var742, r4=var1586, java.io.PrintWriter=var1086, r5=var1327, $z0=var2231, $r6=var78, $r9=var1882, $r7=var1424, jdk.nashorn.internal.runtime.logging.DebugLogger=var1052, $r8=var148, $r10=var2027, $r11=var1873, jdk.nashorn.internal.ir.debug.ASTWriter=var3480, $r12=var971, jdk.nashorn.internal.ir.Node=var3314, java.lang.Object=var524, $z3=var3697, $r13=var2649, $r16=var2077, $r14=var1938, $r15=var3730, $r17=var2750, $r18=var2410, jdk.nashorn.internal.ir.debug.PrintVisitor=var3082, $r19=var3814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r20 := @this: jdk.nashorn.internal.codegen.CompilationPhase$LocalVariableTypeCalculationPhase;	r2 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r21 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r0 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	$r1 = new jdk.nashorn.internal.codegen.LocalVariableTypesCalculator;	specialinvoke $r1.<jdk.nashorn.internal.codegen.LocalVariableTypesCalculator: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r2);	r3 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r0, $r1);	r4 = virtualinvoke r2.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>();	r5 = virtualinvoke r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.io.PrintWriter getErr()>();	$z0 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_ast>;	if $z0 != 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ");	$r7 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r8 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r11);	$r12 = new jdk.nashorn.internal.ir.debug.ASTWriter;	specialinvoke $r12.<jdk.nashorn.internal.ir.debug.ASTWriter: void <init>(jdk.nashorn.internal.ir.Node)>(r3);	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r12);	$z3 = r4.<jdk.nashorn.internal.runtime.ScriptEnvironment: boolean _print_lower_parse>;	if $z3 != 0 goto $r13 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lower AST for: ");	$r14 = virtualinvoke r3.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r15 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.String)>($r18);	$r19 = new jdk.nashorn.internal.ir.debug.PrintVisitor;	specialinvoke $r19.<jdk.nashorn.internal.ir.debug.PrintVisitor: void <init>(jdk.nashorn.internal.ir.Node)>(r3);	virtualinvoke r5.<java.io.PrintWriter: void println(java.lang.Object)>($r19);	return r3
;block_num 5