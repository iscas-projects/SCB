(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var2436 0)
(declare-sort var807 0)
(declare-sort var2143 0)
(declare-sort var1082 0)
(declare-sort var492 0)
(declare-sort var1657 0)
(declare-sort var3078 0)
(declare-sort var1050 0)
(declare-sort var2812 0)
(declare-sort var1116 0)
(declare-sort var99 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addCompileUnit/-1852081373 (var2436 Int) var1082)
(declare-fun var492-init () var492)
(declare-fun <init>/-2050474268 (var492 var1368) void)
(declare-fun var1657_access$100/729536946 (var2143 var3078) var2143)
(declare-fun cast-from-var492-to-var3078 (var492) var3078)
(declare-fun var1050-init () var1050)
(declare-fun <init>/2107716518 (var1050 var2436 var2143 var1082) void)
(declare-fun split/1599935578 (var1050 var2143 Bool) var2143)
(declare-fun var2812-init () var2812)
(declare-fun <init>/-1786067521 (var2812 var2436) void)
(declare-fun cast-from-var2812-to-var3078 (var2812) var3078)
(declare-fun getCompileUnit/731680791 (var2143) var1082)
(declare-fun var1116-init () var1116)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1714936033 (var2143) String)
(declare-fun append/-1031950772 (String var99) String)
(declare-fun cast-from-var1082-to-var99 (var1082) var99)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1116 var99) void)
(declare-fun cast-from-String-to-var99 (String) var99)
(declare-const null-var1368 var1368)
(declare-const null-var2436 var2436)
(declare-const null-var807 var807)
(declare-const null-var2143 var2143)
(declare-const var1368-$assertionsDisabled Bool)
(declare-const var9 var1368) ; Statement: r4 := @this: jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase 
(assert (not (= var9 null-var1368)))
(declare-const var566 var2436) ; Statement: r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler 
(assert (not (= var566 null-var2436)))
(declare-const var3229 var807) ; Statement: r26 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases 
(assert (not (= var3229 null-var807)))
(declare-const var3519 var2143) ; Statement: r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var3519 null-var2143)))
(assert true)
(define-const var1178 var1082 (addCompileUnit/-1852081373 var566 0)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.CompileUnit addCompileUnit(long)>(0L) 
(define-const var2912 var492 var492-init) ; Statement: $r3 = new jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1 
(assert true)
;(assert (<init>/-2050474268 var2912 var9)) ; Statement: specialinvoke $r3.<jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1: void <init>(jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase)>(r4) 

(declare-const var2912!1 var492)
(declare-const var9!1 var1368)
(define-const var3822 var2143 (var1657_access$100/729536946 var3519 (cast-from-var492-to-var3078 var2912!1))) ; Statement: r27 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r2, $r3) 
(define-const var3184 var1050 var1050-init) ; Statement: $r5 = new jdk.nashorn.internal.codegen.Splitter 
(assert true)
;(assert (<init>/2107716518 var3184 var566 var3822 var1178)) ; Statement: specialinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: void <init>(jdk.nashorn.internal.codegen.Compiler,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.codegen.CompileUnit)>(r0, r27, r1) 

(declare-const var3184!1 var1050)
(declare-const var566!1 var2436)
(declare-const var3822!1 var2143)
(declare-const var1178!1 var1082)
(assert true)
(define-const var2581 var2143 (split/1599935578 var3184!1 var3822!1 (ite (= 1 1) true false))) ; Statement: r28 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: jdk.nashorn.internal.ir.FunctionNode split(jdk.nashorn.internal.ir.FunctionNode,boolean)>(r27, 1) 
(define-const var131 var2812 var2812-init) ; Statement: $r6 = new jdk.nashorn.internal.codegen.SplitIntoFunctions 
(assert true)
;(assert (<init>/-1786067521 var131 var566!1)) ; Statement: specialinvoke $r6.<jdk.nashorn.internal.codegen.SplitIntoFunctions: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r0) 

