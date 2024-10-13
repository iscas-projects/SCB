(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3367 0)
(declare-sort var2441 0)
(declare-sort var290 0)
(declare-sort var2632 0)
(declare-sort var1124 0)
(declare-sort var598 0)
(declare-sort var2802 0)
(declare-sort var1839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var2441) Bool)
(declare-fun features/-2048851183 (var290) Int)
(declare-fun objectFeatures/1968396404 (var2441) Int)
(declare-fun mw/1968396404 (var2441) var2632)
(declare-fun fieldClass/-2048851183 (var290) ClassObject)
(declare-fun format/-2048851183 (var290) String)
(declare-fun var/1427438936 (var2441 var1124) Int)
(declare-fun cast-from-ClassObject-to-var1124 (ClassObject) var1124)
(declare-fun var598-init () var598)
(declare-fun <init>/-2069075760 (var598) void)
(declare-fun genGetObject/-2113871742 (var3367 var2441 var290 Int Int) void)
(declare-fun visitInsn/-918620226 (var2632 Int) void)
(declare-fun visitVarInsn/-915853820 (var2632 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var2632 Int var598) void)
(declare-fun gwFieldName/844239833 (var3367 var2441 var290 Int) void)
(declare-fun visitMethodInsn/-527702312 (var2632 Int String String String Bool) void)
(declare-fun var3367_gwString/1014499970 (var2441 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var2632 var598) void)
(declare-fun mask/-2077367092 (var2802) Int)
(declare-fun defaultValue/-2048851183 (var290) var1124)
(declare-fun genIsDisabled/-1903259308 (var2441 Int var598) void)
(declare-fun visitLdcInsn/1458008857 (var2632 String) void)
(declare-const null-var3367 var3367)
(declare-const null-var2441 var2441)
(declare-const null-var290 var290)
(declare-const null-Int Int)
(declare-const var2802-NullAsDefaultValue var2802)
(declare-const var2802-WriteNullNumberAsZero var2802)
(declare-const var2802-WriteNullBooleanAsFalse var2802)
(declare-const var2802-WriteNullListAsEmpty var2802)
(declare-const var2802-WriteNullStringAsEmpty var2802)
(declare-const var2802-WriteNulls var2802)
(declare-const null-var1124 var1124)
(declare-const var2802-NotWriteDefaultValue var2802)
(declare-const var1839-TYPE_JSON_WRITER String)
(declare-const var2902 var3367) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2902 null-var3367)))
(declare-const var3926 var2441) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3926 null-var2441)))
(declare-const var2714 var290) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2714 null-var290)))
(declare-const var1804 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var1804 null-Int)))
(declare-const var1722 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var1722 null-Int)))
(define-const var1427 Bool (jsonb/1968396404 var3926)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3901 Int (features/-2048851183 var2714)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var1294 Int (objectFeatures/1968396404 var3926)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var2136 Int (bv2nat (bvor ((_ int2bv 64) var3901) ((_ int2bv 64) var1294)))) ; Statement: l2 = $l1 | $l0 
(define-const var70 var2632 (mw/1968396404 var3926)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var214 ClassObject (fieldClass/-2048851183 var2714)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3594 String (format/-2048851183 var2714)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var2363 Int (var/1427438936 var3926 (cast-from-ClassObject-to-var1124 var214))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var1981 var598 var598-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1981)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1981!1 var598)
(define-const var1204 var598 var598-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1204)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1204!1 var598)
(assert true)
;(assert (genGetObject/-2113871742 var2902 var3926 var2714 var1722 var1804)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var2902!1 var3367)
(declare-const var3926!1 var2441)
(declare-const var2714!1 var290)
(declare-const var1722!1 Int)
(declare-const var1804!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var70 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var70!1 var2632)
(declare-const var2094 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var70!1 58 var2363)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var70!2 var2632)
(declare-const var3021 Int)
(declare-const var2363!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var70!2 198 var1981!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var70!3 var2632)
(declare-const var2966 Int)
(declare-const var1981!2 var598)
(assert true)
;(assert (gwFieldName/844239833 var2902!1 var3926!1 var2714!1 var1722!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2902!2 var3367)
(declare-const var3926!2 var2441)
(declare-const var2714!2 var290)
(declare-const var1722!2 Int)
(define-const var3782 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var2539 Bool (= var3782 var3594)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var2539 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var70!3 25 var2363!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3) 

(declare-const var70!4 var2632)
(declare-const var1415 Int)
(declare-const var2363!2 Int)
(assert true)
;(assert (visitMethodInsn/-527702312 var70!4 182 "java/lang/String" "trim" "()Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0) 

(declare-const var70!5 var2632)
(declare-const var3416 Int)
(declare-const var2148 String)
(declare-const var314 String)
(declare-const var1806 String)
(declare-const var2234 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var70!5 58 var2363!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var70!6 var2632)
(declare-const var3021!1 Int)
(declare-const var2363!3 Int)
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var1427 1 0) 0)) ; Cond: z0 == 0 
(define-const var3391 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var3367_gwString/1014499970 var3926!2 var3391 (ite (= 1 0) true false) var2363!3)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var3926!3 var2441)
(declare-const var3391!1 Bool)
(declare-const var2234!1 Int)
(declare-const var2363!4 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var70!6 167 var1204!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var70!7 var2632)
(declare-const var2043 Int)
(declare-const var1204!2 var598)
(assert true)
;(assert (visitLabel/567040954 var70!7 var1981!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var70!8 var2632)
(declare-const var1981!3 var598)
(define-const var3690 var598 var598-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3690)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3690!1 var598)
(define-const var1396 var598 var598-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1396)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1396!1 var598)
(define-const var2215 var2802 var2802-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var398 Int (mask/-2077367092 var2215)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var462 var2802 var2802-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var2772 Int (mask/-2077367092 var462)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var106 Int (bv2nat (bvor ((_ int2bv 64) var398) ((_ int2bv 64) var2772)))) ; Statement: $l20 = $l18 | $l19 
(define-const var2593 var2802 var2802-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var1265 Int (mask/-2077367092 var2593)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2469 Int (bv2nat (bvor ((_ int2bv 64) var106) ((_ int2bv 64) var1265)))) ; Statement: $l22 = $l20 | $l21 
(define-const var38 var2802 var2802-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var3369 Int (mask/-2077367092 var38)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3948 Int (bv2nat (bvor ((_ int2bv 64) var2469) ((_ int2bv 64) var3369)))) ; Statement: $l24 = $l22 | $l23 
(define-const var3505 var2802 var2802-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var2852 Int (mask/-2077367092 var3505)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3922 Int (bv2nat (bvor ((_ int2bv 64) var3948) ((_ int2bv 64) var2852)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3170 var2802 var2802-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var3843 Int (mask/-2077367092 var3170)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1126 Int (bv2nat (bvor ((_ int2bv 64) var3843) ((_ int2bv 64) var3922)))) ; Statement: $l28 = $l27 | $l26 
(define-const var1344 Int (bv2nat (bvand ((_ int2bv 64) var2136) ((_ int2bv 64) var1126)))) ; Statement: $l29 = l2 & $l28 
(define-const var45 Int (ite (> var1344 0) 1 (ite (< var1344 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var45 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var70!8 var1396!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var70!9 var2632)
(declare-const var1396!2 var598)
(define-const var3325 var1124 (defaultValue/-2048851183 var2714!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (not (= var3325 null-var1124)))) ; Negate: Cond: $r9 != null  
(define-const var524 var2802 var2802-NotWriteDefaultValue) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue> 
(define-const var814 Int (mask/-2077367092 var524)) ; Statement: $l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(assert true)
;(assert (genIsDisabled/-1903259308 var3926!3 var814 var1204!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6) 

(declare-const var3926!4 var2441)
(declare-const var814!1 Int)
(declare-const var1204!3 var598)
(assert true) ; Non Conditional
(assert true)
;(assert (gwFieldName/844239833 var2902!2 var3926!4 var2714!2 var1722!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2902!3 var3367)
(declare-const var3926!5 var2441)
(declare-const var2714!3 var290)
(declare-const var1722!3 Int)
(define-const var3263 Int (bv2nat (bvand ((_ int2bv 64) var2136) ((_ int2bv 64) var3922)))) ; Statement: $l6 = l2 & $l26 
(define-const var3525 Int (ite (> var3263 0) 1 (ite (< var3263 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var3525 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var70!9 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var70!10 var2632)
(declare-const var1415!1 Int)
(declare-const var563 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var70!10 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var70!11 var2632)
(declare-const var1318 String)
(define-const var10 String var1839-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var70!11 182 var10 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var70!12 var2632)
(declare-const var3416!1 Int)
(declare-const var10!1 String)
(declare-const var193 String)
(declare-const var982 String)
(declare-const var2234!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var70!12 167 var1204!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var70!13 var2632)
(declare-const var2043!1 Int)
(declare-const var1204!4 var598)
(assert true)
;(assert (visitLabel/567040954 var70!13 var3690!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var70!14 var2632)
(declare-const var3690!2 var598)
(assert true)
;(assert (visitVarInsn/-915853820 var70!14 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var70!15 var2632)
(declare-const var1415!2 Int)
(declare-const var563!1 Int)
(define-const var78 String var1839-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var70!15 182 var78 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var70!16 var2632)
(declare-const var3416!2 Int)
(declare-const var78!1 String)
(declare-const var646 String)
(declare-const var2741 String)
(declare-const var2234!3 Int)
(assert true)
;(assert (visitLabel/567040954 var70!16 var1204!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var70!17 var2632)
(declare-const var1204!5 var598)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1124=([java.lang.Class], java.lang.Object), var598-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var3367_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), genIsDisabled/-1903259308=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void)}
; {var3367=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2902=r7, var2441=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3926=r0, var290=com.alibaba.fastjson2.writer.FieldWriter, var2714=r1, var1804=i5, var1722=i4, var1427=z0, var3901=$l1, var1294=$l0, var2136=l2, var2632=com.alibaba.fastjson2.internal.asm.MethodWriter, var70=r2, var214=r3, var3594=r4, var1124=java.lang.Object, var2363=i3, var598=com.alibaba.fastjson2.internal.asm.Label, var1981=$r5, var1204=$r6, var2094=89, var3021=58, var2966=198, var3782=$r8, var2539=$z1, var1415=25, var3416=182, var2148="java/lang/String", var314="trim", var1806="()Ljava/lang/String;", var2234=0, var3391=$z5, var2043=167, var3690=$r22, var1396=$r23, var2802=com.alibaba.fastjson2.JSONWriter$Feature, var2215=$r24, var398=$l18, var462=$r25, var2772=$l19, var106=$l20, var2593=$r26, var1265=$l21, var2469=$l22, var38=$r27, var3369=$l23, var3948=$l24, var3505=$r28, var2852=$l25, var3922=$l26, var3170=$r29, var3843=$l27, var1126=$l28, var1344=$l29, var45=$b30, var3325=$r9, var524=$r17, var814=$l12, var3263=$l6, var3525=$b7, var563=1, var1318="", var1839=com.alibaba.fastjson2.internal.asm.ASMUtils, var10=$r31, var193="writeString", var982="(Ljava/lang/String;)V", var78=$r32, var646="writeStringNull", var2741="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3367, r7=var2902, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2441, r0=var3926, com.alibaba.fastjson2.writer.FieldWriter=var290, r1=var2714, i5=var1804, i4=var1722, z0=var1427, $l1=var3901, $l0=var1294, l2=var2136, com.alibaba.fastjson2.internal.asm.MethodWriter=var2632, r2=var70, r3=var214, r4=var3594, java.lang.Object=var1124, i3=var2363, com.alibaba.fastjson2.internal.asm.Label=var598, $r5=var1981, $r6=var1204, 89=var2094, 58=var3021, 198=var2966, $r8=var3782, $z1=var2539, 25=var1415, 182=var3416, "java/lang/String"=var2148, "trim"=var314, "()Ljava/lang/String;"=var1806, 0=var2234, $z5=var3391, 167=var2043, $r22=var3690, $r23=var1396, com.alibaba.fastjson2.JSONWriter$Feature=var2802, $r24=var2215, $l18=var398, $r25=var462, $l19=var2772, $l20=var106, $r26=var2593, $l21=var1265, $l22=var2469, $r27=var38, $l23=var3369, $l24=var3948, $r28=var3505, $l25=var2852, $l26=var3922, $r29=var3170, $l27=var3843, $l28=var1126, $l29=var1344, $b30=var45, $r9=var3325, $r17=var524, $l12=var814, $l6=var3263, $b7=var3525, 1=var563, ""=var1318, com.alibaba.fastjson2.internal.asm.ASMUtils=var1839, $r31=var10, "writeString"=var193, "(Ljava/lang/String;)V"=var982, $r32=var78, "writeStringNull"=var646, "()V"=var2741}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue>;	$l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9