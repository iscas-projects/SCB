(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3966 0)
(declare-sort var1508 0)
(declare-sort var795 0)
(declare-sort var1374 0)
(declare-sort var1664 0)
(declare-sort var2382 0)
(declare-sort var2604 0)
(declare-sort var1407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1508) var1374)
(declare-fun format/-2048851183 (var795) String)
(declare-fun classNameType/1968396404 (var1508) String)
(declare-fun var/1427438936 (var1508 var1664) Int)
(declare-fun cast-from-ClassObject-to-var1664 (ClassObject) var1664)
(declare-fun cast-from-String-to-var1664 (String) var1664)
(declare-fun var2382-init () var2382)
(declare-fun <init>/-2069075760 (var2382) void)
(declare-fun genGetObject/-2113871742 (var3966 var1508 var795 Int Int) void)
(declare-fun visitInsn/-918620226 (var1374 Int) void)
(declare-fun visitVarInsn/-915853820 (var1374 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var1374 Int var2382) void)
(declare-fun defaultValue/-2048851183 (var795) var1664)
(declare-fun visitLabel/567040954 (var1374 var2382) void)
(declare-fun gwFieldName/844239833 (var3966 var1508 var795 Int) void)
(declare-fun visitMethodInsn/-527702312 (var1374 Int String String String Bool) void)
(declare-const null-var3966 var3966)
(declare-const null-var1508 var1508)
(declare-const null-var795 var795)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var1664 var1664)
(declare-const null-String String)
(declare-const var1407-TYPE_JSON_WRITER String)
(declare-const var3566 var3966) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3566 null-var3966)))
(declare-const var2351 var1508) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2351 null-var1508)))
(declare-const var2135 var795) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2135 null-var795)))
(declare-const var1403 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1403 null-Int)))
(declare-const var2193 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2193 null-Int)))
(declare-const var1832 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1832 null-Bool)))
(define-const var863 var1374 (mw/1968396404 var2351)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var919 String (format/-2048851183 var2135)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var2148 String (classNameType/1968396404 var2351)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2124 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
(define-const var3401 Int (var/1427438936 var2351 (cast-from-ClassObject-to-var1664 var2124))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var387 Int (var/1427438936 var2351 (cast-from-String-to-var1664 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var709 var2382 var2382-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var709)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var709!1 var2382)
(define-const var2131 var2382 var2382-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2131)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2131!1 var2382)
(assert true)
;(assert (genGetObject/-2113871742 var3566 var2351 var2135 var2193 var1403)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var3566!1 var3966)
(declare-const var2351!1 var1508)
(declare-const var2135!1 var795)
(declare-const var2193!1 Int)
(declare-const var1403!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var863 89)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var863!1 var1374)
(declare-const var2502 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var863!1 54 var3401)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0) 

(declare-const var863!2 var1374)
(declare-const var2519 Int)
(declare-const var3401!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var863!2 154 var709!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var863!3 var1374)
(declare-const var41 Int)
(declare-const var709!2 var2382)
(define-const var1970 var1664 (defaultValue/-2048851183 var2135!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (not (= var1970 null-var1664)))) ; Negate: Cond: $r9 != null  
(assert true)
;(assert (visitVarInsn/-915853820 var863!3 21 var387)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1) 

(declare-const var863!4 var1374)
(declare-const var1255 Int)
(declare-const var387!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var863!4 153 var709!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6) 

(declare-const var863!5 var1374)
(declare-const var1531 Int)
(declare-const var709!3 var2382)
(assert true)
;(assert (visitJumpInsn/413071865 var863!5 167 var2131!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7) 

(declare-const var863!6 var1374)
(declare-const var1792 Int)
(declare-const var2131!2 var2382)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var863!6 var709!3)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var863!7 var1374)
(declare-const var709!4 var2382)
(assert true)
;(assert (gwFieldName/844239833 var3566!1 var2351!1 var2135!1 var2193!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var3566!2 var3966)
(declare-const var2351!2 var1508)
(declare-const var2135!2 var795)
(declare-const var2193!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var863!7 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var863!8 var1374)
(declare-const var318 Int)
(declare-const var2255 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var863!8 21 var3401!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0) 

(declare-const var863!9 var1374)
(declare-const var1255!1 Int)
(declare-const var3401!2 Int)
(define-const var3247 String "string") ; Statement: $r10 = "string" 
(assert true)
(define-const var2724 Bool (= var3247 var919)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2724 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert (= var919 null-String)) ; Cond: r3 == null 
(define-const var944 String var1407-TYPE_JSON_WRITER) ; Statement: $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var863!9 182 var944 "writeInt32" "(I)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r11, "writeInt32", "(I)V", 0) 

(declare-const var863!10 var1374)
(declare-const var2276 Int)
(declare-const var944!1 String)
(declare-const var2096 String)
(declare-const var3945 String)
(declare-const var2448 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var863!10 var2131!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var863!11 var1374)
(declare-const var2131!3 var2382)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1664=([java.lang.Class], java.lang.Object), cast-from-String-to-var1664=([java.lang.String], java.lang.Object), var2382-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3966=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3566=r8, var1508=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2351=r0, var795=com.alibaba.fastjson2.writer.FieldWriter, var2135=r2, var1403=i3, var2193=i2, var1832=z1, var1374=com.alibaba.fastjson2.internal.asm.MethodWriter, var863=r1, var919=r3, var2148=r4, var2124=$r5, var1664=java.lang.Object, var3401=i0, var387=i1, var2382=com.alibaba.fastjson2.internal.asm.Label, var709=$r6, var2131=$r7, var2502=89, var2519=54, var41=154, var1970=$r9, var1255=21, var1531=153, var1792=167, var318=25, var2255=1, var3247=$r10, var2724=$z0, var2604=null_type, var1407=com.alibaba.fastjson2.internal.asm.ASMUtils, var944=$r11, var2276=182, var2096="writeInt32", var3945="(I)V", var2448=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3966, r8=var3566, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1508, r0=var2351, com.alibaba.fastjson2.writer.FieldWriter=var795, r2=var2135, i3=var1403, i2=var2193, z1=var1832, com.alibaba.fastjson2.internal.asm.MethodWriter=var1374, r1=var863, r3=var919, r4=var2148, $r5=var2124, java.lang.Object=var1664, i0=var3401, i1=var387, com.alibaba.fastjson2.internal.asm.Label=var2382, $r6=var709, $r7=var2131, 89=var2502, 54=var2519, 154=var41, $r9=var1970, 21=var1255, 153=var1531, 167=var1792, 25=var318, 1=var2255, $r10=var3247, $z0=var2724, null_type=var2604, com.alibaba.fastjson2.internal.asm.ASMUtils=var1407, $r11=var944, 182=var2276, "writeInt32"=var2096, "(I)V"=var3945, 0=var2448}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Integer: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0);	$r10 = "string";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto (branch);	if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	$r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r11, "writeInt32", "(I)V", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 6