(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort var593 0)
(declare-sort var1656 0)
(declare-sort var2046 0)
(declare-sort var3027 0)
(declare-sort var2713 0)
(declare-sort var2066 0)
(declare-sort var3245 0)
(declare-sort var862 0)
(declare-sort var30 0)
(declare-sort var3349 0)
(declare-sort var1517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getScriptEnvironment/-476870127 (var593) var3027)
(declare-fun getCompileUnit/731680791 (var2046) var2713)
(declare-fun setUsed/-627326875 (var2713) void)
(declare-fun getLogger/-1250962715 (var593) var2066)
(declare-fun arr-var3245-init () (Array Int var3245))
(declare-fun cast-from-String-to-var3245 (String) var3245)
(declare-fun getName/-1714936033 (var2046) String)
(declare-fun var2066_quote/-789117686 (String) String)
(declare-fun isRestOfCompilation/-1069990053 (var1656) Bool)
(declare-fun var862_valueOf/1602327315 (Bool) var862)
(declare-fun cast-from-var862-to-var3245 (var862) var3245)
(declare-fun fine/-2108153917 (var2066 (Array Int var3245)) void)
(declare-fun var30-init () var30)
(declare-fun getContinuationEntryPoints/-966615575 (var593) (Array Int Int))
(declare-fun <init>/38441583 (var30 var593 (Array Int Int)) void)
(declare-fun var1517-init () var1517)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSourceName/1081801924 (var2046) String)
(declare-fun getLastLineNumber/-1541809191 (var30) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/42819552 (var1517 String var3349) void)
(declare-const null-var2325 var2325)
(declare-const null-var593 var593)
(declare-const null-var1656 var1656)
(declare-const null-var2046 var2046)
(declare-const null-__Array__Int__var3245__ (Array Int var3245))
(declare-const null-var3349 var3349)
(declare-const var3370 var2325) ; Statement: r43 := @this: jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase 
(assert (not (= var3370 null-var2325)))
(declare-const var2043 var593) ; Statement: r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var2043 null-var593)))
(declare-const var3303 var1656) ; Statement: r7 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var3303 null-var1656)))
(declare-const var3592 var2046) ; Statement: r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var3592 null-var2046)))
(assert true)
(define-const var107 var3027 (getScriptEnvironment/-476870127 var2043)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>() 
(define-const var2456 var2046 var3592) ; Statement: r44 = r2 
(assert true)
(define-const var1967 var2713 (getCompileUnit/731680791 var3592)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>() 
(assert true)
;(assert (setUsed/-627326875 var1967)) ; Statement: virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompileUnit: void setUsed()>() 

(declare-const var1967!1 var2713)
(assert true)
(define-const var3500 var2066 (getLogger/-1250962715 var2043)) ; Statement: $r9 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger()>() 
(define-const var733 (Array Int var3245) arr-var3245-init) ; Statement: $r4 = newarray (java.lang.Object)[4] 
(declare-const var733!1 (Array Int var3245))
(assert (not (= var733!1 null-__Array__Int__var3245__)))
(assert (= (select var733!1 0) (cast-from-String-to-var3245 "Starting bytecode generation for "))) ; Statement: $r4[0] = "Starting bytecode generation for " 
(assert true)
(define-const var1557 String (getName/-1714936033 var3592)) ; Statement: $r5 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(define-const var979 String (var2066_quote/-789117686 var1557)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r5) 
(declare-const var733!2 (Array Int var3245))
(assert (not (= var733!2 null-__Array__Int__var3245__)))
(assert (= (select var733!2 1) (cast-from-String-to-var3245 var979))) ; Statement: $r4[1] = $r6 
(declare-const var733!3 (Array Int var3245))
(assert (not (= var733!3 null-__Array__Int__var3245__)))
(assert (= (select var733!3 2) (cast-from-String-to-var3245 " - restOf="))) ; Statement: $r4[2] = " - restOf=" 
(assert true)
(define-const var3617 Bool (isRestOfCompilation/-1069990053 var3303)) ; Statement: $z0 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>() 
(define-const var498 var862 (var862_valueOf/1602327315 var3617)) ; Statement: $r8 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
(declare-const var733!4 (Array Int var3245))
(assert (not (= var733!4 null-__Array__Int__var3245__)))
(assert (= (select var733!4 3) (cast-from-var862-to-var3245 var498))) ; Statement: $r4[3] = $r8 
(assert true)
;(assert (fine/-2108153917 var3500 var733!4)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.runtime.logging.DebugLogger: void fine(java.lang.Object[])>($r4) 

(declare-const var3500!1 var2066)
(declare-const var733!5 (Array Int var3245))
(define-const var1493 var30 var30-init) ; Statement: $r10 = new jdk.nashorn.internal.codegen.CodeGenerator 
(assert true)
(define-const var3688 Bool (isRestOfCompilation/-1069990053 var3303)) ; Statement: $z1 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>() 
 ; Statement: if $z1 == 0 goto $r45 = null 
(assert (not (= (ite var3688 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1201 (Array Int Int) (getContinuationEntryPoints/-966615575 var2043)) ; Statement: $r45 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: int[] getContinuationEntryPoints()>() 
 ; Statement: goto [?= specialinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: void <init>(jdk.nashorn.internal.codegen.Compiler,int[])>(r0, $r45)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/38441583 var1493 var2043 var1201)) ; Statement: specialinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: void <init>(jdk.nashorn.internal.codegen.Compiler,int[])>(r0, $r45) 

(declare-const var1493!1 var30)
(declare-const var2043!1 var593)
(declare-const var1201!1 (Array Int Int))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var117 var3349) ; Statement: $r22 := @caughtexception 
(assert (not (= var117 null-var3349)))
(define-const var168 var1517 var1517-init) ; Statement: $r23 = new java.lang.AssertionError 
(define-const var1589 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1589)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1589!1 String)
(assert (= var1589!1 ""))
(assert true)
(define-const var706 String (append/672562846 var1589!1 "Failed generating bytecode for ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed generating bytecode for ") 
(declare-const var1589!2 String)
(assert (= var1589!2 (str.++ var1589!1 "Failed generating bytecode for ")))
(assert true)
(define-const var1858 String (getSourceName/1081801924 var3592)) ; Statement: $r25 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getSourceName()>() 
(assert true)
(define-const var6 String (append/672562846 var706 var1858)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var706!1 String)
(assert (= var706!1 (str.++ var706 var1858)))
(assert true)
(define-const var830 String (append/672562846 var6 ":")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var6!1 String)
(assert (= var6!1 (str.++ var6 ":")))
(assert true)
(define-const var3364 Int (getLastLineNumber/-1541809191 var1493!1)) ; Statement: $i0 = virtualinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: int getLastLineNumber()>() 
(assert true)
(define-const var3917 String (append/-1001720160 var830 var3364)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var830!1 String)
(assert (str.prefixof var830 var830!1))
(assert true)
(define-const var2297 String (toString/-2075883882 var3917)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/42819552 var168 var2297 var117)) ; Statement: specialinvoke $r23.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r22) 

(declare-const var168!1 var1517)
(declare-const var2297!1 String)
(declare-const var117!1 var3349)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getScriptEnvironment/-476870127=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.ScriptEnvironment), getCompileUnit/731680791=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.CompileUnit), setUsed/-627326875=([jdk.nashorn.internal.codegen.CompileUnit], void), getLogger/-1250962715=([jdk.nashorn.internal.codegen.Compiler], jdk.nashorn.internal.runtime.logging.DebugLogger), arr-var3245-init=([], java.lang.Object[]), cast-from-String-to-var3245=([java.lang.String], java.lang.Object), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), var2066_quote/-789117686=([java.lang.String], java.lang.String), isRestOfCompilation/-1069990053=([jdk.nashorn.internal.codegen.Compiler$CompilationPhases], boolean), var862_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var862-to-var3245=([java.lang.Boolean], java.lang.Object), fine/-2108153917=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.Object[]], void), var30-init=([], jdk.nashorn.internal.codegen.CodeGenerator), getContinuationEntryPoints/-966615575=([jdk.nashorn.internal.codegen.Compiler], int[]), <init>/38441583=([jdk.nashorn.internal.codegen.CodeGenerator, jdk.nashorn.internal.codegen.Compiler, int[]], void), var1517-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSourceName/1081801924=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), getLastLineNumber/-1541809191=([jdk.nashorn.internal.codegen.CodeGenerator], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/42819552=([java.lang.AssertionError, java.lang.String, java.lang.Throwable], void)}
; {var2325=jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase, var3370=r43, var593=jdk.nashorn.internal.codegen.Compiler, var2043=r0, var1656=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var3303=r7, var2046=jdk.nashorn.internal.ir.FunctionNode, var3592=r2, var3027=jdk.nashorn.internal.runtime.ScriptEnvironment, var107=r1, var2456=r44, var2713=jdk.nashorn.internal.codegen.CompileUnit, var1967=$r3, var2066=jdk.nashorn.internal.runtime.logging.DebugLogger, var3500=$r9, var3245=java.lang.Object, var733=$r4, var1557=$r5, var979=$r6, var3617=$z0, var862=java.lang.Boolean, var498=$r8, var30=jdk.nashorn.internal.codegen.CodeGenerator, var1493=$r10, var3688=$z1, var1201=$r45, var3349=java.lang.Throwable, var117=$r22, var1517=java.lang.AssertionError, var168=$r23, var1589=$r24, var706=$r26, var1858=$r25, var6=$r27, var830=$r28, var3364=$i0, var3917=$r29, var2297=$r30}
; {jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase=var2325, r43=var3370, jdk.nashorn.internal.codegen.Compiler=var593, r0=var2043, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var1656, r7=var3303, jdk.nashorn.internal.ir.FunctionNode=var2046, r2=var3592, jdk.nashorn.internal.runtime.ScriptEnvironment=var3027, r1=var107, r44=var2456, jdk.nashorn.internal.codegen.CompileUnit=var2713, $r3=var1967, jdk.nashorn.internal.runtime.logging.DebugLogger=var2066, $r9=var3500, java.lang.Object=var3245, $r4=var733, $r5=var1557, $r6=var979, $z0=var3617, java.lang.Boolean=var862, $r8=var498, jdk.nashorn.internal.codegen.CodeGenerator=var30, $r10=var1493, $z1=var3688, $r45=var1201, java.lang.Throwable=var3349, $r22=var117, java.lang.AssertionError=var1517, $r23=var168, $r24=var1589, $r26=var706, $r25=var1858, $r27=var6, $r28=var830, $i0=var3364, $r29=var3917, $r30=var2297}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r43 := @this: jdk.nashorn.internal.codegen.CompilationPhase$BytecodeGenerationPhase;	r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r7 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.ScriptEnvironment getScriptEnvironment()>();	r44 = r2;	$r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>();	virtualinvoke $r3.<jdk.nashorn.internal.codegen.CompileUnit: void setUsed()>();	$r9 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger()>();	$r4 = newarray (java.lang.Object)[4];	$r4[0] = "Starting bytecode generation for ";	$r5 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r6 = staticinvoke <jdk.nashorn.internal.runtime.logging.DebugLogger: java.lang.String quote(java.lang.String)>($r5);	$r4[1] = $r6;	$r4[2] = " - restOf=";	$z0 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>();	$r8 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	$r4[3] = $r8;	virtualinvoke $r9.<jdk.nashorn.internal.runtime.logging.DebugLogger: void fine(java.lang.Object[])>($r4);	$r10 = new jdk.nashorn.internal.codegen.CodeGenerator;	$z1 = virtualinvoke r7.<jdk.nashorn.internal.codegen.Compiler$CompilationPhases: boolean isRestOfCompilation()>();	if $z1 == 0 goto $r45 = null;	$r45 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: int[] getContinuationEntryPoints()>();	goto [?= specialinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: void <init>(jdk.nashorn.internal.codegen.Compiler,int[])>(r0, $r45)];	specialinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: void <init>(jdk.nashorn.internal.codegen.Compiler,int[])>(r0, $r45);	$r22 := @caughtexception;	$r23 = new java.lang.AssertionError;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed generating bytecode for ");	$r25 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getSourceName()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = virtualinvoke $r10.<jdk.nashorn.internal.codegen.CodeGenerator: int getLastLineNumber()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.AssertionError: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r22);	throw $r23
;block_num 4