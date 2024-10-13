(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var1650 0)
(declare-sort var597 0)
(declare-sort var1532 0)
(declare-sort var2135 0)
(declare-sort var2980 0)
(declare-sort var709 0)
(declare-sort var302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1650) var1532)
(declare-fun format/-2048851183 (var597) String)
(declare-fun classNameType/1968396404 (var1650) String)
(declare-fun var/1427438936 (var1650 var2135) Int)
(declare-fun cast-from-ClassObject-to-var2135 (ClassObject) var2135)
(declare-fun cast-from-String-to-var2135 (String) var2135)
(declare-fun var2980-init () var2980)
(declare-fun <init>/-2069075760 (var2980) void)
(declare-fun genGetObject/-2113871742 (var1287 var1650 var597 Int Int) void)
(declare-fun visitInsn/-918620226 (var1532 Int) void)
(declare-fun visitVarInsn/-915853820 (var1532 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var1532 Int var2980) void)
(declare-fun defaultValue/-2048851183 (var597) var2135)
(declare-fun visitLabel/567040954 (var1532 var2980) void)
(declare-fun gwFieldName/844239833 (var1287 var1650 var597 Int) void)
(declare-fun visitLdcInsn/1458008857 (var1532 String) void)
(declare-fun visitMethodInsn/-527702312 (var1532 Int String String String Bool) void)
(declare-const null-var1287 var1287)
(declare-const null-var1650 var1650)
(declare-const null-var597 var597)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var2135 var2135)
(declare-const null-String String)
(declare-const var302-TYPE_JSON_WRITER String)
(declare-const var3304 var1287) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3304 null-var1287)))
(declare-const var2794 var1650) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2794 null-var1650)))
(declare-const var384 var597) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var384 null-var597)))
(declare-const var1188 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1188 null-Int)))
(declare-const var3206 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var3206 null-Int)))
(declare-const var1338 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1338 null-Bool)))
(define-const var1530 var1532 (mw/1968396404 var2794)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1368 String (format/-2048851183 var384)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var1730 String (classNameType/1968396404 var2794)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var1550 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
(define-const var2872 Int (var/1427438936 var2794 (cast-from-ClassObject-to-var2135 var1550))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var2028 Int (var/1427438936 var2794 (cast-from-String-to-var2135 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var1578 var2980 var2980-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1578)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1578!1 var2980)
(define-const var2027 var2980 var2980-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2027)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2027!1 var2980)
(assert true)
;(assert (genGetObject/-2113871742 var3304 var2794 var384 var3206 var1188)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var3304!1 var1287)
(declare-const var2794!1 var1650)
(declare-const var384!1 var597)
(declare-const var3206!1 Int)
(declare-const var1188!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var1530 89)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var1530!1 var1532)
(declare-const var1211 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1530!1 54 var2872)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0) 

(declare-const var1530!2 var1532)
(declare-const var1202 Int)
(declare-const var2872!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1530!2 154 var1578!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var1530!3 var1532)
(declare-const var1526 Int)
(declare-const var1578!2 var2980)
(define-const var1363 var2135 (defaultValue/-2048851183 var384!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (= var1363 null-var2135))) ; Cond: $r9 != null 
(assert true)
;(assert (visitLabel/567040954 var1530!3 var1578!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var1530!4 var1532)
(declare-const var1578!3 var2980)
(assert true)
;(assert (gwFieldName/844239833 var3304!1 var2794!1 var384!1 var3206!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var3304!2 var1287)
(declare-const var2794!2 var1650)
(declare-const var384!2 var597)
(declare-const var3206!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1530!4 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1530!5 var1532)
(declare-const var908 Int)
(declare-const var2920 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1530!5 21 var2872!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0) 

(declare-const var1530!6 var1532)
(declare-const var612 Int)
(declare-const var2872!2 Int)
(define-const var3205 String "string") ; Statement: $r10 = "string" 
(assert true)
(define-const var478 Bool (= var3205 var1368)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var478 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert (not (= var1368 null-String))) ; Negate: Cond: r3 == null  
(assert true)
;(assert (visitLdcInsn/1458008857 var1530!6 var1368)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>(r3) 

(declare-const var1530!7 var1532)
(declare-const var1368!1 String)
(define-const var1240 String var302-TYPE_JSON_WRITER) ; Statement: $r12 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1530!7 182 var1240 "writeInt32" "(ILjava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r12, "writeInt32", "(ILjava/lang/String;)V", 0) 

(declare-const var1530!8 var1532)
(declare-const var1775 Int)
(declare-const var1240!1 String)
(declare-const var329 String)
(declare-const var516 String)
(declare-const var1610 Int)
 ; Statement: goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var1530!8 var2027!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var1530!9 var1532)
(declare-const var2027!2 var2980)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var2135=([java.lang.Class], java.lang.Object), cast-from-String-to-var2135=([java.lang.String], java.lang.Object), var2980-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1287=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3304=r8, var1650=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2794=r0, var597=com.alibaba.fastjson2.writer.FieldWriter, var384=r2, var1188=i3, var3206=i2, var1338=z1, var1532=com.alibaba.fastjson2.internal.asm.MethodWriter, var1530=r1, var1368=r3, var1730=r4, var1550=$r5, var2135=java.lang.Object, var2872=i0, var2028=i1, var2980=com.alibaba.fastjson2.internal.asm.Label, var1578=$r6, var2027=$r7, var1211=89, var1202=54, var1526=154, var1363=$r9, var908=25, var2920=1, var612=21, var3205=$r10, var478=$z0, var709=null_type, var302=com.alibaba.fastjson2.internal.asm.ASMUtils, var1240=$r12, var1775=182, var329="writeInt32", var516="(ILjava/lang/String;)V", var1610=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1287, r8=var3304, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1650, r0=var2794, com.alibaba.fastjson2.writer.FieldWriter=var597, r2=var384, i3=var1188, i2=var3206, z1=var1338, com.alibaba.fastjson2.internal.asm.MethodWriter=var1532, r1=var1530, r3=var1368, r4=var1730, $r5=var1550, java.lang.Object=var2135, i0=var2872, i1=var2028, com.alibaba.fastjson2.internal.asm.Label=var2980, $r6=var1578, $r7=var2027, 89=var1211, 54=var1202, 154=var1526, $r9=var1363, 25=var908, 1=var2920, 21=var612, $r10=var3205, $z0=var478, null_type=var709, com.alibaba.fastjson2.internal.asm.ASMUtils=var302, $r12=var1240, 182=var1775, "writeInt32"=var329, "(ILjava/lang/String;)V"=var516, 0=var1610}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Integer: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0);	$r10 = "string";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto (branch);	if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>(r3);	$r12 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r12, "writeInt32", "(ILjava/lang/String;)V", 0);	goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)];	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 5