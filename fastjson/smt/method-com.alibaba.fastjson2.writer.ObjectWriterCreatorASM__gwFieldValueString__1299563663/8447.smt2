(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var820 0)
(declare-sort var3226 0)
(declare-sort var61 0)
(declare-sort var3477 0)
(declare-sort var289 0)
(declare-sort var536 0)
(declare-sort var2930 0)
(declare-sort var3774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var3226) Bool)
(declare-fun features/-2048851183 (var61) Int)
(declare-fun objectFeatures/1968396404 (var3226) Int)
(declare-fun mw/1968396404 (var3226) var3477)
(declare-fun fieldClass/-2048851183 (var61) ClassObject)
(declare-fun format/-2048851183 (var61) String)
(declare-fun var/1427438936 (var3226 var289) Int)
(declare-fun cast-from-ClassObject-to-var289 (ClassObject) var289)
(declare-fun var536-init () var536)
(declare-fun <init>/-2069075760 (var536) void)
(declare-fun genGetObject/-2113871742 (var820 var3226 var61 Int Int) void)
(declare-fun visitInsn/-918620226 (var3477 Int) void)
(declare-fun visitVarInsn/-915853820 (var3477 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var3477 Int var536) void)
(declare-fun gwFieldName/844239833 (var820 var3226 var61 Int) void)
(declare-fun visitMethodInsn/-527702312 (var3477 Int String String String Bool) void)
(declare-fun var820_gwString/1014499970 (var3226 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var3477 var536) void)
(declare-fun mask/-2077367092 (var2930) Int)
(declare-fun defaultValue/-2048851183 (var61) var289)
(declare-fun visitLdcInsn/1458008857 (var3477 String) void)
(declare-const null-var820 var820)
(declare-const null-var3226 var3226)
(declare-const null-var61 var61)
(declare-const null-Int Int)
(declare-const var2930-NullAsDefaultValue var2930)
(declare-const var2930-WriteNullNumberAsZero var2930)
(declare-const var2930-WriteNullBooleanAsFalse var2930)
(declare-const var2930-WriteNullListAsEmpty var2930)
(declare-const var2930-WriteNullStringAsEmpty var2930)
(declare-const var2930-WriteNulls var2930)
(declare-const null-var289 var289)
(declare-const var3774-TYPE_JSON_WRITER String)
(declare-const var2270 var820) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2270 null-var820)))
(declare-const var2950 var3226) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2950 null-var3226)))
(declare-const var2906 var61) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2906 null-var61)))
(declare-const var3447 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3447 null-Int)))
(declare-const var3193 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var3193 null-Int)))
(define-const var2694 Bool (jsonb/1968396404 var2950)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var2325 Int (features/-2048851183 var2906)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var912 Int (objectFeatures/1968396404 var2950)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var514 Int (bv2nat (bvor ((_ int2bv 64) var2325) ((_ int2bv 64) var912)))) ; Statement: l2 = $l1 | $l0 
(define-const var311 var3477 (mw/1968396404 var2950)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1074 ClassObject (fieldClass/-2048851183 var2906)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var467 String (format/-2048851183 var2906)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var637 Int (var/1427438936 var2950 (cast-from-ClassObject-to-var289 var1074))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var3140 var536 var536-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3140)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3140!1 var536)
(define-const var1222 var536 var536-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1222)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1222!1 var536)
(assert true)
;(assert (genGetObject/-2113871742 var2270 var2950 var2906 var3193 var3447)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var2270!1 var820)
(declare-const var2950!1 var3226)
(declare-const var2906!1 var61)
(declare-const var3193!1 Int)
(declare-const var3447!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var311 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var311!1 var3477)
(declare-const var422 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var311!1 58 var637)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var311!2 var3477)
(declare-const var14 Int)
(declare-const var637!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var311!2 198 var3140!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var311!3 var3477)
(declare-const var2162 Int)
(declare-const var3140!2 var536)
(assert true)
;(assert (gwFieldName/844239833 var2270!1 var2950!1 var2906!1 var3193!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2270!2 var820)
(declare-const var2950!2 var3226)
(declare-const var2906!2 var61)
(declare-const var3193!2 Int)
(define-const var1775 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1309 Bool (= var1775 var467)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var1309 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var311!3 25 var637!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3) 

(declare-const var311!4 var3477)
(declare-const var2710 Int)
(declare-const var637!2 Int)
(assert true)
;(assert (visitMethodInsn/-527702312 var311!4 182 "java/lang/String" "trim" "()Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0) 

(declare-const var311!5 var3477)
(declare-const var1847 Int)
(declare-const var1632 String)
(declare-const var1101 String)
(declare-const var715 String)
(declare-const var3154 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var311!5 58 var637!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var311!6 var3477)
(declare-const var14!1 Int)
(declare-const var637!3 Int)
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var2694 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1763 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var878 Bool (= var1763 var467)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (= (ite var878 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1801 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var820_gwString/1014499970 var2950!2 var1801 (ite (= 1 0) true false) var637!3)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var2950!3 var3226)
(declare-const var1801!1 Bool)
(declare-const var3154!1 Int)
(declare-const var637!4 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var311!6 167 var1222!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var311!7 var3477)
(declare-const var2610 Int)
(declare-const var1222!2 var536)
(assert true)
;(assert (visitLabel/567040954 var311!7 var3140!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var311!8 var3477)
(declare-const var3140!3 var536)
(define-const var3936 var536 var536-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3936)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3936!1 var536)
(define-const var2130 var536 var536-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2130)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2130!1 var536)
(define-const var2890 var2930 var2930-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var2170 Int (mask/-2077367092 var2890)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3054 var2930 var2930-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var2798 Int (mask/-2077367092 var3054)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1455 Int (bv2nat (bvor ((_ int2bv 64) var2170) ((_ int2bv 64) var2798)))) ; Statement: $l20 = $l18 | $l19 
(define-const var1302 var2930 var2930-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var943 Int (mask/-2077367092 var1302)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3906 Int (bv2nat (bvor ((_ int2bv 64) var1455) ((_ int2bv 64) var943)))) ; Statement: $l22 = $l20 | $l21 
(define-const var450 var2930 var2930-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var1518 Int (mask/-2077367092 var450)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var430 Int (bv2nat (bvor ((_ int2bv 64) var3906) ((_ int2bv 64) var1518)))) ; Statement: $l24 = $l22 | $l23 
(define-const var955 var2930 var2930-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3026 Int (mask/-2077367092 var955)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1580 Int (bv2nat (bvor ((_ int2bv 64) var430) ((_ int2bv 64) var3026)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3414 var2930 var2930-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var2734 Int (mask/-2077367092 var3414)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var286 Int (bv2nat (bvor ((_ int2bv 64) var2734) ((_ int2bv 64) var1580)))) ; Statement: $l28 = $l27 | $l26 
(define-const var1435 Int (bv2nat (bvand ((_ int2bv 64) var514) ((_ int2bv 64) var286)))) ; Statement: $l29 = l2 & $l28 
(define-const var3561 Int (ite (> var1435 0) 1 (ite (< var1435 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var3561 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var311!8 var2130!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var311!9 var3477)
(declare-const var2130!2 var536)
(define-const var1233 var289 (defaultValue/-2048851183 var2906!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var1233 null-var289))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var2270!2 var2950!3 var2906!2 var3193!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2270!3 var820)
(declare-const var2950!4 var3226)
(declare-const var2906!3 var61)
(declare-const var3193!3 Int)
(define-const var1281 Int (bv2nat (bvand ((_ int2bv 64) var514) ((_ int2bv 64) var1580)))) ; Statement: $l6 = l2 & $l26 
(define-const var2995 Int (ite (> var1281 0) 1 (ite (< var1281 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var2995 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var311!9 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var311!10 var3477)
(declare-const var2710!1 Int)
(declare-const var2575 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var311!10 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var311!11 var3477)
(declare-const var380 String)
(define-const var107 String var3774-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var311!11 182 var107 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var311!12 var3477)
(declare-const var1847!1 Int)
(declare-const var107!1 String)
(declare-const var2791 String)
(declare-const var3544 String)
(declare-const var3154!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var311!12 167 var1222!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var311!13 var3477)
(declare-const var2610!1 Int)
(declare-const var1222!3 var536)
(assert true)
;(assert (visitLabel/567040954 var311!13 var3936!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var311!14 var3477)
(declare-const var3936!2 var536)
(assert true)
;(assert (visitVarInsn/-915853820 var311!14 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var311!15 var3477)
(declare-const var2710!2 Int)
(declare-const var2575!1 Int)
(define-const var1934 String var3774-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var311!15 182 var1934 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var311!16 var3477)
(declare-const var1847!2 Int)
(declare-const var1934!1 String)
(declare-const var3061 String)
(declare-const var3150 String)
(declare-const var3154!3 Int)
(assert true)
;(assert (visitLabel/567040954 var311!16 var1222!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var311!17 var3477)
(declare-const var1222!4 var536)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var289=([java.lang.Class], java.lang.Object), var536-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var820_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void)}
; {var820=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2270=r7, var3226=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2950=r0, var61=com.alibaba.fastjson2.writer.FieldWriter, var2906=r1, var3447=i5, var3193=i4, var2694=z0, var2325=$l1, var912=$l0, var514=l2, var3477=com.alibaba.fastjson2.internal.asm.MethodWriter, var311=r2, var1074=r3, var467=r4, var289=java.lang.Object, var637=i3, var536=com.alibaba.fastjson2.internal.asm.Label, var3140=$r5, var1222=$r6, var422=89, var14=58, var2162=198, var1775=$r8, var1309=$z1, var2710=25, var1847=182, var1632="java/lang/String", var1101="trim", var715="()Ljava/lang/String;", var3154=0, var1763=$r21, var878=$z4, var1801=$z5, var2610=167, var3936=$r22, var2130=$r23, var2930=com.alibaba.fastjson2.JSONWriter$Feature, var2890=$r24, var2170=$l18, var3054=$r25, var2798=$l19, var1455=$l20, var1302=$r26, var943=$l21, var3906=$l22, var450=$r27, var1518=$l23, var430=$l24, var955=$r28, var3026=$l25, var1580=$l26, var3414=$r29, var2734=$l27, var286=$l28, var1435=$l29, var3561=$b30, var1233=$r9, var1281=$l6, var2995=$b7, var2575=1, var380="", var3774=com.alibaba.fastjson2.internal.asm.ASMUtils, var107=$r31, var2791="writeString", var3544="(Ljava/lang/String;)V", var1934=$r32, var3061="writeStringNull", var3150="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var820, r7=var2270, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3226, r0=var2950, com.alibaba.fastjson2.writer.FieldWriter=var61, r1=var2906, i5=var3447, i4=var3193, z0=var2694, $l1=var2325, $l0=var912, l2=var514, com.alibaba.fastjson2.internal.asm.MethodWriter=var3477, r2=var311, r3=var1074, r4=var467, java.lang.Object=var289, i3=var637, com.alibaba.fastjson2.internal.asm.Label=var536, $r5=var3140, $r6=var1222, 89=var422, 58=var14, 198=var2162, $r8=var1775, $z1=var1309, 25=var2710, 182=var1847, "java/lang/String"=var1632, "trim"=var1101, "()Ljava/lang/String;"=var715, 0=var3154, $r21=var1763, $z4=var878, $z5=var1801, 167=var2610, $r22=var3936, $r23=var2130, com.alibaba.fastjson2.JSONWriter$Feature=var2930, $r24=var2890, $l18=var2170, $r25=var3054, $l19=var2798, $l20=var1455, $r26=var1302, $l21=var943, $l22=var3906, $r27=var450, $l23=var1518, $l24=var430, $r28=var955, $l25=var3026, $l26=var1580, $r29=var3414, $l27=var2734, $l28=var286, $l29=var1435, $b30=var3561, $r9=var1233, $l6=var1281, $b7=var2995, 1=var2575, ""=var380, com.alibaba.fastjson2.internal.asm.ASMUtils=var3774, $r31=var107, "writeString"=var2791, "(Ljava/lang/String;)V"=var3544, $r32=var1934, "writeStringNull"=var3061, "()V"=var3150}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9