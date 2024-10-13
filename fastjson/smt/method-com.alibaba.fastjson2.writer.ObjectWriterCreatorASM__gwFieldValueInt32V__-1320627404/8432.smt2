(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort var1311 0)
(declare-sort var2950 0)
(declare-sort var2349 0)
(declare-sort var1190 0)
(declare-sort var3265 0)
(declare-sort var1012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1311) var2349)
(declare-fun format/-2048851183 (var2950) String)
(declare-fun classNameType/1968396404 (var1311) String)
(declare-fun var/1427438936 (var1311 var1190) Int)
(declare-fun cast-from-ClassObject-to-var1190 (ClassObject) var1190)
(declare-fun cast-from-String-to-var1190 (String) var1190)
(declare-fun var3265-init () var3265)
(declare-fun <init>/-2069075760 (var3265) void)
(declare-fun genGetObject/-2113871742 (var1684 var1311 var2950 Int Int) void)
(declare-fun visitInsn/-918620226 (var2349 Int) void)
(declare-fun visitVarInsn/-915853820 (var2349 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var2349 Int var3265) void)
(declare-fun defaultValue/-2048851183 (var2950) var1190)
(declare-fun visitLabel/567040954 (var2349 var3265) void)
(declare-fun gwFieldName/844239833 (var1684 var1311 var2950 Int) void)
(declare-fun visitMethodInsn/-527702312 (var2349 Int String String String Bool) void)
(declare-const null-var1684 var1684)
(declare-const null-var1311 var1311)
(declare-const null-var2950 var2950)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var1190 var1190)
(declare-const var1012-TYPE_JSON_WRITER String)
(declare-const var1335 var1684) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1335 null-var1684)))
(declare-const var1565 var1311) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1565 null-var1311)))
(declare-const var1503 var2950) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1503 null-var2950)))
(declare-const var777 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var777 null-Int)))
(declare-const var2715 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2715 null-Int)))
(declare-const var3054 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var3054 null-Bool)))
(define-const var1572 var2349 (mw/1968396404 var1565)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1358 String (format/-2048851183 var1503)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var724 String (classNameType/1968396404 var1565)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var1360 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
(define-const var2772 Int (var/1427438936 var1565 (cast-from-ClassObject-to-var1190 var1360))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var3249 Int (var/1427438936 var1565 (cast-from-String-to-var1190 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var837 var3265 var3265-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var837)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var837!1 var3265)
(define-const var1998 var3265 var3265-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1998)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1998!1 var3265)
(assert true)
;(assert (genGetObject/-2113871742 var1335 var1565 var1503 var2715 var777)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var1335!1 var1684)
(declare-const var1565!1 var1311)
(declare-const var1503!1 var2950)
(declare-const var2715!1 Int)
(declare-const var777!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var1572 89)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var1572!1 var2349)
(declare-const var1331 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1572!1 54 var2772)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0) 

(declare-const var1572!2 var2349)
(declare-const var3678 Int)
(declare-const var2772!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1572!2 154 var837!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var1572!3 var2349)
(declare-const var580 Int)
(declare-const var837!2 var3265)
(define-const var2861 var1190 (defaultValue/-2048851183 var1503!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (= var2861 null-var1190))) ; Cond: $r9 != null 
(assert true)
;(assert (visitLabel/567040954 var1572!3 var837!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var1572!4 var2349)
(declare-const var837!3 var3265)
(assert true)
;(assert (gwFieldName/844239833 var1335!1 var1565!1 var1503!1 var2715!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var1335!2 var1684)
(declare-const var1565!2 var1311)
(declare-const var1503!2 var2950)
(declare-const var2715!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1572!4 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1572!5 var2349)
(declare-const var692 Int)
(declare-const var3534 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1572!5 21 var2772!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0) 

(declare-const var1572!6 var2349)
(declare-const var1560 Int)
(declare-const var2772!2 Int)
(define-const var1555 String "string") ; Statement: $r10 = "string" 
(assert true)
(define-const var1996 Bool (= var1555 var1358)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1996 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitMethodInsn/-527702312 var1572!6 184 "java/lang/Integer" "toString" "(I)Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(184, "java/lang/Integer", "toString", "(I)Ljava/lang/String;", 0) 

(declare-const var1572!7 var2349)
(declare-const var2524 Int)
(declare-const var3757 String)
(declare-const var1005 String)
(declare-const var805 String)
(declare-const var3312 Int)
(define-const var1340 String var1012-TYPE_JSON_WRITER) ; Statement: $r13 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1572!7 182 var1340 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r13, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var1572!8 var2349)
(declare-const var2517 Int)
(declare-const var1340!1 String)
(declare-const var1922 String)
(declare-const var1289 String)
(declare-const var3312!1 Int)
 ; Statement: goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var1572!8 var1998!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var1572!9 var2349)
(declare-const var1998!2 var3265)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1190=([java.lang.Class], java.lang.Object), cast-from-String-to-var1190=([java.lang.String], java.lang.Object), var3265-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1684=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1335=r8, var1311=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1565=r0, var2950=com.alibaba.fastjson2.writer.FieldWriter, var1503=r2, var777=i3, var2715=i2, var3054=z1, var2349=com.alibaba.fastjson2.internal.asm.MethodWriter, var1572=r1, var1358=r3, var724=r4, var1360=$r5, var1190=java.lang.Object, var2772=i0, var3249=i1, var3265=com.alibaba.fastjson2.internal.asm.Label, var837=$r6, var1998=$r7, var1331=89, var3678=54, var580=154, var2861=$r9, var692=25, var3534=1, var1560=21, var1555=$r10, var1996=$z0, var2524=184, var3757="java/lang/Integer", var1005="toString", var805="(I)Ljava/lang/String;", var3312=0, var1012=com.alibaba.fastjson2.internal.asm.ASMUtils, var1340=$r13, var2517=182, var1922="writeString", var1289="(Ljava/lang/String;)V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1684, r8=var1335, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1311, r0=var1565, com.alibaba.fastjson2.writer.FieldWriter=var2950, r2=var1503, i3=var777, i2=var2715, z1=var3054, com.alibaba.fastjson2.internal.asm.MethodWriter=var2349, r1=var1572, r3=var1358, r4=var724, $r5=var1360, java.lang.Object=var1190, i0=var2772, i1=var3249, com.alibaba.fastjson2.internal.asm.Label=var3265, $r6=var837, $r7=var1998, 89=var1331, 54=var3678, 154=var580, $r9=var2861, 25=var692, 1=var3534, 21=var1560, $r10=var1555, $z0=var1996, 184=var2524, "java/lang/Integer"=var3757, "toString"=var1005, "(I)Ljava/lang/String;"=var805, 0=var3312, com.alibaba.fastjson2.internal.asm.ASMUtils=var1012, $r13=var1340, 182=var2517, "writeString"=var1922, "(Ljava/lang/String;)V"=var1289}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Integer: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0);	$r10 = "string";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto (branch);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(184, "java/lang/Integer", "toString", "(I)Ljava/lang/String;", 0);	$r13 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r13, "writeString", "(Ljava/lang/String;)V", 0);	goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)];	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 4