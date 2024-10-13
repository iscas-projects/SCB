(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1491 0)
(declare-sort var2312 0)
(declare-sort var159 0)
(declare-sort var2066 0)
(declare-sort var1783 0)
(declare-sort var2191 0)
(declare-sort var3148 0)
(declare-sort var658 0)
(declare-sort var3549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var658!class ClassObject)
(declare-fun mw/1968396404 (var2312) var2066)
(declare-fun objectClass/1968396404 (var2312) ClassObject)
(declare-fun fieldClass/-2048851183 (var159) ClassObject)
(declare-fun method/-2048851183 (var159) var1783)
(declare-fun cast-from-var3148-to-var2191 (var3148) var2191)
(declare-fun field/-2048851183 (var159) var3148)
(declare-fun getFunction/604745076 (var159) var658)
(declare-fun visitVarInsn/-915853820 (var2066 Int Int) void)
(declare-fun classNameType/1968396404 (var2312) String)
(declare-fun var1491_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var2066 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var2066 Int String String String Bool) void)
(declare-fun var3549_type/-1892533503 (ClassObject) String)
(declare-fun visitTypeInsn/1924483459 (var2066 Int String) void)
(declare-const null-var1491 var1491)
(declare-const null-var2312 var2312)
(declare-const null-var159 var159)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1783 var1783)
(declare-const null-var2191 var2191)
(declare-const null-var658 var658)
(declare-const var3549-DESC_FIELD_WRITER String)
(declare-const var3549-TYPE_FIELD_WRITER String)
(declare-const var1212 var1491) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1212 null-var1491)))
(declare-const var1259 var2312) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1259 null-var2312)))
(declare-const var2223 var159) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2223 null-var159)))
(declare-const var3634 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3634 null-Int)))
(declare-const var3037 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3037 null-Int)))
(define-const var411 var2066 (mw/1968396404 var1259)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3752 ClassObject (objectClass/1968396404 var1259)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (not (= var3752 null-ClassObject)))) ; Negate: Cond: r2 != null  
(define-const var89 String "java/lang/Object") ; Statement: $r36 = "java/lang/Object" 
 ; Statement: goto [?= r3 = $r36] 
(assert true) ; Non Conditional
(define-const var1890 String var89) ; Statement: r3 = $r36 
(define-const var458 ClassObject (fieldClass/-2048851183 var2223)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var1706 var1783 (method/-2048851183 var2223)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (= var1706 null-var1783)) ; Cond: $r5 == null 
(define-const var2276 var2191 (cast-from-var3148-to-var2191 (field/-2048851183 var2223))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert true) ; Non Conditional
(define-const var2905 var2191 var2276) ; Statement: r6 = $r37 
(assert true)
(define-const var1902 var658 (getFunction/604745076 var2223)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var2276 null-var2191)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var1902 null-var658))) ; Negate: Cond: $r34 == null  
(assert true)
;(assert (visitVarInsn/-915853820 var411 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var411!1 var2066)
(declare-const var3819 Int)
(declare-const var220 Int)
(define-const var851 String (classNameType/1968396404 var1259)) ; Statement: $r28 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var1484 String (var1491_fieldWriter/625874517 var3634)) ; Statement: $r30 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i3) 
(define-const var3325 String var3549-DESC_FIELD_WRITER) ; Statement: $r29 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var411!1 180 var851 var1484 var3325)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r28, $r30, $r29) 

(declare-const var411!2 var2066)
(declare-const var712 Int)
(declare-const var851!1 String)
(declare-const var1484!1 String)
(declare-const var3325!1 String)
(define-const var1468 String var3549-TYPE_FIELD_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var411!2 182 var1468 "getFunction" "()Ljava/util/function/Function;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "getFunction", "()Ljava/util/function/Function;", 0) 

(declare-const var411!3 var2066)
(declare-const var420 Int)
(declare-const var1468!1 String)
(declare-const var3906 String)
(declare-const var3886 String)
(declare-const var220!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var411!3 25 var3037)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var411!4 var2066)
(declare-const var3819!1 Int)
(declare-const var3037!1 Int)
(define-const var1517 String (var3549_type/-1892533503 var658!class)) ; Statement: $r32 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Ljava/util/function/Function;") 
(assert true)
;(assert (visitMethodInsn/-527702312 var411!4 185 var1517 "apply" "(Ljava/lang/Object;)Ljava/lang/Object;" (ite (= 1 1) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r32, "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", 1) 

(declare-const var411!5 var2066)
(declare-const var2496 Int)
(declare-const var1517!1 String)
(declare-const var3725 String)
(declare-const var1800 String)
(declare-const var1072 Int)
(define-const var3950 String (var3549_type/-1892533503 var458)) ; Statement: $r33 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>($r35) 
(assert true)
;(assert (visitTypeInsn/1924483459 var411!5 192 var3950)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, $r33) 

(declare-const var411!6 var2066)
(declare-const var3434 Int)
(declare-const var3950!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3148-to-var2191=([java.lang.reflect.Field], java.lang.reflect.Member), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var1491_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var3549_type/-1892533503=([java.lang.Class], java.lang.String), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void)}
; {var1491=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1212=r18, var2312=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1259=r0, var159=com.alibaba.fastjson2.writer.FieldWriter, var2223=r4, var3634=i3, var3037=i1, var2066=com.alibaba.fastjson2.internal.asm.MethodWriter, var411=r1, var3752=r2, var89=$r36, var1890=r3, var458=$r35, var1783=java.lang.reflect.Method, var1706=$r5, var2191=java.lang.reflect.Member, var3148=java.lang.reflect.Field, var2276=$r37, var2905=r6, var658=java.util.function.Function, var1902=$r34, var3819=25, var220=0, var851=$r28, var1484=$r30, var3549=com.alibaba.fastjson2.internal.asm.ASMUtils, var3325=$r29, var712=180, var1468=$r31, var420=182, var3906="getFunction", var3886="()Ljava/util/function/Function;", var1517=$r32, var2496=185, var3725="apply", var1800="(Ljava/lang/Object;)Ljava/lang/Object;", var1072=1, var3950=$r33, var3434=192}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1491, r18=var1212, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2312, r0=var1259, com.alibaba.fastjson2.writer.FieldWriter=var159, r4=var2223, i3=var3634, i1=var3037, com.alibaba.fastjson2.internal.asm.MethodWriter=var2066, r1=var411, r2=var3752, $r36=var89, r3=var1890, $r35=var458, java.lang.reflect.Method=var1783, $r5=var1706, java.lang.reflect.Member=var2191, java.lang.reflect.Field=var3148, $r37=var2276, r6=var2905, java.util.function.Function=var658, $r34=var1902, 25=var3819, 0=var220, $r28=var851, $r30=var1484, com.alibaba.fastjson2.internal.asm.ASMUtils=var3549, $r29=var3325, 180=var712, $r31=var1468, 182=var420, "getFunction"=var3906, "()Ljava/util/function/Function;"=var3886, $r32=var1517, 185=var2496, "apply"=var3725, "(Ljava/lang/Object;)Ljava/lang/Object;"=var1800, 1=var1072, $r33=var3950, 192=var3434}
;seq 
;cnt {}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = "java/lang/Object";	goto [?= r3 = $r36];	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r28 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r30 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i3);	$r29 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r28, $r30, $r29);	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "getFunction", "()Ljava/util/function/Function;", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	$r32 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Ljava/util/function/Function;");	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r32, "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", 1);	$r33 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>($r35);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, $r33);	return
;block_num 7