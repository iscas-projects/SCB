(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var3526 0)
(declare-sort var3648 0)
(declare-sort var2516 0)
(declare-sort var1202 0)
(declare-sort var458 0)
(declare-sort var2090 0)
(declare-sort var3018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3526) var2516)
(declare-fun objectClass/1968396404 (var3526) ClassObject)
(declare-fun fieldClass/-2048851183 (var3648) ClassObject)
(declare-fun method/-2048851183 (var3648) var1202)
(declare-fun cast-from-var1202-to-var458 (var1202) var458)
(declare-fun getFunction/604745076 (var3648) var2090)
(declare-fun visitVarInsn/-915853820 (var2516 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var2516 Int String) void)
(declare-fun var458_getName/-545027370 (var458) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3018_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var2516 Int String String String Bool) void)
(declare-const null-var2755 var2755)
(declare-const null-var3526 var3526)
(declare-const null-var3648 var3648)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1202 var1202)
(declare-const null-var458 var458)
(declare-const var3241 var2755) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3241 null-var2755)))
(declare-const var2287 var3526) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2287 null-var3526)))
(declare-const var571 var3648) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var571 null-var3648)))
(declare-const var3066 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3066 null-Int)))
(declare-const var1437 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1437 null-Int)))
(define-const var3355 var2516 (mw/1968396404 var2287)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var45 ClassObject (objectClass/1968396404 var2287)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (not (= var45 null-ClassObject)))) ; Negate: Cond: r2 != null  
(define-const var48 String "java/lang/Object") ; Statement: $r36 = "java/lang/Object" 
 ; Statement: goto [?= r3 = $r36] 
(assert true) ; Non Conditional
(define-const var1155 String var48) ; Statement: r3 = $r36 
(define-const var1841 ClassObject (fieldClass/-2048851183 var571)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var1290 var1202 (method/-2048851183 var571)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (not (= var1290 null-var1202))) ; Negate: Cond: $r5 == null  
(define-const var3286 var458 (cast-from-var1202-to-var458 (method/-2048851183 var571))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: goto [?= r6 = $r37] 
(assert true) ; Non Conditional
(define-const var1550 var458 var3286) ; Statement: r6 = $r37 
(assert true)
(define-const var1922 var2090 (getFunction/604745076 var571)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var3286 null-var458))) ; Cond: $r37 != null 
(define-const var3555 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var3555 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var3355 25 var1437)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var3355!1 var2516)
(declare-const var3514 Int)
(declare-const var1437!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var3355!1 192 var1155)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var3355!2 var2516)
(declare-const var2109 Int)
(declare-const var1155!1 String)
(define-const var3136 String (var458_getName/-545027370 var1550)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var1402 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1402)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1402!1 String)
(assert (= var1402!1 ""))
(assert true)
(define-const var2307 String (append/672562846 var1402!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var1402!2 String)
(assert (= var1402!2 (str.++ var1402!1 "()")))
(define-const var801 String (var3018_desc/1182016152 var1841)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var3932 String (append/672562846 var2307 var801)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2307!1 String)
(assert (= var2307!1 (str.++ var2307 var801)))
(assert true)
(define-const var1133 String (toString/-2075883882 var3932)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var3355!2 182 var1155!1 var3136 var1133 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var3355!3 var2516)
(declare-const var2701 Int)
(declare-const var1155!2 String)
(declare-const var3136!1 String)
(declare-const var1133!1 String)
(declare-const var3161 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1202-to-var458=([java.lang.reflect.Method], java.lang.reflect.Member), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var458_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3018_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2755=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3241=r18, var3526=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2287=r0, var3648=com.alibaba.fastjson2.writer.FieldWriter, var571=r4, var3066=i3, var1437=i1, var2516=com.alibaba.fastjson2.internal.asm.MethodWriter, var3355=r1, var45=r2, var48=$r36, var1155=r3, var1841=$r35, var1202=java.lang.reflect.Method, var1290=$r5, var458=java.lang.reflect.Member, var3286=$r37, var1550=r6, var2090=java.util.function.Function, var1922=$r34, var3555=$z0, var3514=25, var2109=192, var3136=$r27, var1402=$r22, var2307=$r24, var3018=com.alibaba.fastjson2.internal.asm.ASMUtils, var801=$r23, var3932=$r25, var1133=$r26, var2701=182, var3161=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2755, r18=var3241, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3526, r0=var2287, com.alibaba.fastjson2.writer.FieldWriter=var3648, r4=var571, i3=var3066, i1=var1437, com.alibaba.fastjson2.internal.asm.MethodWriter=var2516, r1=var3355, r2=var45, $r36=var48, r3=var1155, $r35=var1841, java.lang.reflect.Method=var1202, $r5=var1290, java.lang.reflect.Member=var458, $r37=var3286, r6=var1550, java.util.function.Function=var2090, $r34=var1922, $z0=var3555, 25=var3514, 192=var2109, $r27=var3136, $r22=var1402, $r24=var2307, com.alibaba.fastjson2.internal.asm.ASMUtils=var3018, $r23=var801, $r25=var3932, $r26=var1133, 182=var2701, 0=var3161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = "java/lang/Object";	goto [?= r3 = $r36];	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	goto [?= r6 = $r37];	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 7