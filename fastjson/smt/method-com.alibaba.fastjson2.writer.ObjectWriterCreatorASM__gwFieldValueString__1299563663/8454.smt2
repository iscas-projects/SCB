(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var938 0)
(declare-sort var1758 0)
(declare-sort var2329 0)
(declare-sort var3002 0)
(declare-sort var3868 0)
(declare-sort var2925 0)
(declare-sort var279 0)
(declare-sort var2276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var1758) Bool)
(declare-fun features/-2048851183 (var2329) Int)
(declare-fun objectFeatures/1968396404 (var1758) Int)
(declare-fun mw/1968396404 (var1758) var3002)
(declare-fun fieldClass/-2048851183 (var2329) ClassObject)
(declare-fun format/-2048851183 (var2329) String)
(declare-fun var/1427438936 (var1758 var3868) Int)
(declare-fun cast-from-ClassObject-to-var3868 (ClassObject) var3868)
(declare-fun var2925-init () var2925)
(declare-fun <init>/-2069075760 (var2925) void)
(declare-fun genGetObject/-2113871742 (var938 var1758 var2329 Int Int) void)
(declare-fun visitInsn/-918620226 (var3002 Int) void)
(declare-fun visitVarInsn/-915853820 (var3002 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var3002 Int var2925) void)
(declare-fun gwFieldName/844239833 (var938 var1758 var2329 Int) void)
(declare-fun var938_gwString/1014499970 (var1758 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var3002 var2925) void)
(declare-fun mask/-2077367092 (var279) Int)
(declare-fun genIsEnabled/1740983204 (var1758 Int var2925 var2925) void)
(declare-fun defaultValue/-2048851183 (var2329) var3868)
(declare-fun genIsDisabled/-1903259308 (var1758 Int var2925) void)
(declare-fun visitLdcInsn/1458008857 (var3002 String) void)
(declare-fun visitMethodInsn/-527702312 (var3002 Int String String String Bool) void)
(declare-const null-var938 var938)
(declare-const null-var1758 var1758)
(declare-const null-var2329 var2329)
(declare-const null-Int Int)
(declare-const var279-NullAsDefaultValue var279)
(declare-const var279-WriteNullNumberAsZero var279)
(declare-const var279-WriteNullBooleanAsFalse var279)
(declare-const var279-WriteNullListAsEmpty var279)
(declare-const var279-WriteNullStringAsEmpty var279)
(declare-const var279-WriteNulls var279)
(declare-const null-var3868 var3868)
(declare-const var279-NotWriteDefaultValue var279)
(declare-const var2276-TYPE_JSON_WRITER String)
(declare-const var2874 var938) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2874 null-var938)))
(declare-const var667 var1758) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var667 null-var1758)))
(declare-const var2201 var2329) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2201 null-var2329)))
(declare-const var3193 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3193 null-Int)))
(declare-const var1768 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var1768 null-Int)))
(define-const var3503 Bool (jsonb/1968396404 var667)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3096 Int (features/-2048851183 var2201)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var3461 Int (objectFeatures/1968396404 var667)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var3273 Int (bv2nat (bvor ((_ int2bv 64) var3096) ((_ int2bv 64) var3461)))) ; Statement: l2 = $l1 | $l0 
(define-const var2871 var3002 (mw/1968396404 var667)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1064 ClassObject (fieldClass/-2048851183 var2201)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2225 String (format/-2048851183 var2201)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var296 Int (var/1427438936 var667 (cast-from-ClassObject-to-var3868 var1064))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var1891 var2925 var2925-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1891)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1891!1 var2925)
(define-const var375 var2925 var2925-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var375)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var375!1 var2925)
(assert true)
;(assert (genGetObject/-2113871742 var2874 var667 var2201 var1768 var3193)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var2874!1 var938)
(declare-const var667!1 var1758)
(declare-const var2201!1 var2329)
(declare-const var1768!1 Int)
(declare-const var3193!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2871 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var2871!1 var3002)
(declare-const var1182 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2871!1 58 var296)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var2871!2 var3002)
(declare-const var428 Int)
(declare-const var296!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2871!2 198 var1891!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var2871!3 var3002)
(declare-const var2452 Int)
(declare-const var1891!2 var2925)
(assert true)
;(assert (gwFieldName/844239833 var2874!1 var667!1 var2201!1 var1768!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2874!2 var938)
(declare-const var667!2 var1758)
(declare-const var2201!2 var2329)
(declare-const var1768!2 Int)
(define-const var3748 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var3856 Bool (= var3748 var2225)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3856 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var3503 1 0) 0)) ; Cond: z0 == 0 
(define-const var2300 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var938_gwString/1014499970 var667!2 var2300 (ite (= 1 0) true false) var296!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var667!3 var1758)
(declare-const var2300!1 Bool)
(declare-const var3900 Int)
(declare-const var296!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2871!3 167 var375!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2871!4 var3002)
(declare-const var310 Int)
(declare-const var375!2 var2925)
(assert true)
;(assert (visitLabel/567040954 var2871!4 var1891!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var2871!5 var3002)
(declare-const var1891!3 var2925)
(define-const var3400 var2925 var2925-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3400)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3400!1 var2925)
(define-const var2359 var2925 var2925-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2359)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2359!1 var2925)
(define-const var1164 var279 var279-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1857 Int (mask/-2077367092 var1164)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3347 var279 var279-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var809 Int (mask/-2077367092 var3347)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var291 Int (bv2nat (bvor ((_ int2bv 64) var1857) ((_ int2bv 64) var809)))) ; Statement: $l20 = $l18 | $l19 
(define-const var1038 var279 var279-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var3436 Int (mask/-2077367092 var1038)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var906 Int (bv2nat (bvor ((_ int2bv 64) var291) ((_ int2bv 64) var3436)))) ; Statement: $l22 = $l20 | $l21 
(define-const var3875 var279 var279-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var1126 Int (mask/-2077367092 var3875)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3447 Int (bv2nat (bvor ((_ int2bv 64) var906) ((_ int2bv 64) var1126)))) ; Statement: $l24 = $l22 | $l23 
(define-const var765 var279 var279-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3675 Int (mask/-2077367092 var765)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3974 Int (bv2nat (bvor ((_ int2bv 64) var3447) ((_ int2bv 64) var3675)))) ; Statement: $l26 = $l24 | $l25 
(define-const var2440 var279 var279-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var2913 Int (mask/-2077367092 var2440)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1456 Int (bv2nat (bvor ((_ int2bv 64) var2913) ((_ int2bv 64) var3974)))) ; Statement: $l28 = $l27 | $l26 
(define-const var818 Int (bv2nat (bvand ((_ int2bv 64) var3273) ((_ int2bv 64) var1456)))) ; Statement: $l29 = l2 & $l28 
(define-const var1042 Int (ite (> var818 0) 1 (ite (< var818 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (not (= var1042 0)))) ; Negate: Cond: $b30 != 0  
(define-const var1026 var279 var279-WriteNulls) ; Statement: $r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var1732 Int (mask/-2077367092 var1026)) ; Statement: $l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2031 var279 var279-NullAsDefaultValue) ; Statement: $r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1730 Int (mask/-2077367092 var2031)) ; Statement: $l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var301 Int (bv2nat (bvor ((_ int2bv 64) var1732) ((_ int2bv 64) var1730)))) ; Statement: $l16 = $l14 | $l13 
(define-const var545 var279 var279-WriteNullStringAsEmpty) ; Statement: $r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var1669 Int (mask/-2077367092 var545)) ; Statement: $l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3269 Int (bv2nat (bvor ((_ int2bv 64) var301) ((_ int2bv 64) var1669)))) ; Statement: $l17 = $l16 | $l15 
(assert true)
;(assert (genIsEnabled/1740983204 var667!3 var3269 var2359!1 var375!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6) 

(declare-const var667!4 var1758)
(declare-const var3269!1 Int)
(declare-const var2359!2 var2925)
(declare-const var375!3 var2925)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var2871!5 var2359!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var2871!6 var3002)
(declare-const var2359!3 var2925)
(define-const var805 var3868 (defaultValue/-2048851183 var2201!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (not (= var805 null-var3868)))) ; Negate: Cond: $r9 != null  
(define-const var469 var279 var279-NotWriteDefaultValue) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue> 
(define-const var1686 Int (mask/-2077367092 var469)) ; Statement: $l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(assert true)
;(assert (genIsDisabled/-1903259308 var667!4 var1686 var375!3)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6) 

