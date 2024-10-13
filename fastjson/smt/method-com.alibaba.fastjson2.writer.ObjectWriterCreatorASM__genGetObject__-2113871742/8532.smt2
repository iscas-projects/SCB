(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var689 0)
(declare-sort var2771 0)
(declare-sort var2937 0)
(declare-sort var3674 0)
(declare-sort var3383 0)
(declare-sort var878 0)
(declare-sort var811 0)
(declare-sort var1061 0)
(declare-sort var1721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var2771) var3674)
(declare-fun objectClass/1968396404 (var2771) ClassObject)
(declare-fun fieldClass/-2048851183 (var2937) ClassObject)
(declare-fun method/-2048851183 (var2937) var3383)
(declare-fun cast-from-var811-to-var878 (var811) var878)
(declare-fun field/-2048851183 (var2937) var811)
(declare-fun getFunction/604745076 (var2937) var1061)
(declare-fun visitVarInsn/-915853820 (var3674 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var3674 Int String) void)
(declare-fun var878_getName/-545027370 (var878) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1721_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var3674 Int String String String Bool) void)
(declare-const null-var689 var689)
(declare-const null-var2771 var2771)
(declare-const null-var2937 var2937)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3383 var3383)
(declare-const null-var878 var878)
(declare-const null-var1061 var1061)
(declare-const var3156 var689) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3156 null-var689)))
(declare-const var2978 var2771) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2978 null-var2771)))
(declare-const var2225 var2937) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2225 null-var2937)))
(declare-const var473 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var473 null-Int)))
(declare-const var1363 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1363 null-Int)))
(define-const var1771 var3674 (mw/1968396404 var2978)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1533 ClassObject (objectClass/1968396404 var2978)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (not (= var1533 null-ClassObject)))) ; Negate: Cond: r2 != null  
(define-const var2443 String "java/lang/Object") ; Statement: $r36 = "java/lang/Object" 
 ; Statement: goto [?= r3 = $r36] 
(assert true) ; Non Conditional
(define-const var2950 String var2443) ; Statement: r3 = $r36 
(define-const var324 ClassObject (fieldClass/-2048851183 var2225)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var1474 var3383 (method/-2048851183 var2225)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (= var1474 null-var3383)) ; Cond: $r5 == null 
(define-const var291 var878 (cast-from-var811-to-var878 (field/-2048851183 var2225))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert true) ; Non Conditional
(define-const var2427 var878 var291) ; Statement: r6 = $r37 
(assert true)
(define-const var1308 var1061 (getFunction/604745076 var2225)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var291 null-var878)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (= var1308 null-var1061)) ; Cond: $r34 == null 
(define-const var1542 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var1542 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var1771 25 var1363)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var1771!1 var3674)
(declare-const var823 Int)
(declare-const var1363!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var1771!1 192 var2950)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var1771!2 var3674)
(declare-const var2616 Int)
(declare-const var2950!1 String)
(define-const var761 String (var878_getName/-545027370 var2427)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var630 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var630)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var630!1 String)
(assert (= var630!1 ""))
(assert true)
(define-const var1045 String (append/672562846 var630!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var630!2 String)
(assert (= var630!2 (str.++ var630!1 "()")))
(define-const var3966 String (var1721_desc/1182016152 var324)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var3974 String (append/672562846 var1045 var3966)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1045!1 String)
(assert (= var1045!1 (str.++ var1045 var3966)))
(assert true)
(define-const var2996 String (toString/-2075883882 var3974)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1771!2 182 var2950!1 var761 var2996 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var1771!3 var3674)
(declare-const var3824 Int)
(declare-const var2950!2 String)
(declare-const var761!1 String)
(declare-const var2996!1 String)
(declare-const var3513 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var811-to-var878=([java.lang.reflect.Field], java.lang.reflect.Member), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var878_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1721_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var689=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3156=r18, var2771=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2978=r0, var2937=com.alibaba.fastjson2.writer.FieldWriter, var2225=r4, var473=i3, var1363=i1, var3674=com.alibaba.fastjson2.internal.asm.MethodWriter, var1771=r1, var1533=r2, var2443=$r36, var2950=r3, var324=$r35, var3383=java.lang.reflect.Method, var1474=$r5, var878=java.lang.reflect.Member, var811=java.lang.reflect.Field, var291=$r37, var2427=r6, var1061=java.util.function.Function, var1308=$r34, var1542=$z0, var823=25, var2616=192, var761=$r27, var630=$r22, var1045=$r24, var1721=com.alibaba.fastjson2.internal.asm.ASMUtils, var3966=$r23, var3974=$r25, var2996=$r26, var3824=182, var3513=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var689, r18=var3156, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2771, r0=var2978, com.alibaba.fastjson2.writer.FieldWriter=var2937, r4=var2225, i3=var473, i1=var1363, com.alibaba.fastjson2.internal.asm.MethodWriter=var3674, r1=var1771, r2=var1533, $r36=var2443, r3=var2950, $r35=var324, java.lang.reflect.Method=var3383, $r5=var1474, java.lang.reflect.Member=var878, java.lang.reflect.Field=var811, $r37=var291, r6=var2427, java.util.function.Function=var1061, $r34=var1308, $z0=var1542, 25=var823, 192=var2616, $r27=var761, $r22=var630, $r24=var1045, com.alibaba.fastjson2.internal.asm.ASMUtils=var1721, $r23=var3966, $r25=var3974, $r26=var2996, 182=var3824, 0=var3513}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = "java/lang/Object";	goto [?= r3 = $r36];	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 8