(declare-const var131!1 var2812)
(declare-const var566!2 var2436)
(define-const var483 var2143 (var1657_access$100/729536946 var2581 (cast-from-var2812-to-var3078 var131!1))) ; Statement: r29 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r28, $r6) 
(define-const var1417 Bool var1368-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled> 
(assert (not (not (= (ite var1417 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2196 var1082 (getCompileUnit/731680791 var483)) ; Statement: $r14 = virtualinvoke r29.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>() 
 ; Statement: if $r14 == r1 goto $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled> 
(assert (not (= var2196 var1178!1))) ; Negate: Cond: $r14 == r1  
(define-const var1597 var1116 var1116-init) ; Statement: $r15 = new java.lang.AssertionError 
(define-const var2444 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2444)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2444!1 String)
(assert (= var2444!1 ""))
(assert true)
(define-const var1084 String (append/672562846 var2444!1 "fn=")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fn=") 
(declare-const var2444!2 String)
(assert (= var2444!2 (str.++ var2444!1 "fn=")))
(assert true)
(define-const var3038 String (getName/-1714936033 var3519)) ; Statement: $r17 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(assert true)
(define-const var1485 String (append/672562846 var1084 var3038)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1084!1 String)
(assert (= var1084!1 (str.++ var1084 var3038)))
(assert true)
(define-const var1103 String (append/672562846 var1485 ", fn.compileUnit (")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fn.compileUnit (") 
(declare-const var1485!1 String)
(assert (= var1485!1 (str.++ var1485 ", fn.compileUnit (")))
(assert true)
(define-const var1341 var1082 (getCompileUnit/731680791 var483)) ; Statement: $r20 = virtualinvoke r29.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>() 
(assert true)
(define-const var2753 String (append/-1031950772 var1103 (cast-from-var1082-to-var99 var1341))) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r20) 
(declare-const var1103!1 String)
(assert (str.prefixof var1103 var1103!1))
(assert true)
(define-const var2234 String (append/672562846 var2753 ") != ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") != ") 
(declare-const var2753!1 String)
(assert (= var2753!1 (str.++ var2753 ") != ")))
(assert true)
(define-const var1917 String (append/-1031950772 var2234 (cast-from-var1082-to-var99 var1178!1))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2234!1 String)
(assert (str.prefixof var2234 var2234!1))
(assert true)
(define-const var2950 String (toString/-2075883882 var1917)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1597 (cast-from-String-to-var99 var2950))) ; Statement: specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25) 

(declare-const var1597!1 var1116)
(declare-const var2950!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {addCompileUnit/-1852081373=([jdk.nashorn.internal.codegen.Compiler, long], jdk.nashorn.internal.codegen.CompileUnit), var492-init=([], jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1), <init>/-2050474268=([jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1, jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase], void), var1657_access$100/729536946=([jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.ir.visitor.NodeVisitor], jdk.nashorn.internal.ir.FunctionNode), cast-from-var492-to-var3078=([jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1], jdk.nashorn.internal.ir.visitor.NodeVisitor), var1050-init=([], jdk.nashorn.internal.codegen.Splitter), <init>/2107716518=([jdk.nashorn.internal.codegen.Splitter, jdk.nashorn.internal.codegen.Compiler, jdk.nashorn.internal.ir.FunctionNode, jdk.nashorn.internal.codegen.CompileUnit], void), split/1599935578=([jdk.nashorn.internal.codegen.Splitter, jdk.nashorn.internal.ir.FunctionNode, boolean], jdk.nashorn.internal.ir.FunctionNode), var2812-init=([], jdk.nashorn.internal.codegen.SplitIntoFunctions), <init>/-1786067521=([jdk.nashorn.internal.codegen.SplitIntoFunctions, jdk.nashorn.internal.codegen.Compiler], void), cast-from-var2812-to-var3078=([jdk.nashorn.internal.codegen.SplitIntoFunctions], jdk.nashorn.internal.ir.visitor.NodeVisitor), getCompileUnit/731680791=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.codegen.CompileUnit), var1116-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1082-to-var99=([jdk.nashorn.internal.codegen.CompileUnit], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var99=([java.lang.String], java.lang.Object)}
; {var1368=jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase, var9=r4, var2436=jdk.nashorn.internal.codegen.Compiler, var566=r0, var807=jdk.nashorn.internal.codegen.Compiler$CompilationPhases, var3229=r26, var2143=jdk.nashorn.internal.ir.FunctionNode, var3519=r2, var1082=jdk.nashorn.internal.codegen.CompileUnit, var1178=r1, var492=jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1, var2912=$r3, var1657=jdk.nashorn.internal.codegen.CompilationPhase, var3078=jdk.nashorn.internal.ir.visitor.NodeVisitor, var3822=r27, var1050=jdk.nashorn.internal.codegen.Splitter, var3184=$r5, var2581=r28, var2812=jdk.nashorn.internal.codegen.SplitIntoFunctions, var131=$r6, var483=r29, var1417=$z0, var2196=$r14, var1116=java.lang.AssertionError, var1597=$r15, var2444=$r16, var1084=$r18, var3038=$r17, var1485=$r19, var1103=$r21, var1341=$r20, var99=java.lang.Object, var2753=$r22, var2234=$r23, var1917=$r24, var2950=$r25}
; {jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase=var1368, r4=var9, jdk.nashorn.internal.codegen.Compiler=var2436, r0=var566, jdk.nashorn.internal.codegen.Compiler$CompilationPhases=var807, r26=var3229, jdk.nashorn.internal.ir.FunctionNode=var2143, r2=var3519, jdk.nashorn.internal.codegen.CompileUnit=var1082, r1=var1178, jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1=var492, $r3=var2912, jdk.nashorn.internal.codegen.CompilationPhase=var1657, jdk.nashorn.internal.ir.visitor.NodeVisitor=var3078, r27=var3822, jdk.nashorn.internal.codegen.Splitter=var1050, $r5=var3184, r28=var2581, jdk.nashorn.internal.codegen.SplitIntoFunctions=var2812, $r6=var131, r29=var483, $z0=var1417, $r14=var2196, java.lang.AssertionError=var1116, $r15=var1597, $r16=var2444, $r18=var1084, $r17=var3038, $r19=var1485, $r21=var1103, $r20=var1341, java.lang.Object=var99, $r22=var2753, $r23=var2234, $r24=var1917, $r25=var2950}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase;	r0 := @parameter0: jdk.nashorn.internal.codegen.Compiler;	r26 := @parameter1: jdk.nashorn.internal.codegen.Compiler$CompilationPhases;	r2 := @parameter2: jdk.nashorn.internal.ir.FunctionNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Compiler: jdk.nashorn.internal.codegen.CompileUnit addCompileUnit(long)>(0L);	$r3 = new jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1;	specialinvoke $r3.<jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase$1: void <init>(jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase)>(r4);	r27 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r2, $r3);	$r5 = new jdk.nashorn.internal.codegen.Splitter;	specialinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: void <init>(jdk.nashorn.internal.codegen.Compiler,jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.codegen.CompileUnit)>(r0, r27, r1);	r28 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.Splitter: jdk.nashorn.internal.ir.FunctionNode split(jdk.nashorn.internal.ir.FunctionNode,boolean)>(r27, 1);	$r6 = new jdk.nashorn.internal.codegen.SplitIntoFunctions;	specialinvoke $r6.<jdk.nashorn.internal.codegen.SplitIntoFunctions: void <init>(jdk.nashorn.internal.codegen.Compiler)>(r0);	r29 = staticinvoke <jdk.nashorn.internal.codegen.CompilationPhase: jdk.nashorn.internal.ir.FunctionNode access$100(jdk.nashorn.internal.ir.FunctionNode,jdk.nashorn.internal.ir.visitor.NodeVisitor)>(r28, $r6);	$z0 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled>;	$r14 = virtualinvoke r29.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>();	if $r14 == r1 goto $z1 = <jdk.nashorn.internal.codegen.CompilationPhase$SplittingPhase: boolean $assertionsDisabled>;	$r15 = new java.lang.AssertionError;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fn=");	$r17 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", fn.compileUnit (");	$r20 = virtualinvoke r29.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.codegen.CompileUnit getCompileUnit()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") != ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25);	throw $r15
;block_num 3