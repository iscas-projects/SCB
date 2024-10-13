(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var756 0)
(declare-sort var2571 0)
(declare-sort var606 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun mw/1968396404 (var756) var2571)
(declare-fun visitVarInsn/-915853820 (var2571 Int Int) void)
(declare-fun classNameType/1968396404 (var756) String)
(declare-fun var606_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var2571 Int String String String) void)
(declare-const null-var756 var756)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var3410-DESC_FIELD_WRITER String)
(declare-const var3410-TYPE_FIELD_WRITER String)
(declare-const var322 var756) ; Statement: r2 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var322 null-var756)))
(declare-const var1839 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1839 null-Int)))
(declare-const var3829 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var3829 null-ClassObject)))
(assert true)
(define-const var2436 String (getName/-1958580599 var3829)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3057 Bool (startsWith/-1785782452 var2436 "java")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("java") 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(assert (= (ite var3057 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1008 var2571 (mw/1968396404 var322)) ; Statement: $r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(assert true)
;(assert (visitVarInsn/-915853820 var1008 25 0)) ; Statement: virtualinvoke $r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1008!1 var2571)
(declare-const var3053 Int)
(declare-const var1327 Int)
(define-const var1909 var2571 (mw/1968396404 var322)) ; Statement: $r4 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1976 String (classNameType/1968396404 var322)) ; Statement: $r5 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var3887 String (var606_fieldWriter/625874517 var1839)) ; Statement: $r7 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i0) 
(define-const var2012 String var3410-DESC_FIELD_WRITER) ; Statement: $r6 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var1909 180 var1976 var3887 var2012)) ; Statement: virtualinvoke $r4.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r5, $r7, $r6) 

(declare-const var1909!1 var2571)
(declare-const var2785 Int)
(declare-const var1976!1 String)
(declare-const var3887!1 String)
(declare-const var2012!1 String)
(define-const var2071 var2571 (mw/1968396404 var322)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var64 String var3410-TYPE_FIELD_WRITER) ; Statement: $r8 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var2071 180 var64 "fieldClass" "Ljava/lang/Class;")) ; Statement: virtualinvoke $r9.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r8, "fieldClass", "Ljava/lang/Class;") 

(declare-const var2071!1 var2571)
(declare-const var2785!1 Int)
(declare-const var64!1 String)
(declare-const var743 String)
(declare-const var3159 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var606_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void)}
; {var756=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var322=r2, var1839=i0, var3829=r0, var2436=$r1, var3057=$z0, var2571=com.alibaba.fastjson2.internal.asm.MethodWriter, var1008=$r3, var3053=25, var1327=0, var1909=$r4, var1976=$r5, var606=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3887=$r7, var3410=com.alibaba.fastjson2.internal.asm.ASMUtils, var2012=$r6, var2785=180, var2071=$r9, var64=$r8, var743="fieldClass", var3159="Ljava/lang/Class;"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var756, r2=var322, i0=var1839, r0=var3829, $r1=var2436, $z0=var3057, com.alibaba.fastjson2.internal.asm.MethodWriter=var2571, $r3=var1008, 25=var3053, 0=var1327, $r4=var1909, $r5=var1976, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var606, $r7=var3887, com.alibaba.fastjson2.internal.asm.ASMUtils=var3410, $r6=var2012, 180=var2785, $r9=var2071, $r8=var64, "fieldClass"=var743, "Ljava/lang/Class;"=var3159}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("java");	if $z0 == 0 goto $r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	$r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	virtualinvoke $r3.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r4 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	$r5 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r7 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i0);	$r6 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke $r4.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r5, $r7, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	$r8 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	virtualinvoke $r9.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, $r8, "fieldClass", "Ljava/lang/Class;");	return
;block_num 2