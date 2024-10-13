(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1303 0)
(declare-sort var1407 0)
(declare-sort var2416 0)
(declare-sort var1544 0)
(declare-sort var1229 0)
(declare-sort var3496 0)
(declare-sort var494 0)
(declare-sort var456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var1407) Bool)
(declare-fun features/-2048851183 (var2416) Int)
(declare-fun objectFeatures/1968396404 (var1407) Int)
(declare-fun mw/1968396404 (var1407) var1544)
(declare-fun fieldClass/-2048851183 (var2416) ClassObject)
(declare-fun format/-2048851183 (var2416) String)
(declare-fun var/1427438936 (var1407 var1229) Int)
(declare-fun cast-from-ClassObject-to-var1229 (ClassObject) var1229)
(declare-fun var3496-init () var3496)
(declare-fun <init>/-2069075760 (var3496) void)
(declare-fun genGetObject/-2113871742 (var1303 var1407 var2416 Int Int) void)
(declare-fun visitInsn/-918620226 (var1544 Int) void)
(declare-fun visitVarInsn/-915853820 (var1544 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var1544 Int var3496) void)
(declare-fun gwFieldName/844239833 (var1303 var1407 var2416 Int) void)
(declare-fun var1303_gwString/1014499970 (var1407 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var1544 var3496) void)
(declare-fun mask/-2077367092 (var494) Int)
(declare-fun defaultValue/-2048851183 (var2416) var1229)
(declare-fun genIsDisabled/-1903259308 (var1407 Int var3496) void)
(declare-fun visitLdcInsn/1458008857 (var1544 String) void)
(declare-fun visitMethodInsn/-527702312 (var1544 Int String String String Bool) void)
(declare-const null-var1303 var1303)
(declare-const null-var1407 var1407)
(declare-const null-var2416 var2416)
(declare-const null-Int Int)
(declare-const var494-NullAsDefaultValue var494)
(declare-const var494-WriteNullNumberAsZero var494)
(declare-const var494-WriteNullBooleanAsFalse var494)
(declare-const var494-WriteNullListAsEmpty var494)
(declare-const var494-WriteNullStringAsEmpty var494)
(declare-const var494-WriteNulls var494)
(declare-const null-var1229 var1229)
(declare-const var494-NotWriteDefaultValue var494)
(declare-const var456-TYPE_JSON_WRITER String)
(declare-const var1896 var1303) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1896 null-var1303)))
(declare-const var3419 var1407) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3419 null-var1407)))
(declare-const var3674 var2416) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3674 null-var2416)))
(declare-const var1464 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var1464 null-Int)))
(declare-const var908 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var908 null-Int)))
(define-const var70 Bool (jsonb/1968396404 var3419)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var2112 Int (features/-2048851183 var3674)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var2566 Int (objectFeatures/1968396404 var3419)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var3857 Int (bv2nat (bvor ((_ int2bv 64) var2112) ((_ int2bv 64) var2566)))) ; Statement: l2 = $l1 | $l0 
(define-const var830 var1544 (mw/1968396404 var3419)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3245 ClassObject (fieldClass/-2048851183 var3674)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var18 String (format/-2048851183 var3674)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var160 Int (var/1427438936 var3419 (cast-from-ClassObject-to-var1229 var3245))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var263 var3496 var3496-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var263)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var263!1 var3496)
(define-const var638 var3496 var3496-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var638)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var638!1 var3496)
(assert true)
;(assert (genGetObject/-2113871742 var1896 var3419 var3674 var908 var1464)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var1896!1 var1303)
(declare-const var3419!1 var1407)
(declare-const var3674!1 var2416)
(declare-const var908!1 Int)
(declare-const var1464!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var830 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var830!1 var1544)
(declare-const var1325 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var830!1 58 var160)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var830!2 var1544)
(declare-const var2063 Int)
(declare-const var160!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var830!2 198 var263!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var830!3 var1544)
(declare-const var1661 Int)
(declare-const var263!2 var3496)
(assert true)
;(assert (gwFieldName/844239833 var1896!1 var3419!1 var3674!1 var908!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var1896!2 var1303)
(declare-const var3419!2 var1407)
(declare-const var3674!2 var2416)
(declare-const var908!2 Int)
(define-const var96 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var1280 Bool (= var96 var18)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var1280 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (= (ite var70 1 0) 0)) ; Cond: z0 == 0 
(define-const var1501 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var1303_gwString/1014499970 var3419!2 var1501 (ite (= 1 0) true false) var160!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var3419!3 var1407)
(declare-const var1501!1 Bool)
(declare-const var3372 Int)
(declare-const var160!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var830!3 167 var638!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var830!4 var1544)
(declare-const var983 Int)
(declare-const var638!2 var3496)
(assert true)
;(assert (visitLabel/567040954 var830!4 var263!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var830!5 var1544)
(declare-const var263!3 var3496)
(define-const var3206 var3496 var3496-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3206)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3206!1 var3496)
(define-const var1365 var3496 var3496-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1365)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1365!1 var3496)
(define-const var2830 var494 var494-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1722 Int (mask/-2077367092 var2830)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2775 var494 var494-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var3116 Int (mask/-2077367092 var2775)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1058 Int (bv2nat (bvor ((_ int2bv 64) var1722) ((_ int2bv 64) var3116)))) ; Statement: $l20 = $l18 | $l19 
(define-const var1056 var494 var494-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var775 Int (mask/-2077367092 var1056)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1115 Int (bv2nat (bvor ((_ int2bv 64) var1058) ((_ int2bv 64) var775)))) ; Statement: $l22 = $l20 | $l21 
(define-const var872 var494 var494-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var765 Int (mask/-2077367092 var872)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var63 Int (bv2nat (bvor ((_ int2bv 64) var1115) ((_ int2bv 64) var765)))) ; Statement: $l24 = $l22 | $l23 
(define-const var3591 var494 var494-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var540 Int (mask/-2077367092 var3591)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var994 Int (bv2nat (bvor ((_ int2bv 64) var63) ((_ int2bv 64) var540)))) ; Statement: $l26 = $l24 | $l25 
(define-const var3062 var494 var494-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var1330 Int (mask/-2077367092 var3062)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3264 Int (bv2nat (bvor ((_ int2bv 64) var1330) ((_ int2bv 64) var994)))) ; Statement: $l28 = $l27 | $l26 
(define-const var1866 Int (bv2nat (bvand ((_ int2bv 64) var3857) ((_ int2bv 64) var3264)))) ; Statement: $l29 = l2 & $l28 
(define-const var2748 Int (ite (> var1866 0) 1 (ite (< var1866 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var2748 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var830!5 var1365!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var830!6 var1544)
(declare-const var1365!2 var3496)
(define-const var3356 var1229 (defaultValue/-2048851183 var3674!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (not (= var3356 null-var1229)))) ; Negate: Cond: $r9 != null  
(define-const var2822 var494 var494-NotWriteDefaultValue) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue> 
(define-const var3267 Int (mask/-2077367092 var2822)) ; Statement: $l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(assert true)
;(assert (genIsDisabled/-1903259308 var3419!3 var3267 var638!2)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6) 

(declare-const var3419!4 var1407)
(declare-const var3267!1 Int)
(declare-const var638!3 var3496)
(assert true) ; Non Conditional
(assert true)
;(assert (gwFieldName/844239833 var1896!2 var3419!4 var3674!2 var908!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var1896!3 var1303)
(declare-const var3419!5 var1407)
(declare-const var3674!3 var2416)
(declare-const var908!3 Int)
(define-const var2274 Int (bv2nat (bvand ((_ int2bv 64) var3857) ((_ int2bv 64) var994)))) ; Statement: $l6 = l2 & $l26 
(define-const var326 Int (ite (> var2274 0) 1 (ite (< var2274 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var326 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var830!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var830!7 var1544)
(declare-const var2369 Int)
(declare-const var102 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var830!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var830!8 var1544)
(declare-const var3111 String)
(define-const var54 String var456-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var830!8 182 var54 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var830!9 var1544)
(declare-const var2069 Int)
(declare-const var54!1 String)
(declare-const var1324 String)
(declare-const var3639 String)
(declare-const var3372!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var830!9 167 var638!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var830!10 var1544)
(declare-const var983!1 Int)
(declare-const var638!4 var3496)
(assert true)
;(assert (visitLabel/567040954 var830!10 var3206!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var830!11 var1544)
(declare-const var3206!2 var3496)
(assert true)
;(assert (visitVarInsn/-915853820 var830!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var830!12 var1544)
(declare-const var2369!1 Int)
(declare-const var102!1 Int)
(define-const var1495 String var456-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var830!12 182 var1495 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var830!13 var1544)
(declare-const var2069!1 Int)
(declare-const var1495!1 String)
(declare-const var2024 String)
(declare-const var3542 String)
(declare-const var3372!2 Int)
(assert true)
;(assert (visitLabel/567040954 var830!13 var638!4)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var830!14 var1544)
(declare-const var638!5 var3496)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var1229=([java.lang.Class], java.lang.Object), var3496-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var1303_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), genIsDisabled/-1903259308=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, long, com.alibaba.fastjson2.internal.asm.Label], void), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1303=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1896=r7, var1407=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3419=r0, var2416=com.alibaba.fastjson2.writer.FieldWriter, var3674=r1, var1464=i5, var908=i4, var70=z0, var2112=$l1, var2566=$l0, var3857=l2, var1544=com.alibaba.fastjson2.internal.asm.MethodWriter, var830=r2, var3245=r3, var18=r4, var1229=java.lang.Object, var160=i3, var3496=com.alibaba.fastjson2.internal.asm.Label, var263=$r5, var638=$r6, var1325=89, var2063=58, var1661=198, var96=$r8, var1280=$z1, var1501=$z5, var3372=0, var983=167, var3206=$r22, var1365=$r23, var494=com.alibaba.fastjson2.JSONWriter$Feature, var2830=$r24, var1722=$l18, var2775=$r25, var3116=$l19, var1058=$l20, var1056=$r26, var775=$l21, var1115=$l22, var872=$r27, var765=$l23, var63=$l24, var3591=$r28, var540=$l25, var994=$l26, var3062=$r29, var1330=$l27, var3264=$l28, var1866=$l29, var2748=$b30, var3356=$r9, var2822=$r17, var3267=$l12, var2274=$l6, var326=$b7, var2369=25, var102=1, var3111="", var456=com.alibaba.fastjson2.internal.asm.ASMUtils, var54=$r31, var2069=182, var1324="writeString", var3639="(Ljava/lang/String;)V", var1495=$r32, var2024="writeStringNull", var3542="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1303, r7=var1896, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1407, r0=var3419, com.alibaba.fastjson2.writer.FieldWriter=var2416, r1=var3674, i5=var1464, i4=var908, z0=var70, $l1=var2112, $l0=var2566, l2=var3857, com.alibaba.fastjson2.internal.asm.MethodWriter=var1544, r2=var830, r3=var3245, r4=var18, java.lang.Object=var1229, i3=var160, com.alibaba.fastjson2.internal.asm.Label=var3496, $r5=var263, $r6=var638, 89=var1325, 58=var2063, 198=var1661, $r8=var96, $z1=var1280, $z5=var1501, 0=var3372, 167=var983, $r22=var3206, $r23=var1365, com.alibaba.fastjson2.JSONWriter$Feature=var494, $r24=var2830, $l18=var1722, $r25=var2775, $l19=var3116, $l20=var1058, $r26=var1056, $l21=var775, $l22=var1115, $r27=var872, $l23=var765, $l24=var63, $r28=var3591, $l25=var540, $l26=var994, $r29=var3062, $l27=var1330, $l28=var3264, $l29=var1866, $b30=var2748, $r9=var3356, $r17=var2822, $l12=var3267, $l6=var2274, $b7=var326, 25=var2369, 1=var102, ""=var3111, com.alibaba.fastjson2.internal.asm.ASMUtils=var456, $r31=var54, 182=var2069, "writeString"=var1324, "(Ljava/lang/String;)V"=var3639, $r32=var1495, "writeStringNull"=var2024, "()V"=var3542}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NotWriteDefaultValue>;	$l12 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: void genIsDisabled(long,com.alibaba.fastjson2.internal.asm.Label)>($l12, $r6);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 8