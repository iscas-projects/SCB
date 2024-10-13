(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1872 0)
(declare-sort var431 0)
(declare-sort var3372 0)
(declare-sort var3135 0)
(declare-sort var228 0)
(declare-sort var496 0)
(declare-sort var1155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var431) var3135)
(declare-fun format/-2048851183 (var3372) String)
(declare-fun classNameType/1968396404 (var431) String)
(declare-fun var/1427438936 (var431 var228) Int)
(declare-fun cast-from-ClassObject-to-var228 (ClassObject) var228)
(declare-fun cast-from-String-to-var228 (String) var228)
(declare-fun var496-init () var496)
(declare-fun <init>/-2069075760 (var496) void)
(declare-fun genGetObject/-2113871742 (var1872 var431 var3372 Int Int) void)
(declare-fun visitInsn/-918620226 (var3135 Int) void)
(declare-fun visitVarInsn/-915853820 (var3135 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var3135 Int var496) void)
(declare-fun defaultValue/-2048851183 (var3372) var228)
(declare-fun visitLabel/567040954 (var3135 var496) void)
(declare-fun var1872_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var3135 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var3135 Int String String String Bool) void)
(declare-const null-var1872 var1872)
(declare-const null-var431 var431)
(declare-const null-var3372 var3372)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var228 var228)
(declare-const var1155-DESC_FIELD_WRITER String)
(declare-const var1155-TYPE_FIELD_WRITER String)
(declare-const var1872-METHOD_DESC_WRITE_J String)
(declare-const var303 var1872) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var303 null-var1872)))
(declare-const var2305 var431) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2305 null-var431)))
(declare-const var3642 var3372) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3642 null-var3372)))
(declare-const var3163 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3163 null-Int)))
(declare-const var513 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var513 null-Int)))
(declare-const var482 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var482 null-Bool)))
(define-const var1308 var3135 (mw/1968396404 var2305)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3580 String (format/-2048851183 var3642)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var2178 String (classNameType/1968396404 var2305)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2654 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Long: java.lang.Class TYPE> 
(assert true)
(define-const var2716 Int (var/1427438936 var2305 (cast-from-ClassObject-to-var228 var2654))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var672 Int (var/1427438936 var2305 (cast-from-String-to-var228 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var2180 var496 var496-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2180)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2180!1 var496)
(define-const var882 var496 var496-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var882)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var882!1 var496)
(assert true)
;(assert (genGetObject/-2113871742 var303 var2305 var3642 var513 var3163)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var303!1 var1872)
(declare-const var2305!1 var431)
(declare-const var3642!1 var3372)
(declare-const var513!1 Int)
(declare-const var3163!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var1308 92)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92) 

(declare-const var1308!1 var3135)
(declare-const var3635 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1308!1 55 var2716)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0) 