(declare-const var667!5 var1758)
(declare-const var1686!1 Int)
(declare-const var375!4 var2925)
(assert true) ; Non Conditional
(assert true)
;(assert (gwFieldName/844239833 var2874!2 var667!5 var2201!2 var1768!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2874!3 var938)
(declare-const var667!6 var1758)
(declare-const var2201!3 var2329)
(declare-const var1768!3 Int)
(define-const var579 Int (bv2nat (bvand ((_ int2bv 64) var3273) ((_ int2bv 64) var3974)))) ; Statement: $l6 = l2 & $l26 
(define-const var1482 Int (ite (> var579 0) 1 (ite (< var579 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var1482 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var2871!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2871!7 var3002)
(declare-const var759 Int)
(declare-const var2065 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var2871!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var2871!8 var3002)
(declare-const var1563 String)
(define-const var1529 String var2276-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2871!8 182 var1529 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var2871!9 var3002)
(declare-const var2732 Int)
(declare-const var1529!1 String)
(declare-const var3082 String)
(declare-const var1811 String)
(declare-const var3900!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2871!9 167 var375!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2871!10 var3002)
(declare-const var310!1 Int)
(declare-const var375!5 var2925)
(assert true)
;(assert (visitLabel/567040954 var2871!10 var3400!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var2871!11 var3002)
(declare-const var3400!2 var2925)
(assert true)
;(assert (visitVarInsn/-915853820 var2871!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2871!12 var3002)
(declare-const var759!1 Int)
(declare-const var2065!1 Int)
(define-const var1055 String var2276-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2871!12 182 var1055 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var2871!13 var3002)
(declare-const var2732!1 Int)
(declare-const var1055!1 String)
(declare-const var1984 String)
(declare-const var1271 String)
(declare-const var3900!2 Int)
(assert true)
;(assert (visitLabel/567040954 var2871!13 var375!5)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var2871!14 var3002)
(declare-const var375!6 var2925)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3868=([java.lang.Class], java.lang.Object), var2925-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var938_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genIsEnabled/1740983204=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), genIsDisabled/-1903259308=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var938=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2874=r7, var1758=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var667=r0, var2329=com.alibaba.fastjson2.writer.FieldWriter, var2201=r1, var3193=i5, var1768=i4, var3503=z0, var3096=$l1, var3461=$l0, var3273=l2, var3002=com.alibaba.fastjson2.internal.asm.MethodWriter, var2871=r2, var1064=r3, var2225=r4, var3868=java.lang.Object, var296=i3, var2925=com.alibaba.fastjson2.internal.asm.Label, var1891=$r5, var375=$r6, var1182=89, var428=58, var2452=198, var3748=$r8, var3856=$z1, var2300=$z5, var3900=0, var310=167, var3400=$r22, var2359=$r23, var279=com.alibaba.fastjson2.JSONWriter$Feature, var1164=$r24, var1857=$l18, var3347=$r25, var809=$l19, var291=$l20, var1038=$r26, var3436=$l21, var906=$l22, var3875=$r27, var1126=$l23, var3447=$l24, var765=$r28, var3675=$l25, var3974=$l26, var2440=$r29, var2913=$l27, var1456=$l28, var818=$l29, var1042=$b30, var1026=$r18, var1732=$l14, var2031=$r19, var1730=$l13, var301=$l16, var545=$r20, var1669=$l15, var3269=$l17, var805=$r9, var469=$r17, var1686=$l12, var579=$l6, var1482=$b7, var759=25, var2065=1, var1563="", var2276=com.alibaba.fastjson2.internal.asm.ASMUtils, var1529=$r31, var2732=182, var3082="writeString", var1811="(Ljava/lang/String;)V", var1055=$r32, var1984="writeStringNull", var1271="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var938, r7=var2874, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1758, r0=var667, com.alibaba.fastjson2.writer.FieldWriter=var2329, r1=var2201, i5=var3193, i4=var1768, z0=var3503, $l1=var3096, $l0=var3461, l2=var3273, com.alibaba.fastjson2.internal.asm.MethodWriter=var3002, r2=var2871, r3=var1064, r4=var2225, java.lang.Object=var3868, i3=var296, com.alibaba.fastjson2.internal.asm.Label=var2925, $r5=var1891, $r6=var375, 89=var1182, 58=var428, 198=var2452, $r8=var3748, $z1=var3856, $z5=var2300, 0=var3900, 167=var310, $r22=var3400, $r23=var2359, com.alibaba.fastjson2.JSONWriter$Feature=var279, $r24=var1164, $l18=var1857, $r25=var3347, $l19=var809, $l20=var291, $r26=var1038, $l21=var3436, $l22=var906, $r27=var3875, $l23=var1126, $l24=var3447, $r28=var765, $l25=var3675, $l26=var3974, $r29=var2440, $l27=var2913, $l28=var1456, $l29=var818, $b30=var1042, $r18=var1026, $l14=var1732, $r19=var2031, $l13=var1730, $l16=var301, $r20=var545, $l15=var1669, $l17=var3269, $r9=var805, $r17=var469, $l12=var1686, $l6=var579, $b7=var1482, 25=var759, 1=var2065, ""=var1563, com.alibaba.fastjson2.internal.asm.ASMUtils=var2276, $r31=var1529, 182=var2732, "writeString"=var3082, "(Ljava/lang/String;)V"=var1811, $r32=var1055, "writeStringNull"=var1984, "()V"=var1271}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l16 = $l14 | $l13;	$r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l16 | $l15;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue>;	$l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9