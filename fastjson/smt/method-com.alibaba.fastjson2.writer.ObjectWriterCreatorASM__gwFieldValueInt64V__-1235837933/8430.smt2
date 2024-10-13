(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2064 0)
(declare-sort var3539 0)
(declare-sort var1782 0)
(declare-sort var60 0)
(declare-sort var2301 0)
(declare-sort var3701 0)
(declare-sort var3446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3539) var60)
(declare-fun format/-2048851183 (var1782) String)
(declare-fun classNameType/1968396404 (var3539) String)
(declare-fun var/1427438936 (var3539 var2301) Int)
(declare-fun cast-from-ClassObject-to-var2301 (ClassObject) var2301)
(declare-fun cast-from-String-to-var2301 (String) var2301)
(declare-fun var3701-init () var3701)
(declare-fun <init>/-2069075760 (var3701) void)
(declare-fun genGetObject/-2113871742 (var2064 var3539 var1782 Int Int) void)
(declare-fun visitInsn/-918620226 (var60 Int) void)
(declare-fun visitVarInsn/-915853820 (var60 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var60 Int var3701) void)
(declare-fun defaultValue/-2048851183 (var1782) var2301)
(declare-fun visitLabel/567040954 (var60 var3701) void)
(declare-fun var2064_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var60 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var60 Int String String String Bool) void)
(declare-const null-var2064 var2064)
(declare-const null-var3539 var3539)
(declare-const null-var1782 var1782)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var2301 var2301)
(declare-const var3446-DESC_FIELD_WRITER String)
(declare-const var3446-TYPE_FIELD_WRITER String)
(declare-const var2064-METHOD_DESC_WRITE_J String)
(declare-const var634 var2064) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var634 null-var2064)))
(declare-const var1120 var3539) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1120 null-var3539)))
(declare-const var2819 var1782) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2819 null-var1782)))
(declare-const var2838 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2838 null-Int)))
(declare-const var363 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var363 null-Int)))
(declare-const var2788 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2788 null-Bool)))
(define-const var2593 var60 (mw/1968396404 var1120)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var481 String (format/-2048851183 var2819)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var1907 String (classNameType/1968396404 var1120)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2088 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Long: java.lang.Class TYPE> 
(assert true)
(define-const var3569 Int (var/1427438936 var1120 (cast-from-ClassObject-to-var2301 var2088))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var2392 Int (var/1427438936 var1120 (cast-from-String-to-var2301 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var3597 var3701 var3701-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3597)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3597!1 var3701)
(define-const var1622 var3701 var3701-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1622)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1622!1 var3701)
(assert true)
;(assert (genGetObject/-2113871742 var634 var1120 var2819 var363 var2838)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var634!1 var2064)
(declare-const var1120!1 var3539)
(declare-const var2819!1 var1782)
(declare-const var363!1 Int)
(declare-const var2838!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2593 92)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92) 

(declare-const var2593!1 var60)
(declare-const var3965 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2593!1 55 var3569)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0) 

