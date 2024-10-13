(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2934 0)
(declare-sort var505 0)
(declare-sort var2548 0)
(declare-sort var1588 0)
(declare-sort var3708 0)
(declare-sort var1810 0)
(declare-sort var1444 0)
(declare-sort var1024 0)
(declare-sort var621 0)
(declare-sort var1829 0)
(declare-sort var3716 0)
(declare-sort var3993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScriptEnvironment/-476870127 (var505) var3708)
(declare-fun getCompileUnit/731680791 (var1588) var1810)
(declare-fun setUsed/-627326875 (var1810) void)
(declare-fun getLogger/-1250962715 (var505) var1444)
(declare-fun arr-var1024-init () (Array Int var1024))
(declare-fun cast-from-String-to-var1024 (String) var1024)
(declare-fun getName/-1714936033 (var1588) String)
(declare-fun var1444_quote/-789117686 (String) String)
(declare-fun isRestOfCompilation/-1069990053 (var2548) Bool)
(declare-fun var621_valueOf/1602327315 (Bool) var621)
(declare-fun cast-from-var621-to-var1024 (var621) var1024)
(declare-fun fine/-2108153917 (var1444 (Array Int var1024)) void)
(declare-fun var1829-init () var1829)
(declare-fun <init>/38441583 (var1829 var505 (Array Int Int)) void)
(declare-fun var3993-init () var3993)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSourceName/1081801924 (var1588) String)
(declare-fun getLastLineNumber/-1541809191 (var1829) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/42819552 (var3993 String var3716) void)
(declare-const null-var2934 var2934)
(declare-const null-var505 var505)
(declare-const null-var2548 var2548)
(declare-const null-var1588 var1588)
(declare-const null-__Array__Int__var1024__ (Array Int var1024))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var3716 var3716)
(declare-const var1318 var2934) ; Statement: r43 := @this: jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase 
(assert (not (= var1318 null-var2934)))
(declare-const var2170 var505) ; Statement: r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var2170 null-var505)))
(declare-const var3652 var2548) ; Statement: r7 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var3652 null-var2548)))
(declare-const var1256 var1588) ; Statement: r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1256 null-var1588)))
(assert true)
(define-const var264 var3708 (getScriptEnvironment/-476870127 var2170)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>() 
(define-const var3870 var1588 var1256) ; Statement: r44 = r2 
(assert true)
(define-const var1204 var1810 (getCompileUnit/731680791 var1256)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>() 
(assert true)
;(assert (setUsed/-627326875 var1204)) ; Statement: virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompileUnit: void setUsed()>() 

(declare-const var1204!1 var1810)
(assert true)
(define-const var152 var1444 (getLogger/-1250962715 var2170)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger()>() 
(define-const var1264 (Array Int var1024) arr-var1024-init) ; Statement: $r4 = newarray (java.lang.Object)[4] 
(declare-const var1264!1 (Array Int var1024))
(assert (not (= var1264!1 null-__Array__Int__var1024__)))
(assert (= (select var1264!1 0) (cast-from-String-to-var1024 "Starting bytecode generation for "))) ; Statement: $r4[0] = "Starting bytecode generation for " 
(assert true)
(define-const var3227 String (getName/-1714936033 var1256)) ; Statement: $r5 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(define-const var625 String (var1444_quote/-789117686 var3227)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r5) 
(declare-const var1264!2 (Array Int var1024))
(assert (not (= var1264!2 null-__Array__Int__var1024__)))
(assert (= (select var1264!2 1) (cast-from-String-to-var1024 var625))) ; Statement: $r4[1] = $r6 
(declare-const var1264!3 (Array Int var1024))
(assert (not (= var1264!3 null-__Array__Int__var1024__)))
(assert (= (select var1264!3 2) (cast-from-String-to-var1024 " - restOf="))) ; Statement: $r4[2] = " - restOf=" 
(assert true)
(define-const var2881 Bool (isRestOfCompilation/-1069990053 var3652)) ; Statement: $z0 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>() 
(define-const var604 var621 (var621_valueOf/1602327315 var2881)) ; Statement: $r8 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
(declare-const var1264!4 (Array Int var1024))
(assert (not (= var1264!4 null-__Array__Int__var1024__)))
(assert (= (select var1264!4 3) (cast-from-var621-to-var1024 var604))) ; Statement: $r4[3] = $r8 
(assert true)
;(assert (fine/-2108153917 var152 var1264!4)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.runtime.logging.DebugLogger: void fine(java.lang.Object[])>($r4) 

(declare-const var152!1 var1444)
(declare-const var1264!5 (Array Int var1024))
(define-const var1380 var1829 var1829-init) ; Statement: $r10 = new jdk.nashorn.internal.codegen.CodeGenerator 
(assert true)
(define-const var2644 Bool (isRestOfCompilation/-1069990053 var3652)) ; Statement: $z1 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>() 
 ; Statement: if $z1 == 0 goto $r45 = null 
(assert (= (ite var2644 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1721 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r45 = null 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/38441583 var1380 var2170 var1721)) ; Statement: specialinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: void <init>(jdk.nashorn.internal.codegen.Compiler,int[])>(r0, $r45) 

(declare-const var1380!1 var1829)
(declare-const var2170!1 var505)
(declare-const var1721!1 (Array Int Int))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3579 var3716) ; Statement: $r22 := @caughtexception 
(assert (not (= var3579 null-var3716)))
(define-const var3320 var3993 var3993-init) ; Statement: $r23 = new java.lang.AssertionError 
(define-const var1035 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1035)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1035!1 String)
(assert (= var1035!1 ""))
(assert true)
(define-const var1581 String (append/672562846 var1035!1 "Failed generating bytecode for ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed generating bytecode for ") 
(declare-const var1035!2 String)
(assert (= var1035!2 (str.++ var1035!1 "Failed generating bytecode for ")))
(assert true)
(define-const var3088 String (getSourceName/1081801924 var1256)) ; Statement: $r25 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getSourceName()>() 
(assert true)
(define-const var3002 String (append/672562846 var1581 var3088)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1581!1 String)
(assert (= var1581!1 (str.++ var1581 var3088)))
(assert true)
(define-const var2249 String (append/672562846 var3002 ":")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3002!1 String)
(assert (= var3002!1 (str.++ var3002 ":")))
(assert true)
(define-const var1494 Int (getLastLineNumber/-1541809191 var1380!1)) ; Statement: $i0 = virtualinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: int getLastLineNumber()>() 
(assert true)
(define-const var2754 String (append/-1001720160 var2249 var1494)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2249!1 String)
(assert (str.prefixof var2249 var2249!1))
(assert true)
(define-const var3267 String (toString/-2075883882 var2754)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/42819552 var3320 var3267 var3579)) ; Statement: specialinvoke $r23.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r22) 

(declare-const var3320!1 var3993)
(declare-const var3267!1 String)
(declare-const var3579!1 var3716)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getScriptEnvironment/-476870127=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), getCompileUnit/731680791=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.CompileUnit), setUsed/-627326875=([jdk.nashorn.internal.codegen.CompileUnit], void), getLogger/-1250962715=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.logging.DebugLogger), arr-var1024-init=([], java.lang.Object[]), cast-from-String-to-var1024=([java.lang.String], java.lang.Object), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), var1444_quote/-789117686=([java.lang.String], java.lang.String), isRestOfCompilation/-1069990053=([jdk.nashorn.internal.codegen.Compiler$CompilationPhases], boolean), var621_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var621-to-var1024=([java.lang.Boolean], java.lang.Object), fine/-2108153917=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.Object[]], void), var1829-init=([], jdk.nashorn.internal.codegen.CodeGenerator), <init>/38441583=([jdk.nashorn.internal.codegen.CodeGenerator, jdk.nashorn.internal.codegen.Compiler, int[]], void), var3993-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSourceName/1081801924=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), getLastLineNumber/-1541809191=([jdk.nashorn.internal.codegen.CodeGenerator], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/42819552=([java.lang.AssertionError, java.lang.String, java.lang.Throwable], void)}
; {var2934=jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase, var1318=r43, var505=jdk.nashorn.internal.codegen.Compiler, var2170=r0, var2548=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var3652=r7, var1588=jdk.nashorn.internal.ir.FunctionNode, var1256=r2, var3708=jdk.nashorn.internal.runtime.ScriptEnvironment, var264=r1, var3870=r44, var1810=jdk.nashorn.internal.codegen.CompileUnit, var1204=$r3, var1444=jdk.nashorn.internal.runtime.logging.DebugLogger, var152=$r9, var1024=java.lang.Object, var1264=$r4, var3227=$r5, var625=$r6, var2881=$z0, var621=java.lang.Boolean, var604=$r8, var1829=jdk.nashorn.internal.codegen.CodeGenerator, var1380=$r10, var2644=$z1, var1721=$r45, var3716=java.lang.Throwable, var3579=$r22, var3993=java.lang.AssertionError, var3320=$r23, var1035=$r24, var1581=$r26, var3088=$r25, var3002=$r27, var2249=$r28, var1494=$i0, var2754=$r29, var3267=$r30}
; {jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase=var2934, r43=var1318, jdk.nashorn.internal.codegen.Compiler=var505, r0=var2170, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var2548, r7=var3652, jdk.nashorn.internal.ir.FunctionNode=var1588, r2=var1256, jdk.nashorn.internal.runtime.ScriptEnvironment=var3708, r1=var264, r44=var3870, jdk.nashorn.internal.codegen.CompileUnit=var1810, $r3=var1204, jdk.nashorn.internal.runtime.logging.DebugLogger=var1444, $r9=var152, java.lang.Object=var1024, $r4=var1264, $r5=var3227, $r6=var625, $z0=var2881, java.lang.Boolean=var621, $r8=var604, jdk.nashorn.internal.codegen.CodeGenerator=var1829, $r10=var1380, $z1=var2644, $r45=var1721, java.lang.Throwable=var3716, $r22=var3579, java.lang.AssertionError=var3993, $r23=var3320, $r24=var1035, $r26=var1581, $r25=var3088, $r27=var3002, $r28=var2249, $i0=var1494, $r29=var2754, $r30=var3267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r43 := @this: jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase;	r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r7 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>();	r44 = r2;	$r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>();	virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompileUnit: void setUsed()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger()>();	$r4 = newarray (java.lang.Object)[4];	$r4[0] = "Starting bytecode generation for ";	$r5 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r6 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r5);	$r4[1] = $r6;	$r4[2] = " - restOf=";	$z0 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>();	$r8 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	$r4[3] = $r8;	virtualinvoke $r9.<jdk.nashorn.internal.runtime.logging.DebugLogger: void fine(java.lang.Object[])>($r4);	$r10 = new jdk.nashorn.internal.codegen.CodeGenerator;	$z1 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>();	if $z1 == 0 goto $r45 = null;	$r45 = null;	specialinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: void <init>(jdk.nashorn.internal.codegen.Compiler,int[])>(r0, $r45);	$r22 := @caughtexception;	$r23 = new java.lang.AssertionError;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed generating bytecode for ");	$r25 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getSourceName()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = virtualinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: int getLastLineNumber()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r22);	throw $r23
;block_num 4