(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3320 0)
(declare-sort var2727 0)
(declare-sort var3901 0)
(declare-sort var2077 0)
(declare-sort var1014 0)
(declare-sort var3075 0)
(declare-sort var2065 0)
(declare-sort var2416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var2727) Bool)
(declare-fun features/-2048851183 (var3901) Int)
(declare-fun objectFeatures/1968396404 (var2727) Int)
(declare-fun mw/1968396404 (var2727) var2077)
(declare-fun fieldClass/-2048851183 (var3901) ClassObject)
(declare-fun format/-2048851183 (var3901) String)
(declare-fun var/1427438936 (var2727 var1014) Int)
(declare-fun cast-from-ClassObject-to-var1014 (ClassObject) var1014)
(declare-fun var3075-init () var3075)
(declare-fun <init>/-2069075760 (var3075) void)
(declare-fun genGetObject/-2113871742 (var3320 var2727 var3901 Int Int) void)
(declare-fun visitInsn/-918620226 (var2077 Int) void)
(declare-fun visitVarInsn/-915853820 (var2077 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var2077 Int var3075) void)
(declare-fun gwFieldName/844239833 (var3320 var2727 var3901 Int) void)
(declare-fun visitMethodInsn/-527702312 (var2077 Int String String String Bool) void)
(declare-fun var3320_gwString/1014499970 (var2727 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var2077 var3075) void)
(declare-fun mask/-2077367092 (var2065) Int)
(declare-fun defaultValue/-2048851183 (var3901) var1014)
(declare-fun visitLdcInsn/1458008857 (var2077 String) void)
(declare-const null-var3320 var3320)
(declare-const null-var2727 var2727)
(declare-const null-var3901 var3901)
(declare-const null-Int Int)
(declare-const var2065-NullAsDefaultValue var2065)
(declare-const var2065-WriteNullNumberAsZero var2065)
(declare-const var2065-WriteNullBooleanAsFalse var2065)
(declare-const var2065-WriteNullListAsEmpty var2065)
(declare-const var2065-WriteNullStringAsEmpty var2065)
(declare-const var2065-WriteNulls var2065)
(declare-const null-var1014 var1014)
(declare-const var2416-TYPE_JSON_WRITER String)
(declare-const var204 var3320) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var204 null-var3320)))
(declare-const var9 var2727) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var9 null-var2727)))
(declare-const var3912 var3901) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3912 null-var3901)))
(declare-const var3402 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3402 null-Int)))
(declare-const var1656 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var1656 null-Int)))
(define-const var2134 Bool (jsonb/1968396404 var9)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var2682 Int (features/-2048851183 var3912)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var3784 Int (objectFeatures/1968396404 var9)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var879 Int (bv2nat (bvor ((_ int2bv 64) var2682) ((_ int2bv 64) var3784)))) ; Statement: l2 = $l1 | $l0 
(define-const var3636 var2077 (mw/1968396404 var9)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3073 ClassObject (fieldClass/-2048851183 var3912)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3954 String (format/-2048851183 var3912)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var719 Int (var/1427438936 var9 (cast-from-ClassObject-to-var1014 var3073))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var1080 var3075 var3075-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1080)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1080!1 var3075)
(define-const var3218 var3075 var3075-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3218)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3218!1 var3075)
(assert true)
;(assert (genGetObject/-2113871742 var204 var9 var3912 var1656 var3402)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var204!1 var3320)
(declare-const var9!1 var2727)
(declare-const var3912!1 var3901)
(declare-const var1656!1 Int)
(declare-const var3402!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var3636 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var3636!1 var2077)
(declare-const var2278 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3636!1 58 var719)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var3636!2 var2077)
(declare-const var3109 Int)
(declare-const var719!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3636!2 198 var1080!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var3636!3 var2077)
(declare-const var412 Int)
(declare-const var1080!2 var3075)
(assert true)
;(assert (gwFieldName/844239833 var204!1 var9!1 var3912!1 var1656!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var204!2 var3320)
(declare-const var9!2 var2727)
(declare-const var3912!2 var3901)
(declare-const var1656!2 Int)
(define-const var300 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var3622 Bool (= var300 var3954)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var3622 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var3636!3 25 var719!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3) 

(declare-const var3636!4 var2077)
(declare-const var1724 Int)
(declare-const var719!2 Int)
(assert true)
;(assert (visitMethodInsn/-527702312 var3636!4 182 "java/lang/String" "trim" "()Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0) 

(declare-const var3636!5 var2077)
(declare-const var333 Int)
(declare-const var1590 String)
(declare-const var3856 String)
(declare-const var305 String)
(declare-const var1071 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3636!5 58 var719!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var3636!6 var2077)
(declare-const var3109!1 Int)
(declare-const var719!3 Int)
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var2134 1 0) 0)) ; Cond: z0 == 0 
(define-const var2797 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var3320_gwString/1014499970 var9!2 var2797 (ite (= 1 0) true false) var719!3)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var9!3 var2727)
(declare-const var2797!1 Bool)
(declare-const var1071!1 Int)
(declare-const var719!4 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3636!6 167 var3218!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var3636!7 var2077)
(declare-const var2712 Int)
(declare-const var3218!2 var3075)
(assert true)
;(assert (visitLabel/567040954 var3636!7 var1080!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var3636!8 var2077)
(declare-const var1080!3 var3075)
(define-const var3996 var3075 var3075-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3996)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3996!1 var3075)
(define-const var3300 var3075 var3075-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3300)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3300!1 var3075)
(define-const var2676 var2065 var2065-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1822 Int (mask/-2077367092 var2676)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2969 var2065 var2065-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var1633 Int (mask/-2077367092 var2969)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var406 Int (bv2nat (bvor ((_ int2bv 64) var1822) ((_ int2bv 64) var1633)))) ; Statement: $l20 = $l18 | $l19 
(define-const var515 var2065 var2065-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var355 Int (mask/-2077367092 var515)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2405 Int (bv2nat (bvor ((_ int2bv 64) var406) ((_ int2bv 64) var355)))) ; Statement: $l22 = $l20 | $l21 
(define-const var3227 var2065 var2065-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var1250 Int (mask/-2077367092 var3227)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1240 Int (bv2nat (bvor ((_ int2bv 64) var2405) ((_ int2bv 64) var1250)))) ; Statement: $l24 = $l22 | $l23 
(define-const var85 var2065 var2065-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3466 Int (mask/-2077367092 var85)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1357 Int (bv2nat (bvor ((_ int2bv 64) var1240) ((_ int2bv 64) var3466)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3088 var2065 var2065-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var887 Int (mask/-2077367092 var3088)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1433 Int (bv2nat (bvor ((_ int2bv 64) var887) ((_ int2bv 64) var1357)))) ; Statement: $l28 = $l27 | $l26 
(define-const var2049 Int (bv2nat (bvand ((_ int2bv 64) var879) ((_ int2bv 64) var1433)))) ; Statement: $l29 = l2 & $l28 
(define-const var1247 Int (ite (> var2049 0) 1 (ite (< var2049 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var1247 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var3636!8 var3300!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var3636!9 var2077)
(declare-const var3300!2 var3075)
(define-const var392 var1014 (defaultValue/-2048851183 var3912!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var392 null-var1014))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var204!2 var9!3 var3912!2 var1656!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var204!3 var3320)
(declare-const var9!4 var2727)
(declare-const var3912!3 var3901)
(declare-const var1656!3 Int)
(define-const var3044 Int (bv2nat (bvand ((_ int2bv 64) var879) ((_ int2bv 64) var1357)))) ; Statement: $l6 = l2 & $l26 
(define-const var286 Int (ite (> var3044 0) 1 (ite (< var3044 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var286 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var3636!9 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3636!10 var2077)
(declare-const var1724!1 Int)
(declare-const var3434 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var3636!10 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var3636!11 var2077)
(declare-const var2798 String)
(define-const var2147 String var2416-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3636!11 182 var2147 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var3636!12 var2077)
(declare-const var333!1 Int)
(declare-const var2147!1 String)
(declare-const var1171 String)
(declare-const var3554 String)
(declare-const var1071!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3636!12 167 var3218!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var3636!13 var2077)
(declare-const var2712!1 Int)
(declare-const var3218!3 var3075)
(assert true)
;(assert (visitLabel/567040954 var3636!13 var3996!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var3636!14 var2077)
(declare-const var3996!2 var3075)
(assert true)
;(assert (visitVarInsn/-915853820 var3636!14 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3636!15 var2077)
(declare-const var1724!2 Int)
(declare-const var3434!1 Int)
(define-const var1186 String var2416-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3636!15 182 var1186 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var3636!16 var2077)
(declare-const var333!2 Int)
(declare-const var1186!1 String)
(declare-const var401 String)
(declare-const var2308 String)
(declare-const var1071!3 Int)
(assert true)
;(assert (visitLabel/567040954 var3636!16 var3218!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var3636!17 var2077)
(declare-const var3218!4 var3075)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1014=([java.lang.Class], java.lang.Object), var3075-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var3320_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void)}
; {var3320=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var204=r7, var2727=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var9=r0, var3901=com.alibaba.fastjson2.writer.FieldWriter, var3912=r1, var3402=i5, var1656=i4, var2134=z0, var2682=$l1, var3784=$l0, var879=l2, var2077=com.alibaba.fastjson2.internal.asm.MethodWriter, var3636=r2, var3073=r3, var3954=r4, var1014=java.lang.Object, var719=i3, var3075=com.alibaba.fastjson2.internal.asm.Label, var1080=$r5, var3218=$r6, var2278=89, var3109=58, var412=198, var300=$r8, var3622=$z1, var1724=25, var333=182, var1590="java/lang/String", var3856="trim", var305="()Ljava/lang/String;", var1071=0, var2797=$z5, var2712=167, var3996=$r22, var3300=$r23, var2065=com.alibaba.fastjson2.JSONWriter$Feature, var2676=$r24, var1822=$l18, var2969=$r25, var1633=$l19, var406=$l20, var515=$r26, var355=$l21, var2405=$l22, var3227=$r27, var1250=$l23, var1240=$l24, var85=$r28, var3466=$l25, var1357=$l26, var3088=$r29, var887=$l27, var1433=$l28, var2049=$l29, var1247=$b30, var392=$r9, var3044=$l6, var286=$b7, var3434=1, var2798="", var2416=com.alibaba.fastjson2.internal.asm.ASMUtils, var2147=$r31, var1171="writeString", var3554="(Ljava/lang/String;)V", var1186=$r32, var401="writeStringNull", var2308="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3320, r7=var204, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2727, r0=var9, com.alibaba.fastjson2.writer.FieldWriter=var3901, r1=var3912, i5=var3402, i4=var1656, z0=var2134, $l1=var2682, $l0=var3784, l2=var879, com.alibaba.fastjson2.internal.asm.MethodWriter=var2077, r2=var3636, r3=var3073, r4=var3954, java.lang.Object=var1014, i3=var719, com.alibaba.fastjson2.internal.asm.Label=var3075, $r5=var1080, $r6=var3218, 89=var2278, 58=var3109, 198=var412, $r8=var300, $z1=var3622, 25=var1724, 182=var333, "java/lang/String"=var1590, "trim"=var3856, "()Ljava/lang/String;"=var305, 0=var1071, $z5=var2797, 167=var2712, $r22=var3996, $r23=var3300, com.alibaba.fastjson2.JSONWriter$Feature=var2065, $r24=var2676, $l18=var1822, $r25=var2969, $l19=var1633, $l20=var406, $r26=var515, $l21=var355, $l22=var2405, $r27=var3227, $l23=var1250, $l24=var1240, $r28=var85, $l25=var3466, $l26=var1357, $r29=var3088, $l27=var887, $l28=var1433, $l29=var2049, $b30=var1247, $r9=var392, $l6=var3044, $b7=var286, 1=var3434, ""=var2798, com.alibaba.fastjson2.internal.asm.ASMUtils=var2416, $r31=var2147, "writeString"=var1171, "(Ljava/lang/String;)V"=var3554, $r32=var1186, "writeStringNull"=var401, "()V"=var2308}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 8