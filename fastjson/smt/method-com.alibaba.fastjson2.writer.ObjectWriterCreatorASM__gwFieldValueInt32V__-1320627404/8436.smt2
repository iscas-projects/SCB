(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort var3782 0)
(declare-sort var3508 0)
(declare-sort var536 0)
(declare-sort var493 0)
(declare-sort var1631 0)
(declare-sort var2241 0)
(declare-sort var3266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3782) var536)
(declare-fun format/-2048851183 (var3508) String)
(declare-fun classNameType/1968396404 (var3782) String)
(declare-fun var/1427438936 (var3782 var493) Int)
(declare-fun cast-from-ClassObject-to-var493 (ClassObject) var493)
(declare-fun cast-from-String-to-var493 (String) var493)
(declare-fun var1631-init () var1631)
(declare-fun <init>/-2069075760 (var1631) void)
(declare-fun genGetObject/-2113871742 (var3157 var3782 var3508 Int Int) void)
(declare-fun visitInsn/-918620226 (var536 Int) void)
(declare-fun visitVarInsn/-915853820 (var536 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var536 Int var1631) void)
(declare-fun defaultValue/-2048851183 (var3508) var493)
(declare-fun visitLabel/567040954 (var536 var1631) void)
(declare-fun gwFieldName/844239833 (var3157 var3782 var3508 Int) void)
(declare-fun visitLdcInsn/1458008857 (var536 String) void)
(declare-fun visitMethodInsn/-527702312 (var536 Int String String String Bool) void)
(declare-const null-var3157 var3157)
(declare-const null-var3782 var3782)
(declare-const null-var3508 var3508)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var493 var493)
(declare-const null-String String)
(declare-const var3266-TYPE_JSON_WRITER String)
(declare-const var3373 var3157) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3373 null-var3157)))
(declare-const var151 var3782) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var151 null-var3782)))
(declare-const var2696 var3508) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2696 null-var3508)))
(declare-const var3156 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3156 null-Int)))
(declare-const var118 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var118 null-Int)))
(declare-const var1012 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1012 null-Bool)))
(define-const var438 var536 (mw/1968396404 var151)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3634 String (format/-2048851183 var2696)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var1253 String (classNameType/1968396404 var151)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2327 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
(define-const var947 Int (var/1427438936 var151 (cast-from-ClassObject-to-var493 var2327))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var1418 Int (var/1427438936 var151 (cast-from-String-to-var493 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var432 var1631 var1631-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var432)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var432!1 var1631)
(define-const var183 var1631 var1631-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var183)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var183!1 var1631)
(assert true)
;(assert (genGetObject/-2113871742 var3373 var151 var2696 var118 var3156)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var3373!1 var3157)
(declare-const var151!1 var3782)
(declare-const var2696!1 var3508)
(declare-const var118!1 Int)
(declare-const var3156!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var438 89)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var438!1 var536)
(declare-const var2313 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var438!1 54 var947)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0) 

(declare-const var438!2 var536)
(declare-const var2490 Int)
(declare-const var947!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var438!2 154 var432!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var438!3 var536)
(declare-const var2966 Int)
(declare-const var432!2 var1631)
(define-const var2118 var493 (defaultValue/-2048851183 var2696!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (not (= var2118 null-var493)))) ; Negate: Cond: $r9 != null  
(assert true)
;(assert (visitVarInsn/-915853820 var438!3 21 var1418)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1) 

(declare-const var438!4 var536)
(declare-const var676 Int)
(declare-const var1418!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var438!4 153 var432!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6) 

(declare-const var438!5 var536)
(declare-const var640 Int)
(declare-const var432!3 var1631)
(assert true)
;(assert (visitJumpInsn/413071865 var438!5 167 var183!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7) 

(declare-const var438!6 var536)
(declare-const var1212 Int)
(declare-const var183!2 var1631)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var438!6 var432!3)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var438!7 var536)
(declare-const var432!4 var1631)
(assert true)
;(assert (gwFieldName/844239833 var3373!1 var151!1 var2696!1 var118!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var3373!2 var3157)
(declare-const var151!2 var3782)
(declare-const var2696!2 var3508)
(declare-const var118!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var438!7 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var438!8 var536)
(declare-const var2261 Int)
(declare-const var813 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var438!8 21 var947!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0) 

(declare-const var438!9 var536)
(declare-const var676!1 Int)
(declare-const var947!2 Int)
(define-const var913 String "string") ; Statement: $r10 = "string" 
(assert true)
(define-const var2307 Bool (= var913 var3634)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2307 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert (not (= var3634 null-String))) ; Negate: Cond: r3 == null  
(assert true)
;(assert (visitLdcInsn/1458008857 var438!9 var3634)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>(r3) 

(declare-const var438!10 var536)
(declare-const var3634!1 String)
(define-const var2562 String var3266-TYPE_JSON_WRITER) ; Statement: $r12 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var438!10 182 var2562 "writeInt32" "(ILjava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r12, "writeInt32", "(ILjava/lang/String;)V", 0) 

(declare-const var438!11 var536)
(declare-const var125 Int)
(declare-const var2562!1 String)
(declare-const var2326 String)
(declare-const var811 String)
(declare-const var1847 Int)
 ; Statement: goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var438!11 var183!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var438!12 var536)
(declare-const var183!3 var1631)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var493=([java.lang.Class], java.lang.Object), cast-from-String-to-var493=([java.lang.String], java.lang.Object), var1631-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3157=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3373=r8, var3782=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var151=r0, var3508=com.alibaba.fastjson2.writer.FieldWriter, var2696=r2, var3156=i3, var118=i2, var1012=z1, var536=com.alibaba.fastjson2.internal.asm.MethodWriter, var438=r1, var3634=r3, var1253=r4, var2327=$r5, var493=java.lang.Object, var947=i0, var1418=i1, var1631=com.alibaba.fastjson2.internal.asm.Label, var432=$r6, var183=$r7, var2313=89, var2490=54, var2966=154, var2118=$r9, var676=21, var640=153, var1212=167, var2261=25, var813=1, var913=$r10, var2307=$z0, var2241=null_type, var3266=com.alibaba.fastjson2.internal.asm.ASMUtils, var2562=$r12, var125=182, var2326="writeInt32", var811="(ILjava/lang/String;)V", var1847=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3157, r8=var3373, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3782, r0=var151, com.alibaba.fastjson2.writer.FieldWriter=var3508, r2=var2696, i3=var3156, i2=var118, z1=var1012, com.alibaba.fastjson2.internal.asm.MethodWriter=var536, r1=var438, r3=var3634, r4=var1253, $r5=var2327, java.lang.Object=var493, i0=var947, i1=var1418, com.alibaba.fastjson2.internal.asm.Label=var1631, $r6=var432, $r7=var183, 89=var2313, 54=var2490, 154=var2966, $r9=var2118, 21=var676, 153=var640, 167=var1212, 25=var2261, 1=var813, $r10=var913, $z0=var2307, null_type=var2241, com.alibaba.fastjson2.internal.asm.ASMUtils=var3266, $r12=var2562, 182=var125, "writeInt32"=var2326, "(ILjava/lang/String;)V"=var811, 0=var1847}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Integer: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i0);	$r10 = "string";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto (branch);	if r3 == null goto $r11 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>(r3);	$r12 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r12, "writeInt32", "(ILjava/lang/String;)V", 0);	goto [?= virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7)];	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 6