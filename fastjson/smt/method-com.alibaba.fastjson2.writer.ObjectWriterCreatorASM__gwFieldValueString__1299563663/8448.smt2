(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var3475 0)
(declare-sort var830 0)
(declare-sort var1187 0)
(declare-sort var3103 0)
(declare-sort var12 0)
(declare-sort var1016 0)
(declare-sort var1307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var3475) Bool)
(declare-fun features/-2048851183 (var830) Int)
(declare-fun objectFeatures/1968396404 (var3475) Int)
(declare-fun mw/1968396404 (var3475) var1187)
(declare-fun fieldClass/-2048851183 (var830) ClassObject)
(declare-fun format/-2048851183 (var830) String)
(declare-fun var/1427438936 (var3475 var3103) Int)
(declare-fun cast-from-ClassObject-to-var3103 (ClassObject) var3103)
(declare-fun var12-init () var12)
(declare-fun <init>/-2069075760 (var12) void)
(declare-fun genGetObject/-2113871742 (var1910 var3475 var830 Int Int) void)
(declare-fun visitInsn/-918620226 (var1187 Int) void)
(declare-fun visitVarInsn/-915853820 (var1187 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var1187 Int var12) void)
(declare-fun gwFieldName/844239833 (var1910 var3475 var830 Int) void)
(declare-fun visitMethodInsn/-527702312 (var1187 Int String String String Bool) void)
(declare-fun var1910_gwString/1014499970 (var3475 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var1187 var12) void)
(declare-fun mask/-2077367092 (var1016) Int)
(declare-fun genIsEnabled/1740983204 (var3475 Int var12 var12) void)
(declare-fun defaultValue/-2048851183 (var830) var3103)
(declare-fun visitLdcInsn/1458008857 (var1187 String) void)
(declare-const null-var1910 var1910)
(declare-const null-var3475 var3475)
(declare-const null-var830 var830)
(declare-const null-Int Int)
(declare-const var1016-NullAsDefaultValue var1016)
(declare-const var1016-WriteNullNumberAsZero var1016)
(declare-const var1016-WriteNullBooleanAsFalse var1016)
(declare-const var1016-WriteNullListAsEmpty var1016)
(declare-const var1016-WriteNullStringAsEmpty var1016)
(declare-const var1016-WriteNulls var1016)
(declare-const null-var3103 var3103)
(declare-const var1307-TYPE_JSON_WRITER String)
(declare-const var2713 var1910) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2713 null-var1910)))
(declare-const var1233 var3475) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1233 null-var3475)))
(declare-const var3301 var830) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3301 null-var830)))
(declare-const var3988 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3988 null-Int)))
(declare-const var2821 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var2821 null-Int)))
(define-const var421 Bool (jsonb/1968396404 var1233)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3930 Int (features/-2048851183 var3301)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var2274 Int (objectFeatures/1968396404 var1233)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var1983 Int (bv2nat (bvor ((_ int2bv 64) var3930) ((_ int2bv 64) var2274)))) ; Statement: l2 = $l1 | $l0 
(define-const var2832 var1187 (mw/1968396404 var1233)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2081 ClassObject (fieldClass/-2048851183 var3301)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3199 String (format/-2048851183 var3301)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var1162 Int (var/1427438936 var1233 (cast-from-ClassObject-to-var3103 var2081))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var620 var12 var12-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var620)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var620!1 var12)
(define-const var447 var12 var12-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var447)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var447!1 var12)
(assert true)
;(assert (genGetObject/-2113871742 var2713 var1233 var3301 var2821 var3988)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var2713!1 var1910)
(declare-const var1233!1 var3475)
(declare-const var3301!1 var830)
(declare-const var2821!1 Int)
(declare-const var3988!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2832 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var2832!1 var1187)
(declare-const var3669 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2832!1 58 var1162)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var2832!2 var1187)
(declare-const var3598 Int)
(declare-const var1162!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2832!2 198 var620!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var2832!3 var1187)
(declare-const var1616 Int)
(declare-const var620!2 var12)
(assert true)
;(assert (gwFieldName/844239833 var2713!1 var1233!1 var3301!1 var2821!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2713!2 var1910)
(declare-const var1233!2 var3475)
(declare-const var3301!2 var830)
(declare-const var2821!2 Int)
(define-const var2978 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1322 Bool (= var2978 var3199)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var1322 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var2832!3 25 var1162!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3) 

(declare-const var2832!4 var1187)
(declare-const var2013 Int)
(declare-const var1162!2 Int)
(assert true)
;(assert (visitMethodInsn/-527702312 var2832!4 182 "java/lang/String" "trim" "()Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0) 

(declare-const var2832!5 var1187)
(declare-const var3727 Int)
(declare-const var876 String)
(declare-const var2053 String)
(declare-const var2959 String)
(declare-const var3286 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2832!5 58 var1162!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var2832!6 var1187)
(declare-const var3598!1 Int)
(declare-const var1162!3 Int)
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var421 1 0) 0)) ; Cond: z0 == 0 
(define-const var85 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var1910_gwString/1014499970 var1233!2 var85 (ite (= 1 0) true false) var1162!3)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var1233!3 var3475)
(declare-const var85!1 Bool)
(declare-const var3286!1 Int)
(declare-const var1162!4 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2832!6 167 var447!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2832!7 var1187)
(declare-const var2587 Int)
(declare-const var447!2 var12)
(assert true)
;(assert (visitLabel/567040954 var2832!7 var620!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var2832!8 var1187)
(declare-const var620!3 var12)
(define-const var2767 var12 var12-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2767)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2767!1 var12)
(define-const var3206 var12 var12-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3206)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3206!1 var12)
(define-const var1691 var1016 var1016-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1990 Int (mask/-2077367092 var1691)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1121 var1016 var1016-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var1576 Int (mask/-2077367092 var1121)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3247 Int (bv2nat (bvor ((_ int2bv 64) var1990) ((_ int2bv 64) var1576)))) ; Statement: $l20 = $l18 | $l19 
(define-const var2309 var1016 var1016-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var789 Int (mask/-2077367092 var2309)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2894 Int (bv2nat (bvor ((_ int2bv 64) var3247) ((_ int2bv 64) var789)))) ; Statement: $l22 = $l20 | $l21 
(define-const var2454 var1016 var1016-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var1889 Int (mask/-2077367092 var2454)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3127 Int (bv2nat (bvor ((_ int2bv 64) var2894) ((_ int2bv 64) var1889)))) ; Statement: $l24 = $l22 | $l23 
(define-const var2966 var1016 var1016-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var959 Int (mask/-2077367092 var2966)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2008 Int (bv2nat (bvor ((_ int2bv 64) var3127) ((_ int2bv 64) var959)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3818 var1016 var1016-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var2219 Int (mask/-2077367092 var3818)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3292 Int (bv2nat (bvor ((_ int2bv 64) var2219) ((_ int2bv 64) var2008)))) ; Statement: $l28 = $l27 | $l26 
(define-const var1540 Int (bv2nat (bvand ((_ int2bv 64) var1983) ((_ int2bv 64) var3292)))) ; Statement: $l29 = l2 & $l28 
(define-const var603 Int (ite (> var1540 0) 1 (ite (< var1540 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (not (= var603 0)))) ; Negate: Cond: $b30 != 0  
(define-const var221 var1016 var1016-WriteNulls) ; Statement: $r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var3863 Int (mask/-2077367092 var221)) ; Statement: $l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1286 var1016 var1016-NullAsDefaultValue) ; Statement: $r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var3373 Int (mask/-2077367092 var1286)) ; Statement: $l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1974 Int (bv2nat (bvor ((_ int2bv 64) var3863) ((_ int2bv 64) var3373)))) ; Statement: $l16 = $l14 | $l13 
(define-const var827 var1016 var1016-WriteNullStringAsEmpty) ; Statement: $r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var230 Int (mask/-2077367092 var827)) ; Statement: $l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3699 Int (bv2nat (bvor ((_ int2bv 64) var1974) ((_ int2bv 64) var230)))) ; Statement: $l17 = $l16 | $l15 
(assert true)
;(assert (genIsEnabled/1740983204 var1233!3 var3699 var3206!1 var447!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6) 

(declare-const var1233!4 var3475)
(declare-const var3699!1 Int)
(declare-const var3206!2 var12)
(declare-const var447!3 var12)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var2832!8 var3206!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var2832!9 var1187)
(declare-const var3206!3 var12)
(define-const var174 var3103 (defaultValue/-2048851183 var3301!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var174 null-var3103))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var2713!2 var1233!4 var3301!2 var2821!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2713!3 var1910)
(declare-const var1233!5 var3475)
(declare-const var3301!3 var830)
(declare-const var2821!3 Int)
(define-const var2570 Int (bv2nat (bvand ((_ int2bv 64) var1983) ((_ int2bv 64) var2008)))) ; Statement: $l6 = l2 & $l26 
(define-const var2395 Int (ite (> var2570 0) 1 (ite (< var2570 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var2395 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var2832!9 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2832!10 var1187)
(declare-const var2013!1 Int)
(declare-const var280 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var2832!10 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var2832!11 var1187)
(declare-const var441 String)
(define-const var2148 String var1307-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2832!11 182 var2148 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var2832!12 var1187)
(declare-const var3727!1 Int)
(declare-const var2148!1 String)
(declare-const var628 String)
(declare-const var3224 String)
(declare-const var3286!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2832!12 167 var447!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2832!13 var1187)
(declare-const var2587!1 Int)
(declare-const var447!4 var12)
(assert true)
;(assert (visitLabel/567040954 var2832!13 var2767!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var2832!14 var1187)
(declare-const var2767!2 var12)
(assert true)
;(assert (visitVarInsn/-915853820 var2832!14 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2832!15 var1187)
(declare-const var2013!2 Int)
(declare-const var280!1 Int)
(define-const var201 String var1307-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2832!15 182 var201 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var2832!16 var1187)
(declare-const var3727!2 Int)
(declare-const var201!1 String)
(declare-const var1066 String)
(declare-const var945 String)
(declare-const var3286!3 Int)
(assert true)
;(assert (visitLabel/567040954 var2832!16 var447!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var2832!17 var1187)
(declare-const var447!5 var12)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3103=([java.lang.Class], java.lang.Object), var12-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var1910_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genIsEnabled/1740983204=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void)}
; {var1910=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2713=r7, var3475=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1233=r0, var830=com.alibaba.fastjson2.writer.FieldWriter, var3301=r1, var3988=i5, var2821=i4, var421=z0, var3930=$l1, var2274=$l0, var1983=l2, var1187=com.alibaba.fastjson2.internal.asm.MethodWriter, var2832=r2, var2081=r3, var3199=r4, var3103=java.lang.Object, var1162=i3, var12=com.alibaba.fastjson2.internal.asm.Label, var620=$r5, var447=$r6, var3669=89, var3598=58, var1616=198, var2978=$r8, var1322=$z1, var2013=25, var3727=182, var876="java/lang/String", var2053="trim", var2959="()Ljava/lang/String;", var3286=0, var85=$z5, var2587=167, var2767=$r22, var3206=$r23, var1016=com.alibaba.fastjson2.JSONWriter$Feature, var1691=$r24, var1990=$l18, var1121=$r25, var1576=$l19, var3247=$l20, var2309=$r26, var789=$l21, var2894=$l22, var2454=$r27, var1889=$l23, var3127=$l24, var2966=$r28, var959=$l25, var2008=$l26, var3818=$r29, var2219=$l27, var3292=$l28, var1540=$l29, var603=$b30, var221=$r18, var3863=$l14, var1286=$r19, var3373=$l13, var1974=$l16, var827=$r20, var230=$l15, var3699=$l17, var174=$r9, var2570=$l6, var2395=$b7, var280=1, var441="", var1307=com.alibaba.fastjson2.internal.asm.ASMUtils, var2148=$r31, var628="writeString", var3224="(Ljava/lang/String;)V", var201=$r32, var1066="writeStringNull", var945="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1910, r7=var2713, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3475, r0=var1233, com.alibaba.fastjson2.writer.FieldWriter=var830, r1=var3301, i5=var3988, i4=var2821, z0=var421, $l1=var3930, $l0=var2274, l2=var1983, com.alibaba.fastjson2.internal.asm.MethodWriter=var1187, r2=var2832, r3=var2081, r4=var3199, java.lang.Object=var3103, i3=var1162, com.alibaba.fastjson2.internal.asm.Label=var12, $r5=var620, $r6=var447, 89=var3669, 58=var3598, 198=var1616, $r8=var2978, $z1=var1322, 25=var2013, 182=var3727, "java/lang/String"=var876, "trim"=var2053, "()Ljava/lang/String;"=var2959, 0=var3286, $z5=var85, 167=var2587, $r22=var2767, $r23=var3206, com.alibaba.fastjson2.JSONWriter$Feature=var1016, $r24=var1691, $l18=var1990, $r25=var1121, $l19=var1576, $l20=var3247, $r26=var2309, $l21=var789, $l22=var2894, $r27=var2454, $l23=var1889, $l24=var3127, $r28=var2966, $l25=var959, $l26=var2008, $r29=var3818, $l27=var2219, $l28=var3292, $l29=var1540, $b30=var603, $r18=var221, $l14=var3863, $r19=var1286, $l13=var3373, $l16=var1974, $r20=var827, $l15=var230, $l17=var3699, $r9=var174, $l6=var2570, $b7=var2395, 1=var280, ""=var441, com.alibaba.fastjson2.internal.asm.ASMUtils=var1307, $r31=var2148, "writeString"=var628, "(Ljava/lang/String;)V"=var3224, $r32=var201, "writeStringNull"=var1066, "()V"=var945}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l16 = $l14 | $l13;	$r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l16 | $l15;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9