(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3238 0)
(declare-sort var3245 0)
(declare-sort var2212 0)
(declare-sort var2908 0)
(declare-sort var3961 0)
(declare-sort var3947 0)
(declare-sort var3699 0)
(declare-sort var1502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var3245) Bool)
(declare-fun features/-2048851183 (var2212) Int)
(declare-fun objectFeatures/1968396404 (var3245) Int)
(declare-fun mw/1968396404 (var3245) var2908)
(declare-fun fieldClass/-2048851183 (var2212) ClassObject)
(declare-fun format/-2048851183 (var2212) String)
(declare-fun var/1427438936 (var3245 var3961) Int)
(declare-fun cast-from-ClassObject-to-var3961 (ClassObject) var3961)
(declare-fun var3947-init () var3947)
(declare-fun <init>/-2069075760 (var3947) void)
(declare-fun genGetObject/-2113871742 (var3238 var3245 var2212 Int Int) void)
(declare-fun visitInsn/-918620226 (var2908 Int) void)
(declare-fun visitVarInsn/-915853820 (var2908 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var2908 Int var3947) void)
(declare-fun gwFieldName/844239833 (var3238 var3245 var2212 Int) void)
(declare-fun var3238_gwString/1014499970 (var3245 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var2908 var3947) void)
(declare-fun mask/-2077367092 (var3699) Int)
(declare-fun genIsEnabled/1740983204 (var3245 Int var3947 var3947) void)
(declare-fun defaultValue/-2048851183 (var2212) var3961)
(declare-fun visitLdcInsn/1458008857 (var2908 String) void)
(declare-fun visitMethodInsn/-527702312 (var2908 Int String String String Bool) void)
(declare-const null-var3238 var3238)
(declare-const null-var3245 var3245)
(declare-const null-var2212 var2212)
(declare-const null-Int Int)
(declare-const var3699-NullAsDefaultValue var3699)
(declare-const var3699-WriteNullNumberAsZero var3699)
(declare-const var3699-WriteNullBooleanAsFalse var3699)
(declare-const var3699-WriteNullListAsEmpty var3699)
(declare-const var3699-WriteNullStringAsEmpty var3699)
(declare-const var3699-WriteNulls var3699)
(declare-const null-var3961 var3961)
(declare-const var1502-TYPE_JSON_WRITER String)
(declare-const var574 var3238) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var574 null-var3238)))
(declare-const var1100 var3245) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1100 null-var3245)))
(declare-const var3476 var2212) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3476 null-var2212)))
(declare-const var1612 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var1612 null-Int)))
(declare-const var3504 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var3504 null-Int)))
(define-const var1120 Bool (jsonb/1968396404 var1100)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3715 Int (features/-2048851183 var3476)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var1004 Int (objectFeatures/1968396404 var1100)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var752 Int (bv2nat (bvor ((_ int2bv 64) var3715) ((_ int2bv 64) var1004)))) ; Statement: l2 = $l1 | $l0 
(define-const var549 var2908 (mw/1968396404 var1100)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3993 ClassObject (fieldClass/-2048851183 var3476)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var1493 String (format/-2048851183 var3476)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var1533 Int (var/1427438936 var1100 (cast-from-ClassObject-to-var3961 var3993))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var935 var3947 var3947-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var935)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var935!1 var3947)
(define-const var3449 var3947 var3947-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3449)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3449!1 var3947)
(assert true)
;(assert (genGetObject/-2113871742 var574 var1100 var3476 var3504 var1612)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var574!1 var3238)
(declare-const var1100!1 var3245)
(declare-const var3476!1 var2212)
(declare-const var3504!1 Int)
(declare-const var1612!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var549 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var549!1 var2908)
(declare-const var1866 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var549!1 58 var1533)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var549!2 var2908)
(declare-const var3561 Int)
(declare-const var1533!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var549!2 198 var935!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var549!3 var2908)
(declare-const var352 Int)
(declare-const var935!2 var3947)
(assert true)
;(assert (gwFieldName/844239833 var574!1 var1100!1 var3476!1 var3504!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var574!2 var3238)
(declare-const var1100!2 var3245)
(declare-const var3476!2 var2212)
(declare-const var3504!2 Int)
(define-const var721 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var2121 Bool (= var721 var1493)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var2121 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var1120 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var353 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var3766 Bool (= var353 var1493)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (not (= (ite var3766 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3108 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)] 
(assert true) ; Non Conditional
;(assert (var3238_gwString/1014499970 var1100!2 var3108 (ite (= 1 0) true false) var1533!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var1100!3 var3245)
(declare-const var3108!1 Bool)
(declare-const var461 Int)
(declare-const var1533!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var549!3 167 var3449!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var549!4 var2908)
(declare-const var1500 Int)
(declare-const var3449!2 var3947)
(assert true)
;(assert (visitLabel/567040954 var549!4 var935!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var549!5 var2908)
(declare-const var935!3 var3947)
(define-const var421 var3947 var3947-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var421)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var421!1 var3947)
(define-const var2634 var3947 var3947-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2634)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2634!1 var3947)
(define-const var3114 var3699 var3699-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var943 Int (mask/-2077367092 var3114)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2316 var3699 var3699-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var953 Int (mask/-2077367092 var2316)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1804 Int (bv2nat (bvor ((_ int2bv 64) var943) ((_ int2bv 64) var953)))) ; Statement: $l20 = $l18 | $l19 
(define-const var3564 var3699 var3699-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var1112 Int (mask/-2077367092 var3564)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2140 Int (bv2nat (bvor ((_ int2bv 64) var1804) ((_ int2bv 64) var1112)))) ; Statement: $l22 = $l20 | $l21 
(define-const var3288 var3699 var3699-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var310 Int (mask/-2077367092 var3288)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1028 Int (bv2nat (bvor ((_ int2bv 64) var2140) ((_ int2bv 64) var310)))) ; Statement: $l24 = $l22 | $l23 
(define-const var1183 var3699 var3699-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var1873 Int (mask/-2077367092 var1183)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3772 Int (bv2nat (bvor ((_ int2bv 64) var1028) ((_ int2bv 64) var1873)))) ; Statement: $l26 = $l24 | $l25 
(define-const var512 var3699 var3699-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var569 Int (mask/-2077367092 var512)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1743 Int (bv2nat (bvor ((_ int2bv 64) var569) ((_ int2bv 64) var3772)))) ; Statement: $l28 = $l27 | $l26 
(define-const var2901 Int (bv2nat (bvand ((_ int2bv 64) var752) ((_ int2bv 64) var1743)))) ; Statement: $l29 = l2 & $l28 
(define-const var959 Int (ite (> var2901 0) 1 (ite (< var2901 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (not (= var959 0)))) ; Negate: Cond: $b30 != 0  
(define-const var1758 var3699 var3699-WriteNulls) ; Statement: $r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var329 Int (mask/-2077367092 var1758)) ; Statement: $l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1175 var3699 var3699-NullAsDefaultValue) ; Statement: $r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var2034 Int (mask/-2077367092 var1175)) ; Statement: $l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var955 Int (bv2nat (bvor ((_ int2bv 64) var329) ((_ int2bv 64) var2034)))) ; Statement: $l16 = $l14 | $l13 
(define-const var3397 var3699 var3699-WriteNullStringAsEmpty) ; Statement: $r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var593 Int (mask/-2077367092 var3397)) ; Statement: $l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var455 Int (bv2nat (bvor ((_ int2bv 64) var955) ((_ int2bv 64) var593)))) ; Statement: $l17 = $l16 | $l15 
(assert true)
;(assert (genIsEnabled/1740983204 var1100!3 var455 var2634!1 var3449!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6) 

(declare-const var1100!4 var3245)
(declare-const var455!1 Int)
(declare-const var2634!2 var3947)
(declare-const var3449!3 var3947)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var549!5 var2634!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var549!6 var2908)
(declare-const var2634!3 var3947)
(define-const var3902 var3961 (defaultValue/-2048851183 var3476!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var3902 null-var3961))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var574!2 var1100!4 var3476!2 var3504!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var574!3 var3238)
(declare-const var1100!5 var3245)
(declare-const var3476!3 var2212)
(declare-const var3504!3 Int)
(define-const var3062 Int (bv2nat (bvand ((_ int2bv 64) var752) ((_ int2bv 64) var3772)))) ; Statement: $l6 = l2 & $l26 
(define-const var2116 Int (ite (> var3062 0) 1 (ite (< var3062 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var2116 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var549!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var549!7 var2908)
(declare-const var6 Int)
(declare-const var2562 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var549!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var549!8 var2908)
(declare-const var3576 String)
(define-const var3761 String var1502-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var549!8 182 var3761 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var549!9 var2908)
(declare-const var995 Int)
(declare-const var3761!1 String)
(declare-const var1527 String)
(declare-const var917 String)
(declare-const var461!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var549!9 167 var3449!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var549!10 var2908)
(declare-const var1500!1 Int)
(declare-const var3449!4 var3947)
(assert true)
;(assert (visitLabel/567040954 var549!10 var421!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var549!11 var2908)
(declare-const var421!2 var3947)
(assert true)
;(assert (visitVarInsn/-915853820 var549!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var549!12 var2908)
(declare-const var6!1 Int)
(declare-const var2562!1 Int)
(define-const var831 String var1502-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var549!12 182 var831 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var549!13 var2908)
(declare-const var995!1 Int)
(declare-const var831!1 String)
(declare-const var1177 String)
(declare-const var1003 String)
(declare-const var461!2 Int)
(assert true)
;(assert (visitLabel/567040954 var549!13 var3449!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var549!14 var2908)
(declare-const var3449!5 var3947)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3961=([java.lang.Class], java.lang.Object), var3947-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var3238_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genIsEnabled/1740983204=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3238=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var574=r7, var3245=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1100=r0, var2212=com.alibaba.fastjson2.writer.FieldWriter, var3476=r1, var1612=i5, var3504=i4, var1120=z0, var3715=$l1, var1004=$l0, var752=l2, var2908=com.alibaba.fastjson2.internal.asm.MethodWriter, var549=r2, var3993=r3, var1493=r4, var3961=java.lang.Object, var1533=i3, var3947=com.alibaba.fastjson2.internal.asm.Label, var935=$r5, var3449=$r6, var1866=89, var3561=58, var352=198, var721=$r8, var2121=$z1, var353=$r21, var3766=$z4, var3108=$z5, var461=0, var1500=167, var421=$r22, var2634=$r23, var3699=com.alibaba.fastjson2.JSONWriter$Feature, var3114=$r24, var943=$l18, var2316=$r25, var953=$l19, var1804=$l20, var3564=$r26, var1112=$l21, var2140=$l22, var3288=$r27, var310=$l23, var1028=$l24, var1183=$r28, var1873=$l25, var3772=$l26, var512=$r29, var569=$l27, var1743=$l28, var2901=$l29, var959=$b30, var1758=$r18, var329=$l14, var1175=$r19, var2034=$l13, var955=$l16, var3397=$r20, var593=$l15, var455=$l17, var3902=$r9, var3062=$l6, var2116=$b7, var6=25, var2562=1, var3576="", var1502=com.alibaba.fastjson2.internal.asm.ASMUtils, var3761=$r31, var995=182, var1527="writeString", var917="(Ljava/lang/String;)V", var831=$r32, var1177="writeStringNull", var1003="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3238, r7=var574, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3245, r0=var1100, com.alibaba.fastjson2.writer.FieldWriter=var2212, r1=var3476, i5=var1612, i4=var3504, z0=var1120, $l1=var3715, $l0=var1004, l2=var752, com.alibaba.fastjson2.internal.asm.MethodWriter=var2908, r2=var549, r3=var3993, r4=var1493, java.lang.Object=var3961, i3=var1533, com.alibaba.fastjson2.internal.asm.Label=var3947, $r5=var935, $r6=var3449, 89=var1866, 58=var3561, 198=var352, $r8=var721, $z1=var2121, $r21=var353, $z4=var3766, $z5=var3108, 0=var461, 167=var1500, $r22=var421, $r23=var2634, com.alibaba.fastjson2.JSONWriter$Feature=var3699, $r24=var3114, $l18=var943, $r25=var2316, $l19=var953, $l20=var1804, $r26=var3564, $l21=var1112, $l22=var2140, $r27=var3288, $l23=var310, $l24=var1028, $r28=var1183, $l25=var1873, $l26=var3772, $r29=var512, $l27=var569, $l28=var1743, $l29=var2901, $b30=var959, $r18=var1758, $l14=var329, $r19=var1175, $l13=var2034, $l16=var955, $r20=var3397, $l15=var593, $l17=var455, $r9=var3902, $l6=var3062, $b7=var2116, 25=var6, 1=var2562, ""=var3576, com.alibaba.fastjson2.internal.asm.ASMUtils=var1502, $r31=var3761, 182=var995, "writeString"=var1527, "(Ljava/lang/String;)V"=var917, $r32=var831, "writeStringNull"=var1177, "()V"=var1003}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 1;	goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)];	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l16 = $l14 | $l13;	$r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l16 | $l15;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9