(declare-const var1308!2 var3135)
(declare-const var3402 Int)
(declare-const var2716!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var1308!2 9)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var1308!3 var3135)
(declare-const var2968 Int)
(assert true)
;(assert (visitInsn/-918620226 var1308!3 148)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var1308!4 var3135)
(declare-const var3814 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1308!4 154 var2180!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var1308!5 var3135)
(declare-const var1752 Int)
(declare-const var2180!2 var496)
(define-const var1066 var228 (defaultValue/-2048851183 var3642!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (= var1066 null-var228))) ; Cond: $r9 != null 
(assert true)
;(assert (visitLabel/567040954 var1308!5 var2180!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var1308!6 var3135)
(declare-const var2180!3 var496)
(define-const var2970 String "iso8601") ; Statement: $r10 = "iso8601" 
(assert true)
(define-const var114 Bool (= var2970 var3580)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 
(assert (not (= (ite var114 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var1308!6 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1308!7 var3135)
(declare-const var1677 Int)
(declare-const var69 Int)
(define-const var231 String (var1872_fieldWriter/625874517 var513!1)) ; Statement: $r12 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i2) 
(define-const var3237 String var1155-DESC_FIELD_WRITER) ; Statement: $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var1308!7 180 var2178 var231 var3237)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r4, $r12, $r11) 

(declare-const var1308!8 var3135)
(declare-const var582 Int)
(declare-const var2178!1 String)
(declare-const var231!1 String)
(declare-const var3237!1 String)
(assert true)
;(assert (visitVarInsn/-915853820 var1308!8 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1308!9 var3135)
(declare-const var1677!1 Int)
(declare-const var1665 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1308!9 22 var2716!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0) 

(declare-const var1308!10 var3135)
(declare-const var2041 Int)
(declare-const var2716!2 Int)
(define-const var666 String var1155-TYPE_FIELD_WRITER) ; Statement: $r14 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
 ; Statement: if $z0 == 0 goto $r19 = "writeInt64" 
(assert (not (= (ite var114 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var755 String "writeDate") ; Statement: $r19 = "writeDate" 
 ; Statement: goto [?= $r13 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_J>] 
(assert true) ; Non Conditional
(define-const var2890 String var1872-METHOD_DESC_WRITE_J) ; Statement: $r13 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_J> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1308!10 182 var666 var755 var2890 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, $r19, $r13, 0) 

(declare-const var1308!11 var3135)
(declare-const var2504 Int)
(declare-const var666!1 String)
(declare-const var755!1 String)
(declare-const var2890!1 String)
(declare-const var69!1 Int)
 ; Statement: goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var1308!11 var882!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var1308!12 var3135)
(declare-const var882!2 var496)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var228=([java.lang.Class], java.lang.Object), cast-from-String-to-var228=([java.lang.String], java.lang.Object), var496-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), var1872_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1872=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var303=r8, var431=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2305=r0, var3372=com.alibaba.fastjson2.writer.FieldWriter, var3642=r2, var3163=i3, var513=i2, var482=z1, var3135=com.alibaba.fastjson2.internal.asm.MethodWriter, var1308=r1, var3580=r3, var2178=r4, var2654=$r5, var228=java.lang.Object, var2716=i0, var672=i1, var496=com.alibaba.fastjson2.internal.asm.Label, var2180=$r6, var882=$r7, var3635=92, var3402=55, var2968=9, var3814=148, var1752=154, var1066=$r9, var2970=$r10, var114=$z0, var1677=25, var69=0, var231=$r12, var1155=com.alibaba.fastjson2.internal.asm.ASMUtils, var3237=$r11, var582=180, var1665=1, var2041=22, var666=$r14, var755=$r19, var2890=$r13, var2504=182}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1872, r8=var303, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var431, r0=var2305, com.alibaba.fastjson2.writer.FieldWriter=var3372, r2=var3642, i3=var3163, i2=var513, z1=var482, com.alibaba.fastjson2.internal.asm.MethodWriter=var3135, r1=var1308, r3=var3580, r4=var2178, $r5=var2654, java.lang.Object=var228, i0=var2716, i1=var672, com.alibaba.fastjson2.internal.asm.Label=var496, $r6=var2180, $r7=var882, 92=var3635, 55=var3402, 9=var2968, 148=var3814, 154=var1752, $r9=var1066, $r10=var2970, $z0=var114, 25=var1677, 0=var69, $r12=var231, com.alibaba.fastjson2.internal.asm.ASMUtils=var1155, $r11=var3237, 180=var582, 1=var1665, 22=var2041, $r14=var666, $r19=var755, $r13=var2890, 182=var2504}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Long: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	$r10 = "iso8601";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r12 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i2);	$r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r4, $r12, $r11);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0);	$r14 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	if $z0 == 0 goto $r19 = "writeInt64";	$r19 = "writeDate";	goto [?= $r13 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_J>];	$r13 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_J>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, $r19, $r13, 0);	goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)];	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 6