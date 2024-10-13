(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2841 0)
(declare-sort var2501 0)
(declare-sort var3408 0)
(declare-sort var865 0)
(declare-sort var2266 0)
(declare-sort var739 0)
(declare-sort var3679 0)
(declare-sort var1588 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var123!class ClassObject)
(declare-fun mw/1968396404 (var2501) var865)
(declare-fun objectClass/1968396404 (var2501) ClassObject)
(declare-fun var2266_type/-1892533503 (ClassObject) String)
(declare-fun fieldClass/-2048851183 (var3408) ClassObject)
(declare-fun method/-2048851183 (var3408) var739)
(declare-fun cast-from-var1588-to-var3679 (var1588) var3679)
(declare-fun field/-2048851183 (var3408) var1588)
(declare-fun getFunction/604745076 (var3408) var123)
(declare-fun visitVarInsn/-915853820 (var865 Int Int) void)
(declare-fun classNameType/1968396404 (var2501) String)
(declare-fun var2841_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var865 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var865 Int String String String Bool) void)
(declare-fun visitTypeInsn/1924483459 (var865 Int String) void)
(declare-const null-var2841 var2841)
(declare-const null-var2501 var2501)
(declare-const null-var3408 var3408)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var739 var739)
(declare-const null-var3679 var3679)
(declare-const null-var123 var123)
(declare-const var2266-DESC_FIELD_WRITER String)
(declare-const var2266-TYPE_FIELD_WRITER String)
(declare-const var3902 var2841) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3902 null-var2841)))
(declare-const var3361 var2501) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3361 null-var2501)))
(declare-const var3652 var3408) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3652 null-var3408)))
(declare-const var581 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var581 null-Int)))
(declare-const var3069 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3069 null-Int)))
(define-const var3279 var865 (mw/1968396404 var3361)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2741 ClassObject (objectClass/1968396404 var3361)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (= var2741 null-ClassObject))) ; Cond: r2 != null 
(define-const var3952 String (var2266_type/-1892533503 var2741)) ; Statement: $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert true) ; Non Conditional
(define-const var755 String var3952) ; Statement: r3 = $r36 
(define-const var2153 ClassObject (fieldClass/-2048851183 var3652)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2750 var739 (method/-2048851183 var3652)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (= var2750 null-var739)) ; Cond: $r5 == null 
(define-const var2075 var3679 (cast-from-var1588-to-var3679 (field/-2048851183 var3652))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert true) ; Non Conditional
(define-const var3343 var3679 var2075) ; Statement: r6 = $r37 
(assert true)
(define-const var695 var123 (getFunction/604745076 var3652)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var2075 null-var3679)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var695 null-var123))) ; Negate: Cond: $r34 == null  
(assert true)
;(assert (visitVarInsn/-915853820 var3279 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3279!1 var865)
(declare-const var1817 Int)
(declare-const var2788 Int)
(define-const var2473 String (classNameType/1968396404 var3361)) ; Statement: $r28 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2517 String (var2841_fieldWriter/625874517 var581)) ; Statement: $r30 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i3) 
(define-const var3744 String var2266-DESC_FIELD_WRITER) ; Statement: $r29 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var3279!1 180 var2473 var2517 var3744)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r28, $r30, $r29) 

(declare-const var3279!2 var865)
(declare-const var2757 Int)
(declare-const var2473!1 String)
(declare-const var2517!1 String)
(declare-const var3744!1 String)
(define-const var817 String var2266-TYPE_FIELD_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3279!2 182 var817 "getFunction" "()Ljava/util/function/Function;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "getFunction", "()Ljava/util/function/Function;", 0) 

(declare-const var3279!3 var865)
(declare-const var1412 Int)
(declare-const var817!1 String)
(declare-const var2160 String)
(declare-const var2203 String)
(declare-const var2788!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3279!3 25 var3069)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var3279!4 var865)
(declare-const var1817!1 Int)
(declare-const var3069!1 Int)
(define-const var1571 String (var2266_type/-1892533503 var123!class)) ; Statement: $r32 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Ljava/util/function/Function;") 
(assert true)
;(assert (visitMethodInsn/-527702312 var3279!4 185 var1571 "apply" "(Ljava/lang/Object;)Ljava/lang/Object;" (ite (= 1 1) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r32, "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", 1) 

(declare-const var3279!5 var865)
(declare-const var1715 Int)
(declare-const var1571!1 String)
(declare-const var6 String)
(declare-const var3481 String)
(declare-const var140 Int)
(define-const var2223 String (var2266_type/-1892533503 var2153)) ; Statement: $r33 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>($r35) 
(assert true)
;(assert (visitTypeInsn/1924483459 var3279!5 192 var2223)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, $r33) 

(declare-const var3279!6 var865)
(declare-const var2097 Int)
(declare-const var2223!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), var2266_type/-1892533503=([java.lang.Class], java.lang.String), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1588-to-var3679=([java.lang.reflect.Field], java.lang.reflect.Member), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var2841_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void)}
; {var2841=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3902=r18, var2501=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3361=r0, var3408=com.alibaba.fastjson2.writer.FieldWriter, var3652=r4, var581=i3, var3069=i1, var865=com.alibaba.fastjson2.internal.asm.MethodWriter, var3279=r1, var2741=r2, var2266=com.alibaba.fastjson2.internal.asm.ASMUtils, var3952=$r36, var755=r3, var2153=$r35, var739=java.lang.reflect.Method, var2750=$r5, var3679=java.lang.reflect.Member, var1588=java.lang.reflect.Field, var2075=$r37, var3343=r6, var123=java.util.function.Function, var695=$r34, var1817=25, var2788=0, var2473=$r28, var2517=$r30, var3744=$r29, var2757=180, var817=$r31, var1412=182, var2160="getFunction", var2203="()Ljava/util/function/Function;", var1571=$r32, var1715=185, var6="apply", var3481="(Ljava/lang/Object;)Ljava/lang/Object;", var140=1, var2223=$r33, var2097=192}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2841, r18=var3902, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2501, r0=var3361, com.alibaba.fastjson2.writer.FieldWriter=var3408, r4=var3652, i3=var581, i1=var3069, com.alibaba.fastjson2.internal.asm.MethodWriter=var865, r1=var3279, r2=var2741, com.alibaba.fastjson2.internal.asm.ASMUtils=var2266, $r36=var3952, r3=var755, $r35=var2153, java.lang.reflect.Method=var739, $r5=var2750, java.lang.reflect.Member=var3679, java.lang.reflect.Field=var1588, $r37=var2075, r6=var3343, java.util.function.Function=var123, $r34=var695, 25=var1817, 0=var2788, $r28=var2473, $r30=var2517, $r29=var3744, 180=var2757, $r31=var817, 182=var1412, "getFunction"=var2160, "()Ljava/util/function/Function;"=var2203, $r32=var1571, 185=var1715, "apply"=var6, "(Ljava/lang/Object;)Ljava/lang/Object;"=var3481, 1=var140, $r33=var2223, 192=var2097}
;seq 
;cnt {}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r28 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r30 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i3);	$r29 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r28, $r30, $r29);	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "getFunction", "()Ljava/util/function/Function;", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	$r32 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(class "Ljava/util/function/Function;");	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r32, "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", 1);	$r33 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>($r35);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, $r33);	return
;block_num 7