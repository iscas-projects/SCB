(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3874 0)
(declare-sort var3578 0)
(declare-sort var934 0)
(declare-sort var720 0)
(declare-sort var1493 0)
(declare-sort var567 0)
(declare-sort var3213 0)
(declare-sort var1230 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3578) var720)
(declare-fun format/-2048851183 (var934) String)
(declare-fun classNameType/1968396404 (var3578) String)
(declare-fun var/1427438936 (var3578 var1493) Int)
(declare-fun cast-from-ClassObject-to-var1493 (ClassObject) var1493)
(declare-fun cast-from-String-to-var1493 (String) var1493)
(declare-fun var567-init () var567)
(declare-fun <init>/-2069075760 (var567) void)
(declare-fun genGetObject/-2113871742 (var3874 var3578 var934 Int Int) void)
(declare-fun visitInsn/-918620226 (var720 Int) void)
(declare-fun visitVarInsn/-915853820 (var720 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var720 Int var567) void)
(declare-fun defaultValue/-2048851183 (var934) var1493)
(declare-fun visitLabel/567040954 (var720 var567) void)
(declare-fun gwFieldName/844239833 (var3874 var3578 var934 Int) void)
(declare-fun visitMethodInsn/-527702312 (var720 Int String String String Bool) void)
(declare-const null-var3874 var3874)
(declare-const null-var3578 var3578)
(declare-const null-var934 var934)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var1493 var1493)
(declare-const null-String String)
(declare-const var1230-TYPE_JSON_WRITER String)
(declare-const var3683 var3874) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3683 null-var3874)))
(declare-const var2762 var3578) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2762 null-var3578)))
(declare-const var555 var934) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var555 null-var934)))
(declare-const var3045 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3045 null-Int)))
(declare-const var1164 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1164 null-Int)))
(declare-const var359 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var359 null-Bool)))
(define-const var984 var720 (mw/1968396404 var2762)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1951 String (format/-2048851183 var555)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var1564 String (classNameType/1968396404 var2762)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var506 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
(define-const var3647 Int (var/1427438936 var2762 (cast-from-ClassObject-to-var1493 var506))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var1887 Int (var/1427438936 var2762 (cast-from-String-to-var1493 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var1573 var567 var567-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1573)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1573!1 var567)
(define-const var2382 var567 var567-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2382)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2382!1 var567)
(assert true)
;(assert (genGetObject/-2113871742 var3683 var2762 var555 var1164 var3045)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var3683!1 var3874)
(declare-const var2762!1 var3578)
(declare-const var555!1 var934)
(declare-const var1164!1 Int)
(declare-const var3045!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var984 89)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var984!1 var720)
(declare-const var1590 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var984!1 54 var3647)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0) 

(declare-const var984!2 var720)
(declare-const var2424 Int)
(declare-const var3647!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var984!2 154 var1573!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var984!3 var720)
(declare-const var2871 Int)
(declare-const var1573!2 var567)
(define-const var3309 var1493 (defaultValue/-2048851183 var555!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (= var3309 null-var1493))) ; Cond: $r9 != null 
(assert true)
;(assert (visitLabel/567040954 var984!3 var1573!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var984!4 var720)
(declare-const var1573!3 var567)
(assert true)
;(assert (gwFieldName/844239833 var3683!1 var2762!1 var555!1 var1164!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var3683!2 var3874)
(declare-const var2762!2 var3578)
(declare-const var555!2 var934)
(declare-const var1164!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var984!4 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var984!5 var720)
(declare-const var368 Int)
(declare-const var2227 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var984!5 21 var3647!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0) 

(declare-const var984!6 var720)
(declare-const var3431 Int)
(declare-const var3647!2 Int)
(define-const var3443 String "string") ; Statement: $r10 = "string" 
(assert true)
(define-const var1451 Bool (= var3443 var1951)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1451 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert (= var1951 null-String)) ; Cond: r3 == null 
(define-const var726 String var1230-TYPE_JSON_WRITER) ; Statement: $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var984!6 182 var726 "writeInt32" "(I)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r11, "writeInt32", "(I)V", 0) 

(declare-const var984!7 var720)
(declare-const var2092 Int)
(declare-const var726!1 String)
(declare-const var3534 String)
(declare-const var3128 String)
(declare-const var841 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var984!7 var2382!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var984!8 var720)
(declare-const var2382!2 var567)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1493=([java.lang.Class], java.lang.Object), cast-from-String-to-var1493=([java.lang.String], java.lang.Object), var567-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3874=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3683=r8, var3578=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2762=r0, var934=com.alibaba.fastjson2.writer.FieldWriter, var555=r2, var3045=i3, var1164=i2, var359=z1, var720=com.alibaba.fastjson2.internal.asm.MethodWriter, var984=r1, var1951=r3, var1564=r4, var506=$r5, var1493=java.lang.Object, var3647=i0, var1887=i1, var567=com.alibaba.fastjson2.internal.asm.Label, var1573=$r6, var2382=$r7, var1590=89, var2424=54, var2871=154, var3309=$r9, var368=25, var2227=1, var3431=21, var3443=$r10, var1451=$z0, var3213=null_type, var1230=com.alibaba.fastjson2.internal.asm.ASMUtils, var726=$r11, var2092=182, var3534="writeInt32", var3128="(I)V", var841=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3874, r8=var3683, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3578, r0=var2762, com.alibaba.fastjson2.writer.FieldWriter=var934, r2=var555, i3=var3045, i2=var1164, z1=var359, com.alibaba.fastjson2.internal.asm.MethodWriter=var720, r1=var984, r3=var1951, r4=var1564, $r5=var506, java.lang.Object=var1493, i0=var3647, i1=var1887, com.alibaba.fastjson2.internal.asm.Label=var567, $r6=var1573, $r7=var2382, 89=var1590, 54=var2424, 154=var2871, $r9=var3309, 25=var368, 1=var2227, 21=var3431, $r10=var3443, $z0=var1451, null_type=var3213, com.alibaba.fastjson2.internal.asm.ASMUtils=var1230, $r11=var726, 182=var2092, "writeInt32"=var3534, "(I)V"=var3128, 0=var841}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Integer: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0);	$r10 = "string";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto (branch);	if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	$r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r11, "writeInt32", "(I)V", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 5