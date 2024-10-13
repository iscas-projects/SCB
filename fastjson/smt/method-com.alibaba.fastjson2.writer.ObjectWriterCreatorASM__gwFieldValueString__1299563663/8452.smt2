(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var3093 0)
(declare-sort var675 0)
(declare-sort var2528 0)
(declare-sort var3835 0)
(declare-sort var3969 0)
(declare-sort var2149 0)
(declare-sort var2374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var3093) Bool)
(declare-fun features/-2048851183 (var675) Int)
(declare-fun objectFeatures/1968396404 (var3093) Int)
(declare-fun mw/1968396404 (var3093) var2528)
(declare-fun fieldClass/-2048851183 (var675) ClassObject)
(declare-fun format/-2048851183 (var675) String)
(declare-fun var/1427438936 (var3093 var3835) Int)
(declare-fun cast-from-ClassObject-to-var3835 (ClassObject) var3835)
(declare-fun var3969-init () var3969)
(declare-fun <init>/-2069075760 (var3969) void)
(declare-fun genGetObject/-2113871742 (var2224 var3093 var675 Int Int) void)
(declare-fun visitInsn/-918620226 (var2528 Int) void)
(declare-fun visitVarInsn/-915853820 (var2528 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var2528 Int var3969) void)
(declare-fun gwFieldName/844239833 (var2224 var3093 var675 Int) void)
(declare-fun var2224_gwString/1014499970 (var3093 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var2528 var3969) void)
(declare-fun mask/-2077367092 (var2149) Int)
(declare-fun genIsEnabled/1740983204 (var3093 Int var3969 var3969) void)
(declare-fun defaultValue/-2048851183 (var675) var3835)
(declare-fun visitLdcInsn/1458008857 (var2528 String) void)
(declare-fun visitMethodInsn/-527702312 (var2528 Int String String String Bool) void)
(declare-const null-var2224 var2224)
(declare-const null-var3093 var3093)
(declare-const null-var675 var675)
(declare-const null-Int Int)
(declare-const var2149-NullAsDefaultValue var2149)
(declare-const var2149-WriteNullNumberAsZero var2149)
(declare-const var2149-WriteNullBooleanAsFalse var2149)
(declare-const var2149-WriteNullListAsEmpty var2149)
(declare-const var2149-WriteNullStringAsEmpty var2149)
(declare-const var2149-WriteNulls var2149)
(declare-const null-var3835 var3835)
(declare-const var2374-TYPE_JSON_WRITER String)
(declare-const var3825 var2224) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3825 null-var2224)))
(declare-const var3152 var3093) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3152 null-var3093)))
(declare-const var2538 var675) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2538 null-var675)))
(declare-const var1045 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var1045 null-Int)))
(declare-const var3132 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var3132 null-Int)))
(define-const var249 Bool (jsonb/1968396404 var3152)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var1116 Int (features/-2048851183 var2538)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var2492 Int (objectFeatures/1968396404 var3152)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var2593 Int (bv2nat (bvor ((_ int2bv 64) var1116) ((_ int2bv 64) var2492)))) ; Statement: l2 = $l1 | $l0 
(define-const var3742 var2528 (mw/1968396404 var3152)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var553 ClassObject (fieldClass/-2048851183 var2538)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3174 String (format/-2048851183 var2538)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var461 Int (var/1427438936 var3152 (cast-from-ClassObject-to-var3835 var553))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var732 var3969 var3969-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var732)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var732!1 var3969)
(define-const var3248 var3969 var3969-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3248)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3248!1 var3969)
(assert true)
;(assert (genGetObject/-2113871742 var3825 var3152 var2538 var3132 var1045)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var3825!1 var2224)
(declare-const var3152!1 var3093)
(declare-const var2538!1 var675)
(declare-const var3132!1 Int)
(declare-const var1045!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var3742 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var3742!1 var2528)
(declare-const var613 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3742!1 58 var461)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var3742!2 var2528)
(declare-const var2018 Int)
(declare-const var461!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3742!2 198 var732!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var3742!3 var2528)
(declare-const var2807 Int)
(declare-const var732!2 var3969)
(assert true)
;(assert (gwFieldName/844239833 var3825!1 var3152!1 var2538!1 var3132!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var3825!2 var2224)
(declare-const var3152!2 var3093)
(declare-const var2538!2 var675)
(declare-const var3132!2 Int)
(define-const var2326 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1081 Bool (= var2326 var3174)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1081 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var249 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3619 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var2603 Bool (= var3619 var3174)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (= (ite var2603 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1195 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var2224_gwString/1014499970 var3152!2 var1195 (ite (= 1 0) true false) var461!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var3152!3 var3093)
(declare-const var1195!1 Bool)
(declare-const var3353 Int)
(declare-const var461!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3742!3 167 var3248!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var3742!4 var2528)
(declare-const var3540 Int)
(declare-const var3248!2 var3969)
(assert true)
;(assert (visitLabel/567040954 var3742!4 var732!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var3742!5 var2528)
(declare-const var732!3 var3969)
(define-const var2208 var3969 var3969-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2208)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2208!1 var3969)
(define-const var219 var3969 var3969-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var219)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var219!1 var3969)
(define-const var1818 var2149 var2149-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1617 Int (mask/-2077367092 var1818)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3244 var2149 var2149-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var254 Int (mask/-2077367092 var3244)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3740 Int (bv2nat (bvor ((_ int2bv 64) var1617) ((_ int2bv 64) var254)))) ; Statement: $l20 = $l18 | $l19 
(define-const var3043 var2149 var2149-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var3213 Int (mask/-2077367092 var3043)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3189 Int (bv2nat (bvor ((_ int2bv 64) var3740) ((_ int2bv 64) var3213)))) ; Statement: $l22 = $l20 | $l21 
(define-const var1188 var2149 var2149-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var2093 Int (mask/-2077367092 var1188)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1938 Int (bv2nat (bvor ((_ int2bv 64) var3189) ((_ int2bv 64) var2093)))) ; Statement: $l24 = $l22 | $l23 
(define-const var1488 var2149 var2149-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var1657 Int (mask/-2077367092 var1488)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var541 Int (bv2nat (bvor ((_ int2bv 64) var1938) ((_ int2bv 64) var1657)))) ; Statement: $l26 = $l24 | $l25 
(define-const var917 var2149 var2149-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var1604 Int (mask/-2077367092 var917)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var925 Int (bv2nat (bvor ((_ int2bv 64) var1604) ((_ int2bv 64) var541)))) ; Statement: $l28 = $l27 | $l26 
(define-const var3789 Int (bv2nat (bvand ((_ int2bv 64) var2593) ((_ int2bv 64) var925)))) ; Statement: $l29 = l2 & $l28 
(define-const var3297 Int (ite (> var3789 0) 1 (ite (< var3789 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (not (= var3297 0)))) ; Negate: Cond: $b30 != 0  
(define-const var2840 var2149 var2149-WriteNulls) ; Statement: $r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var1142 Int (mask/-2077367092 var2840)) ; Statement: $l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3513 var2149 var2149-NullAsDefaultValue) ; Statement: $r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var445 Int (mask/-2077367092 var3513)) ; Statement: $l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1211 Int (bv2nat (bvor ((_ int2bv 64) var1142) ((_ int2bv 64) var445)))) ; Statement: $l16 = $l14 | $l13 
(define-const var2011 var2149 var2149-WriteNullStringAsEmpty) ; Statement: $r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var574 Int (mask/-2077367092 var2011)) ; Statement: $l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var37 Int (bv2nat (bvor ((_ int2bv 64) var1211) ((_ int2bv 64) var574)))) ; Statement: $l17 = $l16 | $l15 
(assert true)
;(assert (genIsEnabled/1740983204 var3152!3 var37 var219!1 var3248!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6) 

(declare-const var3152!4 var3093)
(declare-const var37!1 Int)
(declare-const var219!2 var3969)
(declare-const var3248!3 var3969)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var3742!5 var219!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var3742!6 var2528)
(declare-const var219!3 var3969)
(define-const var3770 var3835 (defaultValue/-2048851183 var2538!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var3770 null-var3835))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var3825!2 var3152!4 var2538!2 var3132!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var3825!3 var2224)
(declare-const var3152!5 var3093)
(declare-const var2538!3 var675)
(declare-const var3132!3 Int)
(define-const var2765 Int (bv2nat (bvand ((_ int2bv 64) var2593) ((_ int2bv 64) var541)))) ; Statement: $l6 = l2 & $l26 
(define-const var2963 Int (ite (> var2765 0) 1 (ite (< var2765 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var2963 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var3742!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3742!7 var2528)
(declare-const var2205 Int)
(declare-const var2680 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var3742!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var3742!8 var2528)
(declare-const var2821 String)
(define-const var1979 String var2374-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3742!8 182 var1979 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var3742!9 var2528)
(declare-const var3201 Int)
(declare-const var1979!1 String)
(declare-const var3251 String)
(declare-const var2913 String)
(declare-const var3353!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3742!9 167 var3248!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var3742!10 var2528)
(declare-const var3540!1 Int)
(declare-const var3248!4 var3969)
(assert true)
;(assert (visitLabel/567040954 var3742!10 var2208!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var3742!11 var2528)
(declare-const var2208!2 var3969)
(assert true)
;(assert (visitVarInsn/-915853820 var3742!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3742!12 var2528)
(declare-const var2205!1 Int)
(declare-const var2680!1 Int)
(define-const var2115 String var2374-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3742!12 182 var2115 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var3742!13 var2528)
(declare-const var3201!1 Int)
(declare-const var2115!1 String)
(declare-const var3764 String)
(declare-const var1644 String)
(declare-const var3353!2 Int)
(assert true)
;(assert (visitLabel/567040954 var3742!13 var3248!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var3742!14 var2528)
(declare-const var3248!5 var3969)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3835=([java.lang.Class], java.lang.Object), var3969-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var2224_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genIsEnabled/1740983204=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2224=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3825=r7, var3093=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3152=r0, var675=com.alibaba.fastjson2.writer.FieldWriter, var2538=r1, var1045=i5, var3132=i4, var249=z0, var1116=$l1, var2492=$l0, var2593=l2, var2528=com.alibaba.fastjson2.internal.asm.MethodWriter, var3742=r2, var553=r3, var3174=r4, var3835=java.lang.Object, var461=i3, var3969=com.alibaba.fastjson2.internal.asm.Label, var732=$r5, var3248=$r6, var613=89, var2018=58, var2807=198, var2326=$r8, var1081=$z1, var3619=$r21, var2603=$z4, var1195=$z5, var3353=0, var3540=167, var2208=$r22, var219=$r23, var2149=com.alibaba.fastjson2.JSONWriter$Feature, var1818=$r24, var1617=$l18, var3244=$r25, var254=$l19, var3740=$l20, var3043=$r26, var3213=$l21, var3189=$l22, var1188=$r27, var2093=$l23, var1938=$l24, var1488=$r28, var1657=$l25, var541=$l26, var917=$r29, var1604=$l27, var925=$l28, var3789=$l29, var3297=$b30, var2840=$r18, var1142=$l14, var3513=$r19, var445=$l13, var1211=$l16, var2011=$r20, var574=$l15, var37=$l17, var3770=$r9, var2765=$l6, var2963=$b7, var2205=25, var2680=1, var2821="", var2374=com.alibaba.fastjson2.internal.asm.ASMUtils, var1979=$r31, var3201=182, var3251="writeString", var2913="(Ljava/lang/String;)V", var2115=$r32, var3764="writeStringNull", var1644="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2224, r7=var3825, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3093, r0=var3152, com.alibaba.fastjson2.writer.FieldWriter=var675, r1=var2538, i5=var1045, i4=var3132, z0=var249, $l1=var1116, $l0=var2492, l2=var2593, com.alibaba.fastjson2.internal.asm.MethodWriter=var2528, r2=var3742, r3=var553, r4=var3174, java.lang.Object=var3835, i3=var461, com.alibaba.fastjson2.internal.asm.Label=var3969, $r5=var732, $r6=var3248, 89=var613, 58=var2018, 198=var2807, $r8=var2326, $z1=var1081, $r21=var3619, $z4=var2603, $z5=var1195, 0=var3353, 167=var3540, $r22=var2208, $r23=var219, com.alibaba.fastjson2.JSONWriter$Feature=var2149, $r24=var1818, $l18=var1617, $r25=var3244, $l19=var254, $l20=var3740, $r26=var3043, $l21=var3213, $l22=var3189, $r27=var1188, $l23=var2093, $l24=var1938, $r28=var1488, $l25=var1657, $l26=var541, $r29=var917, $l27=var1604, $l28=var925, $l29=var3789, $b30=var3297, $r18=var2840, $l14=var1142, $r19=var3513, $l13=var445, $l16=var1211, $r20=var2011, $l15=var574, $l17=var37, $r9=var3770, $l6=var2765, $b7=var2963, 25=var2205, 1=var2680, ""=var2821, com.alibaba.fastjson2.internal.asm.ASMUtils=var2374, $r31=var1979, 182=var3201, "writeString"=var3251, "(Ljava/lang/String;)V"=var2913, $r32=var2115, "writeStringNull"=var3764, "()V"=var1644}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r18 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l14 = $r18.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r19 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l13 = $r19.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l16 = $l14 | $l13;	$r20 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l15 = $r20.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l17 = $l16 | $l15;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsEnabled(long,com.alibaba.fastjson2.internal.asm.Label,com.alibaba.fastjson2.internal.asm.Label)>($l17, $r23, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9