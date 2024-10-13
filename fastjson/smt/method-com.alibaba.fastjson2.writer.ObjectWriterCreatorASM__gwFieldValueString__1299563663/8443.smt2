(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3741 0)
(declare-sort var2551 0)
(declare-sort var68 0)
(declare-sort var3982 0)
(declare-sort var3704 0)
(declare-sort var2353 0)
(declare-sort var3628 0)
(declare-sort var621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var2551) Bool)
(declare-fun features/-2048851183 (var68) Int)
(declare-fun objectFeatures/1968396404 (var2551) Int)
(declare-fun mw/1968396404 (var2551) var3982)
(declare-fun fieldClass/-2048851183 (var68) ClassObject)
(declare-fun format/-2048851183 (var68) String)
(declare-fun var/1427438936 (var2551 var3704) Int)
(declare-fun cast-from-ClassObject-to-var3704 (ClassObject) var3704)
(declare-fun var2353-init () var2353)
(declare-fun <init>/-2069075760 (var2353) void)
(declare-fun genGetObject/-2113871742 (var3741 var2551 var68 Int Int) void)
(declare-fun visitInsn/-918620226 (var3982 Int) void)
(declare-fun visitVarInsn/-915853820 (var3982 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var3982 Int var2353) void)
(declare-fun gwFieldName/844239833 (var3741 var2551 var68 Int) void)
(declare-fun var3741_gwString/1014499970 (var2551 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var3982 var2353) void)
(declare-fun mask/-2077367092 (var3628) Int)
(declare-fun defaultValue/-2048851183 (var68) var3704)
(declare-fun visitLdcInsn/1458008857 (var3982 String) void)
(declare-fun visitMethodInsn/-527702312 (var3982 Int String String String Bool) void)
(declare-const null-var3741 var3741)
(declare-const null-var2551 var2551)
(declare-const null-var68 var68)
(declare-const null-Int Int)
(declare-const var3628-NullAsDefaultValue var3628)
(declare-const var3628-WriteNullNumberAsZero var3628)
(declare-const var3628-WriteNullBooleanAsFalse var3628)
(declare-const var3628-WriteNullListAsEmpty var3628)
(declare-const var3628-WriteNullStringAsEmpty var3628)
(declare-const var3628-WriteNulls var3628)
(declare-const null-var3704 var3704)
(declare-const var621-TYPE_JSON_WRITER String)
(declare-const var3584 var3741) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3584 null-var3741)))
(declare-const var2843 var2551) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2843 null-var2551)))
(declare-const var929 var68) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var929 null-var68)))
(declare-const var491 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var491 null-Int)))
(declare-const var560 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var560 null-Int)))
(define-const var1401 Bool (jsonb/1968396404 var2843)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3992 Int (features/-2048851183 var929)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var1118 Int (objectFeatures/1968396404 var2843)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var2301 Int (bv2nat (bvor ((_ int2bv 64) var3992) ((_ int2bv 64) var1118)))) ; Statement: l2 = $l1 | $l0 
(define-const var802 var3982 (mw/1968396404 var2843)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2148 ClassObject (fieldClass/-2048851183 var929)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var305 String (format/-2048851183 var929)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var3947 Int (var/1427438936 var2843 (cast-from-ClassObject-to-var3704 var2148))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var1162 var2353 var2353-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1162)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1162!1 var2353)
(define-const var2687 var2353 var2353-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2687)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2687!1 var2353)
(assert true)
;(assert (genGetObject/-2113871742 var3584 var2843 var929 var560 var491)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var3584!1 var3741)
(declare-const var2843!1 var2551)
(declare-const var929!1 var68)
(declare-const var560!1 Int)
(declare-const var491!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var802 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var802!1 var3982)
(declare-const var1683 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var802!1 58 var3947)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var802!2 var3982)
(declare-const var1610 Int)
(declare-const var3947!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var802!2 198 var1162!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var802!3 var3982)
(declare-const var2512 Int)
(declare-const var1162!2 var2353)
(assert true)
;(assert (gwFieldName/844239833 var3584!1 var2843!1 var929!1 var560!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var3584!2 var3741)
(declare-const var2843!2 var2551)
(declare-const var929!2 var68)
(declare-const var560!2 Int)
(define-const var3060 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1320 Bool (= var3060 var305)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1320 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var1401 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1362 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var118 Bool (= var1362 var305)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (= (ite var118 1 0) 0)) ; Cond: $z4 == 0 
(define-const var1148 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var3741_gwString/1014499970 var2843!2 var1148 (ite (= 1 0) true false) var3947!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var2843!3 var2551)
(declare-const var1148!1 Bool)
(declare-const var2905 Int)
(declare-const var3947!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var802!3 167 var2687!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var802!4 var3982)
(declare-const var338 Int)
(declare-const var2687!2 var2353)
(assert true)
;(assert (visitLabel/567040954 var802!4 var1162!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var802!5 var3982)
(declare-const var1162!3 var2353)
(define-const var1204 var2353 var2353-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1204)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1204!1 var2353)
(define-const var200 var2353 var2353-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var200)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var200!1 var2353)
(define-const var1612 var3628 var3628-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1563 Int (mask/-2077367092 var1612)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var324 var3628 var3628-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var3118 Int (mask/-2077367092 var324)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3307 Int (bv2nat (bvor ((_ int2bv 64) var1563) ((_ int2bv 64) var3118)))) ; Statement: $l20 = $l18 | $l19 
(define-const var3968 var3628 var3628-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var311 Int (mask/-2077367092 var3968)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var12 Int (bv2nat (bvor ((_ int2bv 64) var3307) ((_ int2bv 64) var311)))) ; Statement: $l22 = $l20 | $l21 
(define-const var1095 var3628 var3628-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var2339 Int (mask/-2077367092 var1095)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3231 Int (bv2nat (bvor ((_ int2bv 64) var12) ((_ int2bv 64) var2339)))) ; Statement: $l24 = $l22 | $l23 
(define-const var2529 var3628 var3628-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var3044 Int (mask/-2077367092 var2529)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3373 Int (bv2nat (bvor ((_ int2bv 64) var3231) ((_ int2bv 64) var3044)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3676 var3628 var3628-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var2808 Int (mask/-2077367092 var3676)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1665 Int (bv2nat (bvor ((_ int2bv 64) var2808) ((_ int2bv 64) var3373)))) ; Statement: $l28 = $l27 | $l26 
(define-const var1630 Int (bv2nat (bvand ((_ int2bv 64) var2301) ((_ int2bv 64) var1665)))) ; Statement: $l29 = l2 & $l28 
(define-const var3258 Int (ite (> var1630 0) 1 (ite (< var1630 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var3258 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var802!5 var200!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var802!6 var3982)
(declare-const var200!2 var2353)
(define-const var1497 var3704 (defaultValue/-2048851183 var929!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var1497 null-var3704))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var3584!2 var2843!3 var929!2 var560!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var3584!3 var3741)
(declare-const var2843!4 var2551)
(declare-const var929!3 var68)
(declare-const var560!3 Int)
(define-const var400 Int (bv2nat (bvand ((_ int2bv 64) var2301) ((_ int2bv 64) var3373)))) ; Statement: $l6 = l2 & $l26 
(define-const var396 Int (ite (> var400 0) 1 (ite (< var400 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var396 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var802!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var802!7 var3982)
(declare-const var516 Int)
(declare-const var2490 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var802!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var802!8 var3982)
(declare-const var2380 String)
(define-const var3254 String var621-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var802!8 182 var3254 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var802!9 var3982)
(declare-const var237 Int)
(declare-const var3254!1 String)
(declare-const var754 String)
(declare-const var2831 String)
(declare-const var2905!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var802!9 167 var2687!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var802!10 var3982)
(declare-const var338!1 Int)
(declare-const var2687!3 var2353)
(assert true)
;(assert (visitLabel/567040954 var802!10 var1204!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var802!11 var3982)
(declare-const var1204!2 var2353)
(assert true)
;(assert (visitVarInsn/-915853820 var802!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var802!12 var3982)
(declare-const var516!1 Int)
(declare-const var2490!1 Int)
(define-const var1424 String var621-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var802!12 182 var1424 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var802!13 var3982)
(declare-const var237!1 Int)
(declare-const var1424!1 String)
(declare-const var1804 String)
(declare-const var3485 String)
(declare-const var2905!2 Int)
(assert true)
;(assert (visitLabel/567040954 var802!13 var2687!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var802!14 var3982)
(declare-const var2687!4 var2353)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3704=([java.lang.Class], java.lang.Object), var2353-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var3741_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3741=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3584=r7, var2551=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2843=r0, var68=com.alibaba.fastjson2.writer.FieldWriter, var929=r1, var491=i5, var560=i4, var1401=z0, var3992=$l1, var1118=$l0, var2301=l2, var3982=com.alibaba.fastjson2.internal.asm.MethodWriter, var802=r2, var2148=r3, var305=r4, var3704=java.lang.Object, var3947=i3, var2353=com.alibaba.fastjson2.internal.asm.Label, var1162=$r5, var2687=$r6, var1683=89, var1610=58, var2512=198, var3060=$r8, var1320=$z1, var1362=$r21, var118=$z4, var1148=$z5, var2905=0, var338=167, var1204=$r22, var200=$r23, var3628=com.alibaba.fastjson2.JSONWriter$Feature, var1612=$r24, var1563=$l18, var324=$r25, var3118=$l19, var3307=$l20, var3968=$r26, var311=$l21, var12=$l22, var1095=$r27, var2339=$l23, var3231=$l24, var2529=$r28, var3044=$l25, var3373=$l26, var3676=$r29, var2808=$l27, var1665=$l28, var1630=$l29, var3258=$b30, var1497=$r9, var400=$l6, var396=$b7, var516=25, var2490=1, var2380="", var621=com.alibaba.fastjson2.internal.asm.ASMUtils, var3254=$r31, var237=182, var754="writeString", var2831="(Ljava/lang/String;)V", var1424=$r32, var1804="writeStringNull", var3485="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3741, r7=var3584, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2551, r0=var2843, com.alibaba.fastjson2.writer.FieldWriter=var68, r1=var929, i5=var491, i4=var560, z0=var1401, $l1=var3992, $l0=var1118, l2=var2301, com.alibaba.fastjson2.internal.asm.MethodWriter=var3982, r2=var802, r3=var2148, r4=var305, java.lang.Object=var3704, i3=var3947, com.alibaba.fastjson2.internal.asm.Label=var2353, $r5=var1162, $r6=var2687, 89=var1683, 58=var1610, 198=var2512, $r8=var3060, $z1=var1320, $r21=var1362, $z4=var118, $z5=var1148, 0=var2905, 167=var338, $r22=var1204, $r23=var200, com.alibaba.fastjson2.JSONWriter$Feature=var3628, $r24=var1612, $l18=var1563, $r25=var324, $l19=var3118, $l20=var3307, $r26=var3968, $l21=var311, $l22=var12, $r27=var1095, $l23=var2339, $l24=var3231, $r28=var2529, $l25=var3044, $l26=var3373, $r29=var3676, $l27=var2808, $l28=var1665, $l29=var1630, $b30=var3258, $r9=var1497, $l6=var400, $b7=var396, 25=var516, 1=var2490, ""=var2380, com.alibaba.fastjson2.internal.asm.ASMUtils=var621, $r31=var3254, 182=var237, "writeString"=var754, "(Ljava/lang/String;)V"=var2831, $r32=var1424, "writeStringNull"=var1804, "()V"=var3485}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 8