(declare-const var2593!2 var60)
(declare-const var299 Int)
(declare-const var3569!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2593!2 9)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var2593!3 var60)
(declare-const var545 Int)
(assert true)
;(assert (visitInsn/-918620226 var2593!3 148)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var2593!4 var60)
(declare-const var2101 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2593!4 154 var3597!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var2593!5 var60)
(declare-const var1446 Int)
(declare-const var3597!2 var3701)
(define-const var2926 var2301 (defaultValue/-2048851183 var2819!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (= var2926 null-var2301))) ; Cond: $r9 != null 
(assert true)
;(assert (visitLabel/567040954 var2593!5 var3597!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var2593!6 var60)
(declare-const var3597!3 var3701)
(define-const var2031 String "iso8601") ; Statement: $r10 = "iso8601" 
(assert true)
(define-const var2700 Bool (= var2031 var481)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 
(assert (not (= (ite var2700 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var2593!6 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2593!7 var60)
(declare-const var2128 Int)
(declare-const var575 Int)
(define-const var706 String (var2064_fieldWriter/625874517 var363!1)) ; Statement: $r12 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i2) 
(define-const var933 String var3446-DESC_FIELD_WRITER) ; Statement: $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var2593!7 180 var1907 var706 var933)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r4, $r12, $r11) 

(declare-const var2593!8 var60)
(declare-const var3781 Int)
(declare-const var1907!1 String)
(declare-const var706!1 String)
(declare-const var933!1 String)
(assert true)
;(assert (visitVarInsn/-915853820 var2593!8 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2593!9 var60)
(declare-const var2128!1 Int)
(declare-const var883 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2593!9 22 var3569!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0) 

(declare-const var2593!10 var60)
(declare-const var2079 Int)
(declare-const var3569!2 Int)
(define-const var403 String var3446-TYPE_FIELD_WRITER) ; Statement: $r14 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
 ; Statement: if $z0 == 0 goto $r19 = "writeInt64" 
(assert (= (ite var2700 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1939 String "writeInt64") ; Statement: $r19 = "writeInt64" 
(assert true) ; Non Conditional
(define-const var857 String var2064-METHOD_DESC_WRITE_J) ; Statement: $r13 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_J> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2593!10 182 var403 var1939 var857 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, $r19, $r13, 0) 

(declare-const var2593!11 var60)
(declare-const var2681 Int)
(declare-const var403!1 String)
(declare-const var1939!1 String)
(declare-const var857!1 String)
(declare-const var575!1 Int)
 ; Statement: goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var2593!11 var1622!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var2593!12 var60)
(declare-const var1622!2 var3701)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var2301=([java.lang.Class], java.lang.Object), cast-from-String-to-var2301=([java.lang.String], java.lang.Object), var3701-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), var2064_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2064=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var634=r8, var3539=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1120=r0, var1782=com.alibaba.fastjson2.writer.FieldWriter, var2819=r2, var2838=i3, var363=i2, var2788=z1, var60=com.alibaba.fastjson2.internal.asm.MethodWriter, var2593=r1, var481=r3, var1907=r4, var2088=$r5, var2301=java.lang.Object, var3569=i0, var2392=i1, var3701=com.alibaba.fastjson2.internal.asm.Label, var3597=$r6, var1622=$r7, var3965=92, var299=55, var545=9, var2101=148, var1446=154, var2926=$r9, var2031=$r10, var2700=$z0, var2128=25, var575=0, var706=$r12, var3446=com.alibaba.fastjson2.internal.asm.ASMUtils, var933=$r11, var3781=180, var883=1, var2079=22, var403=$r14, var1939=$r19, var857=$r13, var2681=182}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2064, r8=var634, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3539, r0=var1120, com.alibaba.fastjson2.writer.FieldWriter=var1782, r2=var2819, i3=var2838, i2=var363, z1=var2788, com.alibaba.fastjson2.internal.asm.MethodWriter=var60, r1=var2593, r3=var481, r4=var1907, $r5=var2088, java.lang.Object=var2301, i0=var3569, i1=var2392, com.alibaba.fastjson2.internal.asm.Label=var3701, $r6=var3597, $r7=var1622, 92=var3965, 55=var299, 9=var545, 148=var2101, 154=var1446, $r9=var2926, $r10=var2031, $z0=var2700, 25=var2128, 0=var575, $r12=var706, com.alibaba.fastjson2.internal.asm.ASMUtils=var3446, $r11=var933, 180=var3781, 1=var883, 22=var2079, $r14=var403, $r19=var1939, $r13=var857, 182=var2681}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Long: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	$r10 = "iso8601";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r12 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i2);	$r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r4, $r12, $r11);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0);	$r14 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	if $z0 == 0 goto $r19 = "writeInt64";	$r19 = "writeInt64";	$r13 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_J>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, $r19, $r13, 0);	goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)];	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 6