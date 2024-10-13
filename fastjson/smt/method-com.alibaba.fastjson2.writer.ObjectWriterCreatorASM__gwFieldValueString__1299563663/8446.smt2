(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2552 0)
(declare-sort var1227 0)
(declare-sort var1804 0)
(declare-sort var579 0)
(declare-sort var1197 0)
(declare-sort var3370 0)
(declare-sort var3804 0)
(declare-sort var1642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var1227) Bool)
(declare-fun features/-2048851183 (var1804) Int)
(declare-fun objectFeatures/1968396404 (var1227) Int)
(declare-fun mw/1968396404 (var1227) var579)
(declare-fun fieldClass/-2048851183 (var1804) ClassObject)
(declare-fun format/-2048851183 (var1804) String)
(declare-fun var/1427438936 (var1227 var1197) Int)
(declare-fun cast-from-ClassObject-to-var1197 (ClassObject) var1197)
(declare-fun var3370-init () var3370)
(declare-fun <init>/-2069075760 (var3370) void)
(declare-fun genGetObject/-2113871742 (var2552 var1227 var1804 Int Int) void)
(declare-fun visitInsn/-918620226 (var579 Int) void)
(declare-fun visitVarInsn/-915853820 (var579 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var579 Int var3370) void)
(declare-fun gwFieldName/844239833 (var2552 var1227 var1804 Int) void)
(declare-fun visitMethodInsn/-527702312 (var579 Int String String String Bool) void)
(declare-fun var2552_gwString/1014499970 (var1227 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var579 var3370) void)
(declare-fun mask/-2077367092 (var3804) Int)
(declare-fun defaultValue/-2048851183 (var1804) var1197)
(declare-fun visitLdcInsn/1458008857 (var579 String) void)
(declare-const null-var2552 var2552)
(declare-const null-var1227 var1227)
(declare-const null-var1804 var1804)
(declare-const null-Int Int)
(declare-const var3804-NullAsDefaultValue var3804)
(declare-const var3804-WriteNullNumberAsZero var3804)
(declare-const var3804-WriteNullBooleanAsFalse var3804)
(declare-const var3804-WriteNullListAsEmpty var3804)
(declare-const var3804-WriteNullStringAsEmpty var3804)
(declare-const var3804-WriteNulls var3804)
(declare-const null-var1197 var1197)
(declare-const var1642-TYPE_JSON_WRITER String)
(declare-const var1741 var2552) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1741 null-var2552)))
(declare-const var271 var1227) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var271 null-var1227)))
(declare-const var1957 var1804) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1957 null-var1804)))
(declare-const var1081 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var1081 null-Int)))
(declare-const var2467 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var2467 null-Int)))
(define-const var3562 Bool (jsonb/1968396404 var271)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var891 Int (features/-2048851183 var1957)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var1389 Int (objectFeatures/1968396404 var271)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var1574 Int (bv2nat (bvor ((_ int2bv 64) var891) ((_ int2bv 64) var1389)))) ; Statement: l2 = $l1 | $l0 
(define-const var74 var579 (mw/1968396404 var271)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var746 ClassObject (fieldClass/-2048851183 var1957)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var1751 String (format/-2048851183 var1957)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var743 Int (var/1427438936 var271 (cast-from-ClassObject-to-var1197 var746))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var3589 var3370 var3370-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3589)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3589!1 var3370)
(define-const var1636 var3370 var3370-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1636)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1636!1 var3370)
(assert true)
;(assert (genGetObject/-2113871742 var1741 var271 var1957 var2467 var1081)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var1741!1 var2552)
(declare-const var271!1 var1227)
(declare-const var1957!1 var1804)
(declare-const var2467!1 Int)
(declare-const var1081!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var74 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var74!1 var579)
(declare-const var1633 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var74!1 58 var743)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var74!2 var579)
(declare-const var2479 Int)
(declare-const var743!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var74!2 198 var3589!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var74!3 var579)
(declare-const var3343 Int)
(declare-const var3589!2 var3370)
(assert true)
;(assert (gwFieldName/844239833 var1741!1 var271!1 var1957!1 var2467!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var1741!2 var2552)
(declare-const var271!2 var1227)
(declare-const var1957!2 var1804)
(declare-const var2467!2 Int)
(define-const var2774 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var2089 Bool (= var2774 var1751)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var2089 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var74!3 25 var743!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3) 

(declare-const var74!4 var579)
(declare-const var1281 Int)
(declare-const var743!2 Int)
(assert true)
;(assert (visitMethodInsn/-527702312 var74!4 182 "java/lang/String" "trim" "()Ljava/lang/String;" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0) 

(declare-const var74!5 var579)
(declare-const var2559 Int)
(declare-const var1605 String)
(declare-const var2320 String)
(declare-const var689 String)
(declare-const var3937 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var74!5 58 var743!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var74!6 var579)
(declare-const var2479!1 Int)
(declare-const var743!3 Int)
(assert true) ; Non Conditional
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var3562 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3717 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var203 Bool (= var3717 var1751)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (not (= (ite var203 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var92 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)] 
(assert true) ; Non Conditional
;(assert (var2552_gwString/1014499970 var271!2 var92 (ite (= 1 0) true false) var743!3)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var271!3 var1227)
(declare-const var92!1 Bool)
(declare-const var3937!1 Int)
(declare-const var743!4 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var74!6 167 var1636!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var74!7 var579)
(declare-const var380 Int)
(declare-const var1636!2 var3370)
(assert true)
;(assert (visitLabel/567040954 var74!7 var3589!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var74!8 var579)
(declare-const var3589!3 var3370)
(define-const var2367 var3370 var3370-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2367)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2367!1 var3370)
(define-const var3649 var3370 var3370-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3649)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3649!1 var3370)
(define-const var1401 var3804 var3804-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var115 Int (mask/-2077367092 var1401)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1390 var3804 var3804-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var1261 Int (mask/-2077367092 var1390)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var392 Int (bv2nat (bvor ((_ int2bv 64) var115) ((_ int2bv 64) var1261)))) ; Statement: $l20 = $l18 | $l19 
(define-const var2485 var3804 var3804-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var2889 Int (mask/-2077367092 var2485)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1621 Int (bv2nat (bvor ((_ int2bv 64) var392) ((_ int2bv 64) var2889)))) ; Statement: $l22 = $l20 | $l21 
(define-const var3757 var3804 var3804-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var1743 Int (mask/-2077367092 var3757)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2178 Int (bv2nat (bvor ((_ int2bv 64) var1621) ((_ int2bv 64) var1743)))) ; Statement: $l24 = $l22 | $l23 
(define-const var1078 var3804 var3804-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var654 Int (mask/-2077367092 var1078)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var523 Int (bv2nat (bvor ((_ int2bv 64) var2178) ((_ int2bv 64) var654)))) ; Statement: $l26 = $l24 | $l25 
(define-const var55 var3804 var3804-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var456 Int (mask/-2077367092 var55)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var924 Int (bv2nat (bvor ((_ int2bv 64) var456) ((_ int2bv 64) var523)))) ; Statement: $l28 = $l27 | $l26 
(define-const var3164 Int (bv2nat (bvand ((_ int2bv 64) var1574) ((_ int2bv 64) var924)))) ; Statement: $l29 = l2 & $l28 
(define-const var3357 Int (ite (> var3164 0) 1 (ite (< var3164 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var3357 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var74!8 var3649!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var74!9 var579)
(declare-const var3649!2 var3370)
(define-const var1724 var1197 (defaultValue/-2048851183 var1957!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var1724 null-var1197))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var1741!2 var271!3 var1957!2 var2467!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var1741!3 var2552)
(declare-const var271!4 var1227)
(declare-const var1957!3 var1804)
(declare-const var2467!3 Int)
(define-const var3083 Int (bv2nat (bvand ((_ int2bv 64) var1574) ((_ int2bv 64) var523)))) ; Statement: $l6 = l2 & $l26 
(define-const var1733 Int (ite (> var3083 0) 1 (ite (< var3083 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var1733 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var74!9 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var74!10 var579)
(declare-const var1281!1 Int)
(declare-const var1437 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var74!10 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var74!11 var579)
(declare-const var738 String)
(define-const var2526 String var1642-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var74!11 182 var2526 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var74!12 var579)
(declare-const var2559!1 Int)
(declare-const var2526!1 String)
(declare-const var1127 String)
(declare-const var3901 String)
(declare-const var3937!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var74!12 167 var1636!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var74!13 var579)
(declare-const var380!1 Int)
(declare-const var1636!3 var3370)
(assert true)
;(assert (visitLabel/567040954 var74!13 var2367!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var74!14 var579)
(declare-const var2367!2 var3370)
(assert true)
;(assert (visitVarInsn/-915853820 var74!14 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var74!15 var579)
(declare-const var1281!2 Int)
(declare-const var1437!1 Int)
(define-const var3674 String var1642-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var74!15 182 var3674 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var74!16 var579)
(declare-const var2559!2 Int)
(declare-const var3674!1 String)
(declare-const var1446 String)
(declare-const var1500 String)
(declare-const var3937!3 Int)
(assert true)
;(assert (visitLabel/567040954 var74!16 var1636!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var74!17 var579)
(declare-const var1636!4 var3370)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1197=([java.lang.Class], java.lang.Object), var3370-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var2552_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void)}
; {var2552=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1741=r7, var1227=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var271=r0, var1804=com.alibaba.fastjson2.writer.FieldWriter, var1957=r1, var1081=i5, var2467=i4, var3562=z0, var891=$l1, var1389=$l0, var1574=l2, var579=com.alibaba.fastjson2.internal.asm.MethodWriter, var74=r2, var746=r3, var1751=r4, var1197=java.lang.Object, var743=i3, var3370=com.alibaba.fastjson2.internal.asm.Label, var3589=$r5, var1636=$r6, var1633=89, var2479=58, var3343=198, var2774=$r8, var2089=$z1, var1281=25, var2559=182, var1605="java/lang/String", var2320="trim", var689="()Ljava/lang/String;", var3937=0, var3717=$r21, var203=$z4, var92=$z5, var380=167, var2367=$r22, var3649=$r23, var3804=com.alibaba.fastjson2.JSONWriter$Feature, var1401=$r24, var115=$l18, var1390=$r25, var1261=$l19, var392=$l20, var2485=$r26, var2889=$l21, var1621=$l22, var3757=$r27, var1743=$l23, var2178=$l24, var1078=$r28, var654=$l25, var523=$l26, var55=$r29, var456=$l27, var924=$l28, var3164=$l29, var3357=$b30, var1724=$r9, var3083=$l6, var1733=$b7, var1437=1, var738="", var1642=com.alibaba.fastjson2.internal.asm.ASMUtils, var2526=$r31, var1127="writeString", var3901="(Ljava/lang/String;)V", var3674=$r32, var1446="writeStringNull", var1500="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2552, r7=var1741, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1227, r0=var271, com.alibaba.fastjson2.writer.FieldWriter=var1804, r1=var1957, i5=var1081, i4=var2467, z0=var3562, $l1=var891, $l0=var1389, l2=var1574, com.alibaba.fastjson2.internal.asm.MethodWriter=var579, r2=var74, r3=var746, r4=var1751, java.lang.Object=var1197, i3=var743, com.alibaba.fastjson2.internal.asm.Label=var3370, $r5=var3589, $r6=var1636, 89=var1633, 58=var2479, 198=var3343, $r8=var2774, $z1=var2089, 25=var1281, 182=var2559, "java/lang/String"=var1605, "trim"=var2320, "()Ljava/lang/String;"=var689, 0=var3937, $r21=var3717, $z4=var203, $z5=var92, 167=var380, $r22=var2367, $r23=var3649, com.alibaba.fastjson2.JSONWriter$Feature=var3804, $r24=var1401, $l18=var115, $r25=var1390, $l19=var1261, $l20=var392, $r26=var2485, $l21=var2889, $l22=var1621, $r27=var3757, $l23=var1743, $l24=var2178, $r28=var1078, $l25=var654, $l26=var523, $r29=var55, $l27=var456, $l28=var924, $l29=var3164, $b30=var3357, $r9=var1724, $l6=var3083, $b7=var1733, 1=var1437, ""=var738, com.alibaba.fastjson2.internal.asm.ASMUtils=var1642, $r31=var2526, "writeString"=var1127, "(Ljava/lang/String;)V"=var3901, $r32=var3674, "writeStringNull"=var1446, "()V"=var1500}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, "java/lang/String", "trim", "()Ljava/lang/String;", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 1;	goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)];	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 9