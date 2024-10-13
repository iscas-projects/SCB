(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3317 0)
(declare-sort var2663 0)
(declare-sort var2945 0)
(declare-sort var3481 0)
(declare-sort var1820 0)
(declare-sort var3244 0)
(declare-sort var398 0)
(declare-sort var1331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1331!class ClassObject)
(declare-fun mw/1968396404 (var2663) var3481)
(declare-fun objectClass/1968396404 (var2663) ClassObject)
(declare-fun var1820_type/-1892533503 (ClassObject) String)
(declare-fun fieldClass/-2048851183 (var2945) ClassObject)
(declare-fun method/-2048851183 (var2945) var3244)
(declare-fun cast-from-var3244-to-var398 (var3244) var398)
(declare-fun getFunction/604745076 (var2945) var1331)
(declare-fun visitVarInsn/-915853820 (var3481 Int Int) void)
(declare-fun classNameType/1968396404 (var2663) String)
(declare-fun var3317_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var3481 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var3481 Int String String String Bool) void)
(declare-fun visitTypeInsn/1924483459 (var3481 Int String) void)
(declare-const null-var3317 var3317)
(declare-const null-var2663 var2663)
(declare-const null-var2945 var2945)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3244 var3244)
(declare-const null-var398 var398)
(declare-const null-var1331 var1331)
(declare-const var1820-DESC_FIELD_WRITER String)
(declare-const var1820-TYPE_FIELD_WRITER String)
(declare-const var2540 var3317) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2540 null-var3317)))
(declare-const var3707 var2663) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3707 null-var2663)))
(declare-const var27 var2945) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var27 null-var2945)))
(declare-const var564 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var564 null-Int)))
(declare-const var3494 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3494 null-Int)))
(define-const var728 var3481 (mw/1968396404 var3707)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3118 ClassObject (objectClass/1968396404 var3707)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (= var3118 null-ClassObject))) ; Cond: r2 != null 
(define-const var880 String (var1820_type/-1892533503 var3118)) ; Statement: $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert true) ; Non Conditional
(define-const var1918 String var880) ; Statement: r3 = $r36 
(define-const var1179 ClassObject (fieldClass/-2048851183 var27)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var855 var3244 (method/-2048851183 var27)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (not (= var855 null-var3244))) ; Negate: Cond: $r5 == null  
(define-const var867 var398 (cast-from-var3244-to-var398 (method/-2048851183 var27))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: goto [?= r6 = $r37] 
(assert true) ; Non Conditional
(define-const var1248 var398 var867) ; Statement: r6 = $r37 
(assert true)
(define-const var1717 var1331 (getFunction/604745076 var27)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var867 null-var398)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var1717 null-var1331))) ; Negate: Cond: $r34 == null  
(assert true)
;(assert (visitVarInsn/-915853820 var728 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var728!1 var3481)
(declare-const var3138 Int)
(declare-const var2843 Int)
(define-const var3958 String (classNameType/1968396404 var3707)) ; Statement: $r28 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2059 String (var3317_fieldWriter/625874517 var564)) ; Statement: $r30 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i3) 
(define-const var3189 String var1820-DESC_FIELD_WRITER) ; Statement: $r29 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var728!1 180 var3958 var2059 var3189)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r28, $r30, $r29) 

(declare-const var728!2 var3481)
(declare-const var358 Int)
(declare-const var3958!1 String)
(declare-const var2059!1 String)
(declare-const var3189!1 String)
(define-const var919 String var1820-TYPE_FIELD_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var728!2 182 var919 "getFunction" "()Ljava/util/function/Function;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "getFunction", "()Ljava/util/function/Function;", 0) 

(declare-const var728!3 var3481)
(declare-const var3440 Int)
(declare-const var919!1 String)
(declare-const var2246 String)
(declare-const var3774 String)
(declare-const var2843!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var728!3 25 var3494)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var728!4 var3481)
(declare-const var3138!1 Int)
(declare-const var3494!1 Int)
(define-const var3926 String (var1820_type/-1892533503 var1331!class)) ; Statement: $r32 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Ljava/util/function/Function;") 
(assert true)
;(assert (visitMethodInsn/-527702312 var728!4 185 var3926 "apply" "(Ljava/lang/Object;)Ljava/lang/Object;" (ite (= 1 1) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r32, "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", 1) 

(declare-const var728!5 var3481)
(declare-const var3585 Int)
(declare-const var3926!1 String)
(declare-const var1440 String)
(declare-const var2779 String)
(declare-const var985 Int)
(define-const var1742 String (var1820_type/-1892533503 var1179)) ; Statement: $r33 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>($r35) 
(assert true)
;(assert (visitTypeInsn/1924483459 var728!5 192 var1742)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, $r33) 

(declare-const var728!6 var3481)
(declare-const var781 Int)
(declare-const var1742!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), var1820_type/-1892533503=([java.lang.Class], java.lang.String), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3244-to-var398=([java.lang.reflect.Method], java.lang.reflect.Member), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var3317_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void)}
; {var3317=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2540=r18, var2663=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3707=r0, var2945=com.alibaba.fastjson2.writer.FieldWriter, var27=r4, var564=i3, var3494=i1, var3481=com.alibaba.fastjson2.internal.asm.MethodWriter, var728=r1, var3118=r2, var1820=com.alibaba.fastjson2.internal.asm.ASMUtils, var880=$r36, var1918=r3, var1179=$r35, var3244=java.lang.reflect.Method, var855=$r5, var398=java.lang.reflect.Member, var867=$r37, var1248=r6, var1331=java.util.function.Function, var1717=$r34, var3138=25, var2843=0, var3958=$r28, var2059=$r30, var3189=$r29, var358=180, var919=$r31, var3440=182, var2246="getFunction", var3774="()Ljava/util/function/Function;", var3926=$r32, var3585=185, var1440="apply", var2779="(Ljava/lang/Object;)Ljava/lang/Object;", var985=1, var1742=$r33, var781=192}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3317, r18=var2540, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2663, r0=var3707, com.alibaba.fastjson2.writer.FieldWriter=var2945, r4=var27, i3=var564, i1=var3494, com.alibaba.fastjson2.internal.asm.MethodWriter=var3481, r1=var728, r2=var3118, com.alibaba.fastjson2.internal.asm.ASMUtils=var1820, $r36=var880, r3=var1918, $r35=var1179, java.lang.reflect.Method=var3244, $r5=var855, java.lang.reflect.Member=var398, $r37=var867, r6=var1248, java.util.function.Function=var1331, $r34=var1717, 25=var3138, 0=var2843, $r28=var3958, $r30=var2059, $r29=var3189, 180=var358, $r31=var919, 182=var3440, "getFunction"=var2246, "()Ljava/util/function/Function;"=var3774, $r32=var3926, 185=var3585, "apply"=var1440, "(Ljava/lang/Object;)Ljava/lang/Object;"=var2779, 1=var985, $r33=var1742, 192=var781}
;seq 
;cnt {}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	goto [?= r6 = $r37];	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r28 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r30 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i3);	$r29 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r28, $r30, $r29);	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "getFunction", "()Ljava/util/function/Function;", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	$r32 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Ljava/util/function/Function;");	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r32, "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", 1);	$r33 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>($r35);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, $r33);	return
;block_num 7