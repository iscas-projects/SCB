(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1003 0)
(declare-sort var3519 0)
(declare-sort var2405 0)
(declare-sort var584 0)
(declare-sort var1459 0)
(declare-sort var1973 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3519) var584)
(declare-fun format/-2048851183 (var2405) String)
(declare-fun classNameType/1968396404 (var3519) String)
(declare-fun var/1427438936 (var3519 var1459) Int)
(declare-fun cast-from-ClassObject-to-var1459 (ClassObject) var1459)
(declare-fun cast-from-String-to-var1459 (String) var1459)
(declare-fun var1973-init () var1973)
(declare-fun <init>/-2069075760 (var1973) void)
(declare-fun genGetObject/-2113871742 (var1003 var3519 var2405 Int Int) void)
(declare-fun visitInsn/-918620226 (var584 Int) void)
(declare-fun visitVarInsn/-915853820 (var584 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var584 Int var1973) void)
(declare-fun defaultValue/-2048851183 (var2405) var1459)
(declare-fun visitLabel/567040954 (var584 var1973) void)
(declare-fun gwFieldName/844239833 (var1003 var3519 var2405 Int) void)
(declare-fun visitMethodInsn/-527702312 (var584 Int String String String Bool) void)
(declare-const null-var1003 var1003)
(declare-const null-var3519 var3519)
(declare-const null-var2405 var2405)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var1459 var1459)
(declare-const var1647-TYPE_JSON_WRITER String)
(declare-const var1620 var1003) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1620 null-var1003)))
(declare-const var3650 var3519) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3650 null-var3519)))
(declare-const var118 var2405) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var118 null-var2405)))
(declare-const var2677 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2677 null-Int)))
(declare-const var3947 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var3947 null-Int)))
(declare-const var1475 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1475 null-Bool)))
(define-const var3294 var584 (mw/1968396404 var3650)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2934 String (format/-2048851183 var118)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var78 String (classNameType/1968396404 var3650)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var1069 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
(define-const var1322 Int (var/1427438936 var3650 (cast-from-ClassObject-to-var1459 var1069))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var1970 Int (var/1427438936 var3650 (cast-from-String-to-var1459 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var2849 var1973 var1973-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2849)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2849!1 var1973)
(define-const var2255 var1973 var1973-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2255)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2255!1 var1973)
(assert true)
;(assert (genGetObject/-2113871742 var1620 var3650 var118 var3947 var2677)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var1620!1 var1003)
(declare-const var3650!1 var3519)
(declare-const var118!1 var2405)
(declare-const var3947!1 Int)
(declare-const var2677!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var3294 89)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var3294!1 var584)
(declare-const var833 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3294!1 54 var1322)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0) 

(declare-const var3294!2 var584)
(declare-const var980 Int)
(declare-const var1322!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3294!2 154 var2849!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var3294!3 var584)
(declare-const var2684 Int)
(declare-const var2849!2 var1973)
(define-const var2717 var1459 (defaultValue/-2048851183 var118!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (not (= var2717 null-var1459)))) ; Negate: Cond: $r9 != null  
(assert true)
;(assert (visitVarInsn/-915853820 var3294!3 21 var1970)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1) 

(declare-const var3294!4 var584)
(declare-const var2893 Int)
(declare-const var1970!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3294!4 153 var2849!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6) 

(declare-const var3294!5 var584)
(declare-const var1291 Int)
(declare-const var2849!3 var1973)
(assert true)
;(assert (visitJumpInsn/413071865 var3294!5 167 var2255!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7) 

(declare-const var3294!6 var584)
(declare-const var747 Int)
(declare-const var2255!2 var1973)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var3294!6 var2849!3)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var3294!7 var584)
(declare-const var2849!4 var1973)
(assert true)
;(assert (gwFieldName/844239833 var1620!1 var3650!1 var118!1 var3947!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var1620!2 var1003)
(declare-const var3650!2 var3519)
(declare-const var118!2 var2405)
(declare-const var3947!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3294!7 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3294!8 var584)
(declare-const var1603 Int)
(declare-const var2718 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3294!8 21 var1322!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0) 

(declare-const var3294!9 var584)
(declare-const var2893!1 Int)
(declare-const var1322!2 Int)
(define-const var2653 String "string") ; Statement: $r10 = "string" 
(assert true)
(define-const var693 Bool (= var2653 var2934)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var693 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitMethodInsn/-527702312 var3294!9 184 "java/lang/Integer" "toString" "(I)Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(184, "java/lang/Integer", "toString", "(I)Ljava/lang/String;", 0) 

(declare-const var3294!10 var584)
(declare-const var3495 Int)
(declare-const var1021 String)
(declare-const var43 String)
(declare-const var3614 String)
(declare-const var1615 Int)
(define-const var1383 String var1647-TYPE_JSON_WRITER) ; Statement: $r13 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3294!10 182 var1383 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r13, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var3294!11 var584)
(declare-const var2752 Int)
(declare-const var1383!1 String)
(declare-const var1000 String)
(declare-const var3375 String)
(declare-const var1615!1 Int)
 ; Statement: goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var3294!11 var2255!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var3294!12 var584)
(declare-const var2255!3 var1973)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1459=([java.lang.Class], java.lang.Object), cast-from-String-to-var1459=([java.lang.String], java.lang.Object), var1973-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1003=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1620=r8, var3519=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3650=r0, var2405=com.alibaba.fastjson2.writer.FieldWriter, var118=r2, var2677=i3, var3947=i2, var1475=z1, var584=com.alibaba.fastjson2.internal.asm.MethodWriter, var3294=r1, var2934=r3, var78=r4, var1069=$r5, var1459=java.lang.Object, var1322=i0, var1970=i1, var1973=com.alibaba.fastjson2.internal.asm.Label, var2849=$r6, var2255=$r7, var833=89, var980=54, var2684=154, var2717=$r9, var2893=21, var1291=153, var747=167, var1603=25, var2718=1, var2653=$r10, var693=$z0, var3495=184, var1021="java/lang/Integer", var43="toString", var3614="(I)Ljava/lang/String;", var1615=0, var1647=com.alibaba.fastjson2.internal.asm.ASMUtils, var1383=$r13, var2752=182, var1000="writeString", var3375="(Ljava/lang/String;)V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1003, r8=var1620, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3519, r0=var3650, com.alibaba.fastjson2.writer.FieldWriter=var2405, r2=var118, i3=var2677, i2=var3947, z1=var1475, com.alibaba.fastjson2.internal.asm.MethodWriter=var584, r1=var3294, r3=var2934, r4=var78, $r5=var1069, java.lang.Object=var1459, i0=var1322, i1=var1970, com.alibaba.fastjson2.internal.asm.Label=var1973, $r6=var2849, $r7=var2255, 89=var833, 54=var980, 154=var2684, $r9=var2717, 21=var2893, 153=var1291, 167=var747, 25=var1603, 1=var2718, $r10=var2653, $z0=var693, 184=var3495, "java/lang/Integer"=var1021, "toString"=var43, "(I)Ljava/lang/String;"=var3614, 0=var1615, com.alibaba.fastjson2.internal.asm.ASMUtils=var1647, $r13=var1383, 182=var2752, "writeString"=var1000, "(Ljava/lang/String;)V"=var3375}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Integer: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0);	$r10 = "string";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto (branch);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(184, "java/lang/Integer", "toString", "(I)Ljava/lang/String;", 0);	$r13 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r13, "writeString", "(Ljava/lang/String;)V", 0);	goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)];	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 5