(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2277 0)
(declare-sort var3547 0)
(declare-sort var1987 0)
(declare-sort var3488 0)
(declare-sort var3753 0)
(declare-sort var1098 0)
(declare-sort var1546 0)
(declare-sort var2786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var3547) Bool)
(declare-fun features/-2048851183 (var1987) Int)
(declare-fun objectFeatures/1968396404 (var3547) Int)
(declare-fun mw/1968396404 (var3547) var3488)
(declare-fun fieldClass/-2048851183 (var1987) ClassObject)
(declare-fun format/-2048851183 (var1987) String)
(declare-fun var/1427438936 (var3547 var3753) Int)
(declare-fun cast-from-ClassObject-to-var3753 (ClassObject) var3753)
(declare-fun var1098-init () var1098)
(declare-fun <init>/-2069075760 (var1098) void)
(declare-fun genGetObject/-2113871742 (var2277 var3547 var1987 Int Int) void)
(declare-fun visitInsn/-918620226 (var3488 Int) void)
(declare-fun visitVarInsn/-915853820 (var3488 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var3488 Int var1098) void)
(declare-fun gwFieldName/844239833 (var2277 var3547 var1987 Int) void)
(declare-fun var2277_gwString/1014499970 (var3547 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var3488 var1098) void)
(declare-fun mask/-2077367092 (var1546) Int)
(declare-fun defaultValue/-2048851183 (var1987) var3753)
(declare-fun visitLdcInsn/1458008857 (var3488 String) void)
(declare-fun visitMethodInsn/-527702312 (var3488 Int String String String Bool) void)
(declare-const null-var2277 var2277)
(declare-const null-var3547 var3547)
(declare-const null-var1987 var1987)
(declare-const null-Int Int)
(declare-const var1546-NullAsDefaultValue var1546)
(declare-const var1546-WriteNullNumberAsZero var1546)
(declare-const var1546-WriteNullBooleanAsFalse var1546)
(declare-const var1546-WriteNullListAsEmpty var1546)
(declare-const var1546-WriteNullStringAsEmpty var1546)
(declare-const var1546-WriteNulls var1546)
(declare-const null-var3753 var3753)
(declare-const var2786-TYPE_JSON_WRITER String)
(declare-const var278 var2277) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var278 null-var2277)))
(declare-const var3640 var3547) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3640 null-var3547)))
(declare-const var1357 var1987) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1357 null-var1987)))
(declare-const var3572 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3572 null-Int)))
(declare-const var136 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var136 null-Int)))
(define-const var2655 Bool (jsonb/1968396404 var3640)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var1961 Int (features/-2048851183 var1357)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var1087 Int (objectFeatures/1968396404 var3640)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var1004 Int (bv2nat (bvor ((_ int2bv 64) var1961) ((_ int2bv 64) var1087)))) ; Statement: l2 = $l1 | $l0 
(define-const var2674 var3488 (mw/1968396404 var3640)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var69 ClassObject (fieldClass/-2048851183 var1357)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2491 String (format/-2048851183 var1357)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var3774 Int (var/1427438936 var3640 (cast-from-ClassObject-to-var3753 var69))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var2044 var1098 var1098-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2044)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2044!1 var1098)
(define-const var1402 var1098 var1098-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1402)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1402!1 var1098)
(assert true)
;(assert (genGetObject/-2113871742 var278 var3640 var1357 var136 var3572)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var278!1 var2277)
(declare-const var3640!1 var3547)
(declare-const var1357!1 var1987)
(declare-const var136!1 Int)
(declare-const var3572!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2674 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var2674!1 var3488)
(declare-const var2822 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2674!1 58 var3774)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var2674!2 var3488)
(declare-const var3326 Int)
(declare-const var3774!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2674!2 198 var2044!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var2674!3 var3488)
(declare-const var3631 Int)
(declare-const var2044!2 var1098)
(assert true)
;(assert (gwFieldName/844239833 var278!1 var3640!1 var1357!1 var136!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var278!2 var2277)
(declare-const var3640!2 var3547)
(declare-const var1357!2 var1987)
(declare-const var136!2 Int)
(define-const var346 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1616 Bool (= var346 var2491)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1616 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var2655 1 0) 0)) ; Cond: z0 == 0 
(define-const var1434 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var2277_gwString/1014499970 var3640!2 var1434 (ite (= 1 0) true false) var3774!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var3640!3 var3547)
(declare-const var1434!1 Bool)
(declare-const var2269 Int)
(declare-const var3774!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2674!3 167 var1402!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2674!4 var3488)
(declare-const var1733 Int)
(declare-const var1402!2 var1098)
(assert true)
;(assert (visitLabel/567040954 var2674!4 var2044!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var2674!5 var3488)
(declare-const var2044!3 var1098)
(define-const var2120 var1098 var1098-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2120)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2120!1 var1098)
(define-const var221 var1098 var1098-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var221)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var221!1 var1098)
(define-const var707 var1546 var1546-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var377 Int (mask/-2077367092 var707)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3602 var1546 var1546-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var2968 Int (mask/-2077367092 var3602)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var433 Int (bv2nat (bvor ((_ int2bv 64) var377) ((_ int2bv 64) var2968)))) ; Statement: $l20 = $l18 | $l19 
(define-const var3861 var1546 var1546-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var1938 Int (mask/-2077367092 var3861)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1476 Int (bv2nat (bvor ((_ int2bv 64) var433) ((_ int2bv 64) var1938)))) ; Statement: $l22 = $l20 | $l21 
(define-const var3677 var1546 var1546-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var3291 Int (mask/-2077367092 var3677)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3096 Int (bv2nat (bvor ((_ int2bv 64) var1476) ((_ int2bv 64) var3291)))) ; Statement: $l24 = $l22 | $l23 
(define-const var1283 var1546 var1546-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3397 Int (mask/-2077367092 var1283)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var74 Int (bv2nat (bvor ((_ int2bv 64) var3096) ((_ int2bv 64) var3397)))) ; Statement: $l26 = $l24 | $l25 
(define-const var519 var1546 var1546-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var1117 Int (mask/-2077367092 var519)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3820 Int (bv2nat (bvor ((_ int2bv 64) var1117) ((_ int2bv 64) var74)))) ; Statement: $l28 = $l27 | $l26 
(define-const var2333 Int (bv2nat (bvand ((_ int2bv 64) var1004) ((_ int2bv 64) var3820)))) ; Statement: $l29 = l2 & $l28 
(define-const var1306 Int (ite (> var2333 0) 1 (ite (< var2333 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var1306 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var2674!5 var221!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var2674!6 var3488)
(declare-const var221!2 var1098)
(define-const var3239 var3753 (defaultValue/-2048851183 var1357!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var3239 null-var3753))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var278!2 var3640!3 var1357!2 var136!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var278!3 var2277)
(declare-const var3640!4 var3547)
(declare-const var1357!3 var1987)
(declare-const var136!3 Int)
(define-const var2416 Int (bv2nat (bvand ((_ int2bv 64) var1004) ((_ int2bv 64) var74)))) ; Statement: $l6 = l2 & $l26 
(define-const var1099 Int (ite (> var2416 0) 1 (ite (< var2416 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var1099 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var2674!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2674!7 var3488)
(declare-const var2581 Int)
(declare-const var29 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var2674!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var2674!8 var3488)
(declare-const var1081 String)
(define-const var3435 String var2786-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2674!8 182 var3435 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var2674!9 var3488)
(declare-const var316 Int)
(declare-const var3435!1 String)
(declare-const var1754 String)
(declare-const var3595 String)
(declare-const var2269!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2674!9 167 var1402!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2674!10 var3488)
(declare-const var1733!1 Int)
(declare-const var1402!3 var1098)
(assert true)
;(assert (visitLabel/567040954 var2674!10 var2120!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var2674!11 var3488)
(declare-const var2120!2 var1098)
(assert true)
;(assert (visitVarInsn/-915853820 var2674!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2674!12 var3488)
(declare-const var2581!1 Int)
(declare-const var29!1 Int)
(define-const var694 String var2786-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2674!12 182 var694 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var2674!13 var3488)
(declare-const var316!1 Int)
(declare-const var694!1 String)
(declare-const var229 String)
(declare-const var51 String)
(declare-const var2269!2 Int)
(assert true)
;(assert (visitLabel/567040954 var2674!13 var1402!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var2674!14 var3488)
(declare-const var1402!4 var1098)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3753=([java.lang.Class], java.lang.Object), var1098-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var2277_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2277=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var278=r7, var3547=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3640=r0, var1987=com.alibaba.fastjson2.writer.FieldWriter, var1357=r1, var3572=i5, var136=i4, var2655=z0, var1961=$l1, var1087=$l0, var1004=l2, var3488=com.alibaba.fastjson2.internal.asm.MethodWriter, var2674=r2, var69=r3, var2491=r4, var3753=java.lang.Object, var3774=i3, var1098=com.alibaba.fastjson2.internal.asm.Label, var2044=$r5, var1402=$r6, var2822=89, var3326=58, var3631=198, var346=$r8, var1616=$z1, var1434=$z5, var2269=0, var1733=167, var2120=$r22, var221=$r23, var1546=com.alibaba.fastjson2.JSONWriter$Feature, var707=$r24, var377=$l18, var3602=$r25, var2968=$l19, var433=$l20, var3861=$r26, var1938=$l21, var1476=$l22, var3677=$r27, var3291=$l23, var3096=$l24, var1283=$r28, var3397=$l25, var74=$l26, var519=$r29, var1117=$l27, var3820=$l28, var2333=$l29, var1306=$b30, var3239=$r9, var2416=$l6, var1099=$b7, var2581=25, var29=1, var1081="", var2786=com.alibaba.fastjson2.internal.asm.ASMUtils, var3435=$r31, var316=182, var1754="writeString", var3595="(Ljava/lang/String;)V", var694=$r32, var229="writeStringNull", var51="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2277, r7=var278, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3547, r0=var3640, com.alibaba.fastjson2.writer.FieldWriter=var1987, r1=var1357, i5=var3572, i4=var136, z0=var2655, $l1=var1961, $l0=var1087, l2=var1004, com.alibaba.fastjson2.internal.asm.MethodWriter=var3488, r2=var2674, r3=var69, r4=var2491, java.lang.Object=var3753, i3=var3774, com.alibaba.fastjson2.internal.asm.Label=var1098, $r5=var2044, $r6=var1402, 89=var2822, 58=var3326, 198=var3631, $r8=var346, $z1=var1616, $z5=var1434, 0=var2269, 167=var1733, $r22=var2120, $r23=var221, com.alibaba.fastjson2.JSONWriter$Feature=var1546, $r24=var707, $l18=var377, $r25=var3602, $l19=var2968, $l20=var433, $r26=var3861, $l21=var1938, $l22=var1476, $r27=var3677, $l23=var3291, $l24=var3096, $r28=var1283, $l25=var3397, $l26=var74, $r29=var519, $l27=var1117, $l28=var3820, $l29=var2333, $b30=var1306, $r9=var3239, $l6=var2416, $b7=var1099, 25=var2581, 1=var29, ""=var1081, com.alibaba.fastjson2.internal.asm.ASMUtils=var2786, $r31=var3435, 182=var316, "writeString"=var1754, "(Ljava/lang/String;)V"=var3595, $r32=var694, "writeStringNull"=var229, "()V"=var51}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 7