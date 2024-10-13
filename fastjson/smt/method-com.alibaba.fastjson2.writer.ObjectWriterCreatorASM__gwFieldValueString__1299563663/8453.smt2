(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2553 0)
(declare-sort var1420 0)
(declare-sort var111 0)
(declare-sort var236 0)
(declare-sort var1006 0)
(declare-sort var496 0)
(declare-sort var3368 0)
(declare-sort var458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var1420) Bool)
(declare-fun features/-2048851183 (var111) Int)
(declare-fun objectFeatures/1968396404 (var1420) Int)
(declare-fun mw/1968396404 (var1420) var236)
(declare-fun fieldClass/-2048851183 (var111) ClassObject)
(declare-fun format/-2048851183 (var111) String)
(declare-fun var/1427438936 (var1420 var1006) Int)
(declare-fun cast-from-ClassObject-to-var1006 (ClassObject) var1006)
(declare-fun var496-init () var496)
(declare-fun <init>/-2069075760 (var496) void)
(declare-fun genGetObject/-2113871742 (var2553 var1420 var111 Int Int) void)
(declare-fun visitInsn/-918620226 (var236 Int) void)
(declare-fun visitVarInsn/-915853820 (var236 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var236 Int var496) void)
(declare-fun gwFieldName/844239833 (var2553 var1420 var111 Int) void)
(declare-fun var2553_gwString/1014499970 (var1420 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var236 var496) void)
(declare-fun mask/-2077367092 (var3368) Int)
(declare-fun defaultValue/-2048851183 (var111) var1006)
(declare-fun genIsDisabled/-1903259308 (var1420 Int var496) void)
(declare-fun visitLdcInsn/1458008857 (var236 String) void)
(declare-fun visitMethodInsn/-527702312 (var236 Int String String String Bool) void)
(declare-const null-var2553 var2553)
(declare-const null-var1420 var1420)
(declare-const null-var111 var111)
(declare-const null-Int Int)
(declare-const var3368-NullAsDefaultValue var3368)
(declare-const var3368-WriteNullNumberAsZero var3368)
(declare-const var3368-WriteNullBooleanAsFalse var3368)
(declare-const var3368-WriteNullListAsEmpty var3368)
(declare-const var3368-WriteNullStringAsEmpty var3368)
(declare-const var3368-WriteNulls var3368)
(declare-const null-var1006 var1006)
(declare-const var3368-NotWriteDefaultValue var3368)
(declare-const var458-TYPE_JSON_WRITER String)
(declare-const var395 var2553) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var395 null-var2553)))
(declare-const var3460 var1420) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3460 null-var1420)))
(declare-const var1528 var111) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1528 null-var111)))
(declare-const var2222 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var2222 null-Int)))
(declare-const var3628 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var3628 null-Int)))
(define-const var1848 Bool (jsonb/1968396404 var3460)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var80 Int (features/-2048851183 var1528)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var1478 Int (objectFeatures/1968396404 var3460)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var2935 Int (bv2nat (bvor ((_ int2bv 64) var80) ((_ int2bv 64) var1478)))) ; Statement: l2 = $l1 | $l0 
(define-const var3130 var236 (mw/1968396404 var3460)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3298 ClassObject (fieldClass/-2048851183 var1528)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2674 String (format/-2048851183 var1528)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var1890 Int (var/1427438936 var3460 (cast-from-ClassObject-to-var1006 var3298))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var16 var496 var496-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var16)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var16!1 var496)
(define-const var3257 var496 var496-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3257)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3257!1 var496)
(assert true)
;(assert (genGetObject/-2113871742 var395 var3460 var1528 var3628 var2222)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var395!1 var2553)
(declare-const var3460!1 var1420)
(declare-const var1528!1 var111)
(declare-const var3628!1 Int)
(declare-const var2222!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var3130 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var3130!1 var236)
(declare-const var70 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3130!1 58 var1890)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var3130!2 var236)
(declare-const var2687 Int)
(declare-const var1890!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3130!2 198 var16!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var3130!3 var236)
(declare-const var1786 Int)
(declare-const var16!2 var496)
(assert true)
;(assert (gwFieldName/844239833 var395!1 var3460!1 var1528!1 var3628!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var395!2 var2553)
(declare-const var3460!2 var1420)
(declare-const var1528!2 var111)
(declare-const var3628!2 Int)
(define-const var3272 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var3533 Bool (= var3272 var2674)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var3533 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var1848 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2243 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var1553 Bool (= var2243 var2674)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (= (ite var1553 1 0) 0)) ; Cond: $z4 == 0 
(define-const var3575 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var2553_gwString/1014499970 var3460!2 var3575 (ite (= 1 0) true false) var1890!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var3460!3 var1420)
(declare-const var3575!1 Bool)
(declare-const var2600 Int)
(declare-const var1890!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3130!3 167 var3257!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var3130!4 var236)
(declare-const var841 Int)
(declare-const var3257!2 var496)
(assert true)
;(assert (visitLabel/567040954 var3130!4 var16!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var3130!5 var236)
(declare-const var16!3 var496)
(define-const var397 var496 var496-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var397)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var397!1 var496)
(define-const var859 var496 var496-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var859)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var859!1 var496)
(define-const var3401 var3368 var3368-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var3226 Int (mask/-2077367092 var3401)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3608 var3368 var3368-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var3473 Int (mask/-2077367092 var3608)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1527 Int (bv2nat (bvor ((_ int2bv 64) var3226) ((_ int2bv 64) var3473)))) ; Statement: $l20 = $l18 | $l19 
(define-const var2184 var3368 var3368-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var537 Int (mask/-2077367092 var2184)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var976 Int (bv2nat (bvor ((_ int2bv 64) var1527) ((_ int2bv 64) var537)))) ; Statement: $l22 = $l20 | $l21 
(define-const var2888 var3368 var3368-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var2483 Int (mask/-2077367092 var2888)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var429 Int (bv2nat (bvor ((_ int2bv 64) var976) ((_ int2bv 64) var2483)))) ; Statement: $l24 = $l22 | $l23 
(define-const var380 var3368 var3368-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var522 Int (mask/-2077367092 var380)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1888 Int (bv2nat (bvor ((_ int2bv 64) var429) ((_ int2bv 64) var522)))) ; Statement: $l26 = $l24 | $l25 
(define-const var499 var3368 var3368-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var1277 Int (mask/-2077367092 var499)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var648 Int (bv2nat (bvor ((_ int2bv 64) var1277) ((_ int2bv 64) var1888)))) ; Statement: $l28 = $l27 | $l26 
(define-const var3128 Int (bv2nat (bvand ((_ int2bv 64) var2935) ((_ int2bv 64) var648)))) ; Statement: $l29 = l2 & $l28 
(define-const var2131 Int (ite (> var3128 0) 1 (ite (< var3128 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var2131 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var3130!5 var859!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var3130!6 var236)
(declare-const var859!2 var496)
(define-const var2690 var1006 (defaultValue/-2048851183 var1528!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (not (= var2690 null-var1006)))) ; Negate: Cond: $r9 != null  
(define-const var3337 var3368 var3368-NotWriteDefaultValue) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue> 
(define-const var2665 Int (mask/-2077367092 var3337)) ; Statement: $l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(assert true)
;(assert (genIsDisabled/-1903259308 var3460!3 var2665 var3257!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6) 

(declare-const var3460!4 var1420)
(declare-const var2665!1 Int)
(declare-const var3257!3 var496)
(assert true) ; Non Conditional
(assert true)
;(assert (gwFieldName/844239833 var395!2 var3460!4 var1528!2 var3628!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var395!3 var2553)
(declare-const var3460!5 var1420)
(declare-const var1528!3 var111)
(declare-const var3628!3 Int)
(define-const var3623 Int (bv2nat (bvand ((_ int2bv 64) var2935) ((_ int2bv 64) var1888)))) ; Statement: $l6 = l2 & $l26 
(define-const var1952 Int (ite (> var3623 0) 1 (ite (< var3623 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var1952 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var3130!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3130!7 var236)
(declare-const var3548 Int)
(declare-const var2743 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var3130!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var3130!8 var236)
(declare-const var3852 String)
(define-const var1288 String var458-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3130!8 182 var1288 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var3130!9 var236)
(declare-const var938 Int)
(declare-const var1288!1 String)
(declare-const var2900 String)
(declare-const var1626 String)
(declare-const var2600!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3130!9 167 var3257!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var3130!10 var236)
(declare-const var841!1 Int)
(declare-const var3257!4 var496)
(assert true)
;(assert (visitLabel/567040954 var3130!10 var397!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var3130!11 var236)
(declare-const var397!2 var496)
(assert true)
;(assert (visitVarInsn/-915853820 var3130!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3130!12 var236)
(declare-const var3548!1 Int)
(declare-const var2743!1 Int)
(define-const var3885 String var458-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3130!12 182 var3885 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var3130!13 var236)
(declare-const var938!1 Int)
(declare-const var3885!1 String)
(declare-const var985 String)
(declare-const var771 String)
(declare-const var2600!2 Int)
(assert true)
;(assert (visitLabel/567040954 var3130!13 var3257!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var3130!14 var236)
(declare-const var3257!5 var496)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1006=([java.lang.Class], java.lang.Object), var496-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var2553_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), genIsDisabled/-1903259308=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2553=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var395=r7, var1420=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3460=r0, var111=com.alibaba.fastjson2.writer.FieldWriter, var1528=r1, var2222=i5, var3628=i4, var1848=z0, var80=$l1, var1478=$l0, var2935=l2, var236=com.alibaba.fastjson2.internal.asm.MethodWriter, var3130=r2, var3298=r3, var2674=r4, var1006=java.lang.Object, var1890=i3, var496=com.alibaba.fastjson2.internal.asm.Label, var16=$r5, var3257=$r6, var70=89, var2687=58, var1786=198, var3272=$r8, var3533=$z1, var2243=$r21, var1553=$z4, var3575=$z5, var2600=0, var841=167, var397=$r22, var859=$r23, var3368=com.alibaba.fastjson2.JSONWriter$Feature, var3401=$r24, var3226=$l18, var3608=$r25, var3473=$l19, var1527=$l20, var2184=$r26, var537=$l21, var976=$l22, var2888=$r27, var2483=$l23, var429=$l24, var380=$r28, var522=$l25, var1888=$l26, var499=$r29, var1277=$l27, var648=$l28, var3128=$l29, var2131=$b30, var2690=$r9, var3337=$r17, var2665=$l12, var3623=$l6, var1952=$b7, var3548=25, var2743=1, var3852="", var458=com.alibaba.fastjson2.internal.asm.ASMUtils, var1288=$r31, var938=182, var2900="writeString", var1626="(Ljava/lang/String;)V", var3885=$r32, var985="writeStringNull", var771="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2553, r7=var395, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1420, r0=var3460, com.alibaba.fastjson2.writer.FieldWriter=var111, r1=var1528, i5=var2222, i4=var3628, z0=var1848, $l1=var80, $l0=var1478, l2=var2935, com.alibaba.fastjson2.internal.asm.MethodWriter=var236, r2=var3130, r3=var3298, r4=var2674, java.lang.Object=var1006, i3=var1890, com.alibaba.fastjson2.internal.asm.Label=var496, $r5=var16, $r6=var3257, 89=var70, 58=var2687, 198=var1786, $r8=var3272, $z1=var3533, $r21=var2243, $z4=var1553, $z5=var3575, 0=var2600, 167=var841, $r22=var397, $r23=var859, com.alibaba.fastjson2.JSONWriter$Feature=var3368, $r24=var3401, $l18=var3226, $r25=var3608, $l19=var3473, $l20=var1527, $r26=var2184, $l21=var537, $l22=var976, $r27=var2888, $l23=var2483, $l24=var429, $r28=var380, $l25=var522, $l26=var1888, $r29=var499, $l27=var1277, $l28=var648, $l29=var3128, $b30=var2131, $r9=var2690, $r17=var3337, $l12=var2665, $l6=var3623, $b7=var1952, 25=var3548, 1=var2743, ""=var3852, com.alibaba.fastjson2.internal.asm.ASMUtils=var458, $r31=var1288, 182=var938, "writeString"=var2900, "(Ljava/lang/String;)V"=var1626, $r32=var3885, "writeStringNull"=var985, "()V"=var771}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue>;	$l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9