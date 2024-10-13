(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var2623 0)
(declare-sort var1616 0)
(declare-sort var2031 0)
(declare-sort var529 0)
(declare-sort var1353 0)
(declare-sort var1575 0)
(declare-sort var1380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var2623) Bool)
(declare-fun features/-2048851183 (var1616) Int)
(declare-fun objectFeatures/1968396404 (var2623) Int)
(declare-fun mw/1968396404 (var2623) var2031)
(declare-fun fieldClass/-2048851183 (var1616) ClassObject)
(declare-fun format/-2048851183 (var1616) String)
(declare-fun var/1427438936 (var2623 var529) Int)
(declare-fun cast-from-ClassObject-to-var529 (ClassObject) var529)
(declare-fun var1353-init () var1353)
(declare-fun <init>/-2069075760 (var1353) void)
(declare-fun genGetObject/-2113871742 (var667 var2623 var1616 Int Int) void)
(declare-fun visitInsn/-918620226 (var2031 Int) void)
(declare-fun visitVarInsn/-915853820 (var2031 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var2031 Int var1353) void)
(declare-fun gwFieldName/844239833 (var667 var2623 var1616 Int) void)
(declare-fun var667_gwString/1014499970 (var2623 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var2031 var1353) void)
(declare-fun mask/-2077367092 (var1575) Int)
(declare-fun genIsEnabled/1740983204 (var2623 Int var1353 var1353) void)
(declare-fun defaultValue/-2048851183 (var1616) var529)
(declare-fun visitLdcInsn/1458008857 (var2031 String) void)
(declare-fun visitMethodInsn/-527702312 (var2031 Int String String String Bool) void)
(declare-const null-var667 var667)
(declare-const null-var2623 var2623)
(declare-const null-var1616 var1616)
(declare-const null-Int Int)
(declare-const var1575-NullAsDefaultValue var1575)
(declare-const var1575-WriteNullNumberAsZero var1575)
(declare-const var1575-WriteNullBooleanAsFalse var1575)
(declare-const var1575-WriteNullListAsEmpty var1575)
(declare-const var1575-WriteNullStringAsEmpty var1575)
(declare-const var1575-WriteNulls var1575)
(declare-const null-var529 var529)
(declare-const var1380-TYPE_JSON_WRITER String)
(declare-const var774 var667) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var774 null-var667)))
(declare-const var1239 var2623) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1239 null-var2623)))
(declare-const var3809 var1616) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3809 null-var1616)))
(declare-const var831 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var831 null-Int)))
(declare-const var830 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var830 null-Int)))
(define-const var2443 Bool (jsonb/1968396404 var1239)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var2987 Int (features/-2048851183 var3809)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var2178 Int (objectFeatures/1968396404 var1239)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var2668 Int (bv2nat (bvor ((_ int2bv 64) var2987) ((_ int2bv 64) var2178)))) ; Statement: l2 = $l1 | $l0 
(define-const var1642 var2031 (mw/1968396404 var1239)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3661 ClassObject (fieldClass/-2048851183 var3809)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2746 String (format/-2048851183 var3809)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var758 Int (var/1427438936 var1239 (cast-from-ClassObject-to-var529 var3661))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var3925 var1353 var1353-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3925)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3925!1 var1353)
(define-const var3137 var1353 var1353-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3137)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3137!1 var1353)
(assert true)
;(assert (genGetObject/-2113871742 var774 var1239 var3809 var830 var831)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var774!1 var667)
(declare-const var1239!1 var2623)
(declare-const var3809!1 var1616)
(declare-const var830!1 Int)
(declare-const var831!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var1642 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var1642!1 var2031)
(declare-const var512 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1642!1 58 var758)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var1642!2 var2031)
(declare-const var2343 Int)
(declare-const var758!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1642!2 198 var3925!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var1642!3 var2031)
(declare-const var3639 Int)
(declare-const var3925!2 var1353)
(assert true)
;(assert (gwFieldName/844239833 var774!1 var1239!1 var3809!1 var830!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var774!2 var667)
(declare-const var1239!2 var2623)
(declare-const var3809!2 var1616)
(declare-const var830!2 Int)
(define-const var3316 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var429 Bool (= var3316 var2746)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var429 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var2443 1 0) 0)) ; Cond: z0 == 0 
(define-const var285 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var667_gwString/1014499970 var1239!2 var285 (ite (= 1 0) true false) var758!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var1239!3 var2623)
(declare-const var285!1 Bool)
(declare-const var1582 Int)
(declare-const var758!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1642!3 167 var3137!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var1642!4 var2031)
(declare-const var3877 Int)
(declare-const var3137!2 var1353)
(assert true)
;(assert (visitLabel/567040954 var1642!4 var3925!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var1642!5 var2031)
(declare-const var3925!3 var1353)
(define-const var1002 var1353 var1353-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1002)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1002!1 var1353)
(define-const var2714 var1353 var1353-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2714)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2714!1 var1353)
(define-const var1134 var1575 var1575-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var804 Int (mask/-2077367092 var1134)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var130 var1575 var1575-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var2509 Int (mask/-2077367092 var130)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3197 Int (bv2nat (bvor ((_ int2bv 64) var804) ((_ int2bv 64) var2509)))) ; Statement: $l20 = $l18 | $l19 
(define-const var2416 var1575 var1575-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var1780 Int (mask/-2077367092 var2416)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var110 Int (bv2nat (bvor ((_ int2bv 64) var3197) ((_ int2bv 64) var1780)))) ; Statement: $l22 = $l20 | $l21 
(define-const var2477 var1575 var1575-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var3864 Int (mask/-2077367092 var2477)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3138 Int (bv2nat (bvor ((_ int2bv 64) var110) ((_ int2bv 64) var3864)))) ; Statement: $l24 = $l22 | $l23 
(define-const var2253 var1575 var1575-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var2604 Int (mask/-2077367092 var2253)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3857 Int (bv2nat (bvor ((_ int2bv 64) var3138) ((_ int2bv 64) var2604)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3272 var1575 var1575-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var3647 Int (mask/-2077367092 var3272)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3229 Int (bv2nat (bvor ((_ int2bv 64) var3647) ((_ int2bv 64) var3857)))) ; Statement: $l28 = $l27 | $l26 
(define-const var714 Int (bv2nat (bvand ((_ int2bv 64) var2668) ((_ int2bv 64) var3229)))) ; Statement: $l29 = l2 & $l28 
(define-const var605 Int (ite (> var714 0) 1 (ite (< var714 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (not (= var605 0)))) ; Negate: Cond: $b30 != 0  
(define-const var2929 var1575 var1575-WriteNulls) ; Statement: $r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var530 Int (mask/-2077367092 var2929)) ; Statement: $l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var685 var1575 var1575-NullAsDefaultValue) ; Statement: $r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var3022 Int (mask/-2077367092 var685)) ; Statement: $l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var565 Int (bv2nat (bvor ((_ int2bv 64) var530) ((_ int2bv 64) var3022)))) ; Statement: $l16 = $l14 | $l13 
(define-const var2779 var1575 var1575-WriteNullStringAsEmpty) ; Statement: $r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3299 Int (mask/-2077367092 var2779)) ; Statement: $l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var836 Int (bv2nat (bvor ((_ int2bv 64) var565) ((_ int2bv 64) var3299)))) ; Statement: $l17 = $l16 | $l15 
(assert true)
;(assert (genIsEnabled/1740983204 var1239!3 var836 var2714!1 var3137!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6) 

(declare-const var1239!4 var2623)
(declare-const var836!1 Int)
(declare-const var2714!2 var1353)
(declare-const var3137!3 var1353)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var1642!5 var2714!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var1642!6 var2031)
(declare-const var2714!3 var1353)
(define-const var1412 var529 (defaultValue/-2048851183 var3809!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var1412 null-var529))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var774!2 var1239!4 var3809!2 var830!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var774!3 var667)
(declare-const var1239!5 var2623)
(declare-const var3809!3 var1616)
(declare-const var830!3 Int)
(define-const var919 Int (bv2nat (bvand ((_ int2bv 64) var2668) ((_ int2bv 64) var3857)))) ; Statement: $l6 = l2 & $l26 
(define-const var3353 Int (ite (> var919 0) 1 (ite (< var919 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var3353 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var1642!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1642!7 var2031)
(declare-const var808 Int)
(declare-const var1410 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var1642!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var1642!8 var2031)
(declare-const var1908 String)
(define-const var2270 String var1380-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1642!8 182 var2270 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var1642!9 var2031)
(declare-const var3586 Int)
(declare-const var2270!1 String)
(declare-const var3393 String)
(declare-const var2660 String)
(declare-const var1582!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1642!9 167 var3137!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var1642!10 var2031)
(declare-const var3877!1 Int)
(declare-const var3137!4 var1353)
(assert true)
;(assert (visitLabel/567040954 var1642!10 var1002!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var1642!11 var2031)
(declare-const var1002!2 var1353)
(assert true)
;(assert (visitVarInsn/-915853820 var1642!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1642!12 var2031)
(declare-const var808!1 Int)
(declare-const var1410!1 Int)
(define-const var284 String var1380-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1642!12 182 var284 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var1642!13 var2031)
(declare-const var3586!1 Int)
(declare-const var284!1 String)
(declare-const var393 String)
(declare-const var2350 String)
(declare-const var1582!2 Int)
(assert true)
;(assert (visitLabel/567040954 var1642!13 var3137!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var1642!14 var2031)
(declare-const var3137!5 var1353)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var529=([java.lang.Class], java.lang.Object), var1353-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var667_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genIsEnabled/1740983204=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var667=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var774=r7, var2623=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1239=r0, var1616=com.alibaba.fastjson2.writer.FieldWriter, var3809=r1, var831=i5, var830=i4, var2443=z0, var2987=$l1, var2178=$l0, var2668=l2, var2031=com.alibaba.fastjson2.internal.asm.MethodWriter, var1642=r2, var3661=r3, var2746=r4, var529=java.lang.Object, var758=i3, var1353=com.alibaba.fastjson2.internal.asm.Label, var3925=$r5, var3137=$r6, var512=89, var2343=58, var3639=198, var3316=$r8, var429=$z1, var285=$z5, var1582=0, var3877=167, var1002=$r22, var2714=$r23, var1575=com.alibaba.fastjson2.JSONWriter$Feature, var1134=$r24, var804=$l18, var130=$r25, var2509=$l19, var3197=$l20, var2416=$r26, var1780=$l21, var110=$l22, var2477=$r27, var3864=$l23, var3138=$l24, var2253=$r28, var2604=$l25, var3857=$l26, var3272=$r29, var3647=$l27, var3229=$l28, var714=$l29, var605=$b30, var2929=$r18, var530=$l14, var685=$r19, var3022=$l13, var565=$l16, var2779=$r20, var3299=$l15, var836=$l17, var1412=$r9, var919=$l6, var3353=$b7, var808=25, var1410=1, var1908="", var1380=com.alibaba.fastjson2.internal.asm.ASMUtils, var2270=$r31, var3586=182, var3393="writeString", var2660="(Ljava/lang/String;)V", var284=$r32, var393="writeStringNull", var2350="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var667, r7=var774, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2623, r0=var1239, com.alibaba.fastjson2.writer.FieldWriter=var1616, r1=var3809, i5=var831, i4=var830, z0=var2443, $l1=var2987, $l0=var2178, l2=var2668, com.alibaba.fastjson2.internal.asm.MethodWriter=var2031, r2=var1642, r3=var3661, r4=var2746, java.lang.Object=var529, i3=var758, com.alibaba.fastjson2.internal.asm.Label=var1353, $r5=var3925, $r6=var3137, 89=var512, 58=var2343, 198=var3639, $r8=var3316, $z1=var429, $z5=var285, 0=var1582, 167=var3877, $r22=var1002, $r23=var2714, com.alibaba.fastjson2.JSONWriter$Feature=var1575, $r24=var1134, $l18=var804, $r25=var130, $l19=var2509, $l20=var3197, $r26=var2416, $l21=var1780, $l22=var110, $r27=var2477, $l23=var3864, $l24=var3138, $r28=var2253, $l25=var2604, $l26=var3857, $r29=var3272, $l27=var3647, $l28=var3229, $l29=var714, $b30=var605, $r18=var2929, $l14=var530, $r19=var685, $l13=var3022, $l16=var565, $r20=var2779, $l15=var3299, $l17=var836, $r9=var1412, $l6=var919, $b7=var3353, 25=var808, 1=var1410, ""=var1908, com.alibaba.fastjson2.internal.asm.ASMUtils=var1380, $r31=var2270, 182=var3586, "writeString"=var3393, "(Ljava/lang/String;)V"=var2660, $r32=var284, "writeStringNull"=var393, "()V"=var2350}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l16 = $l14 | $l13;	$r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l16 | $l15;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 8