(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort var2198 0)
(declare-sort var3978 0)
(declare-sort var1861 0)
(declare-sort var811 0)
(declare-sort var2900 0)
(declare-sort var1106 0)
(declare-sort var889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var2198) Bool)
(declare-fun features/-2048851183 (var3978) Int)
(declare-fun objectFeatures/1968396404 (var2198) Int)
(declare-fun mw/1968396404 (var2198) var1861)
(declare-fun fieldClass/-2048851183 (var3978) ClassObject)
(declare-fun format/-2048851183 (var3978) String)
(declare-fun var/1427438936 (var2198 var811) Int)
(declare-fun cast-from-ClassObject-to-var811 (ClassObject) var811)
(declare-fun var2900-init () var2900)
(declare-fun <init>/-2069075760 (var2900) void)
(declare-fun genGetObject/-2113871742 (var3278 var2198 var3978 Int Int) void)
(declare-fun visitInsn/-918620226 (var1861 Int) void)
(declare-fun visitVarInsn/-915853820 (var1861 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var1861 Int var2900) void)
(declare-fun gwFieldName/844239833 (var3278 var2198 var3978 Int) void)
(declare-fun var3278_gwString/1014499970 (var2198 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var1861 var2900) void)
(declare-fun mask/-2077367092 (var1106) Int)
(declare-fun defaultValue/-2048851183 (var3978) var811)
(declare-fun genIsDisabled/-1903259308 (var2198 Int var2900) void)
(declare-fun visitLdcInsn/1458008857 (var1861 String) void)
(declare-fun visitMethodInsn/-527702312 (var1861 Int String String String Bool) void)
(declare-const null-var3278 var3278)
(declare-const null-var2198 var2198)
(declare-const null-var3978 var3978)
(declare-const null-Int Int)
(declare-const var1106-NullAsDefaultValue var1106)
(declare-const var1106-WriteNullNumberAsZero var1106)
(declare-const var1106-WriteNullBooleanAsFalse var1106)
(declare-const var1106-WriteNullListAsEmpty var1106)
(declare-const var1106-WriteNullStringAsEmpty var1106)
(declare-const var1106-WriteNulls var1106)
(declare-const null-var811 var811)
(declare-const var1106-NotWriteDefaultValue var1106)
(declare-const var889-TYPE_JSON_WRITER String)
(declare-const var3462 var3278) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3462 null-var3278)))
(declare-const var2302 var2198) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2302 null-var2198)))
(declare-const var3856 var3978) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3856 null-var3978)))
(declare-const var3976 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3976 null-Int)))
(declare-const var931 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var931 null-Int)))
(define-const var3429 Bool (jsonb/1968396404 var2302)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3852 Int (features/-2048851183 var3856)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var3544 Int (objectFeatures/1968396404 var2302)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var3928 Int (bv2nat (bvor ((_ int2bv 64) var3852) ((_ int2bv 64) var3544)))) ; Statement: l2 = $l1 | $l0 
(define-const var433 var1861 (mw/1968396404 var2302)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3943 ClassObject (fieldClass/-2048851183 var3856)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var941 String (format/-2048851183 var3856)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var1997 Int (var/1427438936 var2302 (cast-from-ClassObject-to-var811 var3943))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var2043 var2900 var2900-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2043)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2043!1 var2900)
(define-const var3984 var2900 var2900-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3984)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3984!1 var2900)
(assert true)
;(assert (genGetObject/-2113871742 var3462 var2302 var3856 var931 var3976)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var3462!1 var3278)
(declare-const var2302!1 var2198)
(declare-const var3856!1 var3978)
(declare-const var931!1 Int)
(declare-const var3976!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var433 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var433!1 var1861)
(declare-const var434 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var433!1 58 var1997)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var433!2 var1861)
(declare-const var2718 Int)
(declare-const var1997!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var433!2 198 var2043!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var433!3 var1861)
(declare-const var916 Int)
(declare-const var2043!2 var2900)
(assert true)
;(assert (gwFieldName/844239833 var3462!1 var2302!1 var3856!1 var931!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var3462!2 var3278)
(declare-const var2302!2 var2198)
(declare-const var3856!2 var3978)
(declare-const var931!2 Int)
(define-const var3444 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var270 Bool (= var3444 var941)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var270 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var3429 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var178 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var826 Bool (= var178 var941)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (not (= (ite var826 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3575 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)] 
(assert true) ; Non Conditional
;(assert (var3278_gwString/1014499970 var2302!2 var3575 (ite (= 1 0) true false) var1997!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var2302!3 var2198)
(declare-const var3575!1 Bool)
(declare-const var487 Int)
(declare-const var1997!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var433!3 167 var3984!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var433!4 var1861)
(declare-const var3772 Int)
(declare-const var3984!2 var2900)
(assert true)
;(assert (visitLabel/567040954 var433!4 var2043!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var433!5 var1861)
(declare-const var2043!3 var2900)
(define-const var3713 var2900 var2900-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3713)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3713!1 var2900)
(define-const var2767 var2900 var2900-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2767)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2767!1 var2900)
(define-const var1194 var1106 var1106-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1772 Int (mask/-2077367092 var1194)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1528 var1106 var1106-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var1199 Int (mask/-2077367092 var1528)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2796 Int (bv2nat (bvor ((_ int2bv 64) var1772) ((_ int2bv 64) var1199)))) ; Statement: $l20 = $l18 | $l19 
(define-const var2038 var1106 var1106-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var3496 Int (mask/-2077367092 var2038)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3756 Int (bv2nat (bvor ((_ int2bv 64) var2796) ((_ int2bv 64) var3496)))) ; Statement: $l22 = $l20 | $l21 
(define-const var562 var1106 var1106-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var1800 Int (mask/-2077367092 var562)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2792 Int (bv2nat (bvor ((_ int2bv 64) var3756) ((_ int2bv 64) var1800)))) ; Statement: $l24 = $l22 | $l23 
(define-const var1629 var1106 var1106-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3195 Int (mask/-2077367092 var1629)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var49 Int (bv2nat (bvor ((_ int2bv 64) var2792) ((_ int2bv 64) var3195)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3213 var1106 var1106-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var3801 Int (mask/-2077367092 var3213)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var8 Int (bv2nat (bvor ((_ int2bv 64) var3801) ((_ int2bv 64) var49)))) ; Statement: $l28 = $l27 | $l26 
(define-const var1729 Int (bv2nat (bvand ((_ int2bv 64) var3928) ((_ int2bv 64) var8)))) ; Statement: $l29 = l2 & $l28 
(define-const var3948 Int (ite (> var1729 0) 1 (ite (< var1729 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var3948 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var433!5 var2767!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var433!6 var1861)
(declare-const var2767!2 var2900)
(define-const var283 var811 (defaultValue/-2048851183 var3856!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (not (= var283 null-var811)))) ; Negate: Cond: $r9 != null  
(define-const var1580 var1106 var1106-NotWriteDefaultValue) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue> 
(define-const var3201 Int (mask/-2077367092 var1580)) ; Statement: $l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(assert true)
;(assert (genIsDisabled/-1903259308 var2302!3 var3201 var3984!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6) 

(declare-const var2302!4 var2198)
(declare-const var3201!1 Int)
(declare-const var3984!3 var2900)
(assert true) ; Non Conditional
(assert true)
;(assert (gwFieldName/844239833 var3462!2 var2302!4 var3856!2 var931!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var3462!3 var3278)
(declare-const var2302!5 var2198)
(declare-const var3856!3 var3978)
(declare-const var931!3 Int)
(define-const var835 Int (bv2nat (bvand ((_ int2bv 64) var3928) ((_ int2bv 64) var49)))) ; Statement: $l6 = l2 & $l26 
(define-const var1191 Int (ite (> var835 0) 1 (ite (< var835 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var1191 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var433!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var433!7 var1861)
(declare-const var3514 Int)
(declare-const var3119 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var433!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var433!8 var1861)
(declare-const var3598 String)
(define-const var1145 String var889-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var433!8 182 var1145 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var433!9 var1861)
(declare-const var2843 Int)
(declare-const var1145!1 String)
(declare-const var2088 String)
(declare-const var3571 String)
(declare-const var487!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var433!9 167 var3984!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var433!10 var1861)
(declare-const var3772!1 Int)
(declare-const var3984!4 var2900)
(assert true)
;(assert (visitLabel/567040954 var433!10 var3713!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var433!11 var1861)
(declare-const var3713!2 var2900)
(assert true)
;(assert (visitVarInsn/-915853820 var433!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var433!12 var1861)
(declare-const var3514!1 Int)
(declare-const var3119!1 Int)
(define-const var3654 String var889-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var433!12 182 var3654 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var433!13 var1861)
(declare-const var2843!1 Int)
(declare-const var3654!1 String)
(declare-const var508 String)
(declare-const var222 String)
(declare-const var487!2 Int)
(assert true)
;(assert (visitLabel/567040954 var433!13 var3984!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var433!14 var1861)
(declare-const var3984!5 var2900)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var811=([java.lang.Class], java.lang.Object), var2900-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var3278_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), genIsDisabled/-1903259308=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3278=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3462=r7, var2198=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2302=r0, var3978=com.alibaba.fastjson2.writer.FieldWriter, var3856=r1, var3976=i5, var931=i4, var3429=z0, var3852=$l1, var3544=$l0, var3928=l2, var1861=com.alibaba.fastjson2.internal.asm.MethodWriter, var433=r2, var3943=r3, var941=r4, var811=java.lang.Object, var1997=i3, var2900=com.alibaba.fastjson2.internal.asm.Label, var2043=$r5, var3984=$r6, var434=89, var2718=58, var916=198, var3444=$r8, var270=$z1, var178=$r21, var826=$z4, var3575=$z5, var487=0, var3772=167, var3713=$r22, var2767=$r23, var1106=com.alibaba.fastjson2.JSONWriter$Feature, var1194=$r24, var1772=$l18, var1528=$r25, var1199=$l19, var2796=$l20, var2038=$r26, var3496=$l21, var3756=$l22, var562=$r27, var1800=$l23, var2792=$l24, var1629=$r28, var3195=$l25, var49=$l26, var3213=$r29, var3801=$l27, var8=$l28, var1729=$l29, var3948=$b30, var283=$r9, var1580=$r17, var3201=$l12, var835=$l6, var1191=$b7, var3514=25, var3119=1, var3598="", var889=com.alibaba.fastjson2.internal.asm.ASMUtils, var1145=$r31, var2843=182, var2088="writeString", var3571="(Ljava/lang/String;)V", var3654=$r32, var508="writeStringNull", var222="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3278, r7=var3462, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2198, r0=var2302, com.alibaba.fastjson2.writer.FieldWriter=var3978, r1=var3856, i5=var3976, i4=var931, z0=var3429, $l1=var3852, $l0=var3544, l2=var3928, com.alibaba.fastjson2.internal.asm.MethodWriter=var1861, r2=var433, r3=var3943, r4=var941, java.lang.Object=var811, i3=var1997, com.alibaba.fastjson2.internal.asm.Label=var2900, $r5=var2043, $r6=var3984, 89=var434, 58=var2718, 198=var916, $r8=var3444, $z1=var270, $r21=var178, $z4=var826, $z5=var3575, 0=var487, 167=var3772, $r22=var3713, $r23=var2767, com.alibaba.fastjson2.JSONWriter$Feature=var1106, $r24=var1194, $l18=var1772, $r25=var1528, $l19=var1199, $l20=var2796, $r26=var2038, $l21=var3496, $l22=var3756, $r27=var562, $l23=var1800, $l24=var2792, $r28=var1629, $l25=var3195, $l26=var49, $r29=var3213, $l27=var3801, $l28=var8, $l29=var1729, $b30=var3948, $r9=var283, $r17=var1580, $l12=var3201, $l6=var835, $b7=var1191, 25=var3514, 1=var3119, ""=var3598, com.alibaba.fastjson2.internal.asm.ASMUtils=var889, $r31=var1145, 182=var2843, "writeString"=var2088, "(Ljava/lang/String;)V"=var3571, $r32=var3654, "writeStringNull"=var508, "()V"=var222}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 1;	goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)];	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue>;	$l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9