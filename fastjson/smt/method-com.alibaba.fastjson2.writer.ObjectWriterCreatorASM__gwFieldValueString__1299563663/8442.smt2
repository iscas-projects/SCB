(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var312 0)
(declare-sort var2453 0)
(declare-sort var3162 0)
(declare-sort var1244 0)
(declare-sort var3303 0)
(declare-sort var3819 0)
(declare-sort var1610 0)
(declare-sort var3758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jsonb/1968396404 (var2453) Bool)
(declare-fun features/-2048851183 (var3162) Int)
(declare-fun objectFeatures/1968396404 (var2453) Int)
(declare-fun mw/1968396404 (var2453) var1244)
(declare-fun fieldClass/-2048851183 (var3162) ClassObject)
(declare-fun format/-2048851183 (var3162) String)
(declare-fun var/1427438936 (var2453 var3303) Int)
(declare-fun cast-from-ClassObject-to-var3303 (ClassObject) var3303)
(declare-fun var3819-init () var3819)
(declare-fun <init>/-2069075760 (var3819) void)
(declare-fun genGetObject/-2113871742 (var312 var2453 var3162 Int Int) void)
(declare-fun visitInsn/-918620226 (var1244 Int) void)
(declare-fun visitVarInsn/-915853820 (var1244 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var1244 Int var3819) void)
(declare-fun gwFieldName/844239833 (var312 var2453 var3162 Int) void)
(declare-fun var312_gwString/1014499970 (var2453 Bool Bool Int) void)
(declare-fun visitLabel/567040954 (var1244 var3819) void)
(declare-fun mask/-2077367092 (var1610) Int)
(declare-fun defaultValue/-2048851183 (var3162) var3303)
(declare-fun visitLdcInsn/1458008857 (var1244 String) void)
(declare-fun visitMethodInsn/-527702312 (var1244 Int String String String Bool) void)
(declare-const null-var312 var312)
(declare-const null-var2453 var2453)
(declare-const null-var3162 var3162)
(declare-const null-Int Int)
(declare-const var1610-NullAsDefaultValue var1610)
(declare-const var1610-WriteNullNumberAsZero var1610)
(declare-const var1610-WriteNullBooleanAsFalse var1610)
(declare-const var1610-WriteNullListAsEmpty var1610)
(declare-const var1610-WriteNullStringAsEmpty var1610)
(declare-const var1610-WriteNulls var1610)
(declare-const null-var3303 var3303)
(declare-const var3758-TYPE_JSON_WRITER String)
(declare-const var2890 var312) ; Statement: r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2890 null-var312)))
(declare-const var3424 var2453) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3424 null-var2453)))
(declare-const var409 var3162) ; Statement: r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var409 null-var3162)))
(declare-const var454 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var454 null-Int)))
(declare-const var2646 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var2646 null-Int)))
(define-const var1257 Bool (jsonb/1968396404 var3424)) ; Statement: z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
(define-const var3336 Int (features/-2048851183 var409)) ; Statement: $l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var3046 Int (objectFeatures/1968396404 var3424)) ; Statement: $l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures> 
(define-const var2287 Int (bv2nat (bvor ((_ int2bv 64) var3336) ((_ int2bv 64) var3046)))) ; Statement: l2 = $l1 | $l0 
(define-const var2014 var1244 (mw/1968396404 var3424)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2110 ClassObject (fieldClass/-2048851183 var409)) ; Statement: r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2740 String (format/-2048851183 var409)) ; Statement: r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(assert true)
(define-const var112 Int (var/1427438936 var3424 (cast-from-ClassObject-to-var3303 var2110))) ; Statement: i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3) 
(define-const var162 var3819 var3819-init) ; Statement: $r5 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var162)) ; Statement: specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var162!1 var3819)
(define-const var3161 var3819 var3819-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3161)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3161!1 var3819)
(assert true)
;(assert (genGetObject/-2113871742 var2890 var3424 var409 var2646 var454)) ; Statement: virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5) 

(declare-const var2890!1 var312)
(declare-const var3424!1 var2453)
(declare-const var409!1 var3162)
(declare-const var2646!1 Int)
(declare-const var454!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2014 89)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var2014!1 var1244)
(declare-const var3761 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2014!1 58 var112)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3) 

(declare-const var2014!2 var1244)
(declare-const var3411 Int)
(declare-const var112!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2014!2 198 var162!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5) 

(declare-const var2014!3 var1244)
(declare-const var2756 Int)
(declare-const var162!2 var3819)
(assert true)
;(assert (gwFieldName/844239833 var2890!1 var3424!1 var409!1 var2646!1)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2890!2 var312)
(declare-const var3424!2 var2453)
(declare-const var409!2 var3162)
(declare-const var2646!2 Int)
(define-const var3071 String "trim") ; Statement: $r8 = "trim" 
(assert true)
(define-const var605 Bool (= var3071 var2740)) ; Statement: $z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var605 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if z0 == 0 goto $z5 = 0 
(assert (not (= (ite var1257 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3332 String "symbol") ; Statement: $r21 = "symbol" 
(assert true)
(define-const var1829 Bool (= var3332 var2740)) ; Statement: $z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z4 == 0 goto $z5 = 0 
(assert (not (= (ite var1829 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1567 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)] 
(assert true) ; Non Conditional
;(assert (var312_gwString/1014499970 var3424!2 var1567 (ite (= 1 0) true false) var112!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3) 

(declare-const var3424!3 var2453)
(declare-const var1567!1 Bool)
(declare-const var556 Int)
(declare-const var112!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2014!3 167 var3161!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2014!4 var1244)
(declare-const var711 Int)
(declare-const var3161!2 var3819)
(assert true)
;(assert (visitLabel/567040954 var2014!4 var162!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5) 

(declare-const var2014!5 var1244)
(declare-const var162!3 var3819)
(define-const var2321 var3819 var3819-init) ; Statement: $r22 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2321)) ; Statement: specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2321!1 var3819)
(define-const var2691 var3819 var3819-init) ; Statement: $r23 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2691)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2691!1 var3819)
(define-const var2647 var1610 var1610-NullAsDefaultValue) ; Statement: $r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue> 
(define-const var1096 Int (mask/-2077367092 var2647)) ; Statement: $l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var438 var1610 var1610-WriteNullNumberAsZero) ; Statement: $r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero> 
(define-const var784 Int (mask/-2077367092 var438)) ; Statement: $l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2348 Int (bv2nat (bvor ((_ int2bv 64) var1096) ((_ int2bv 64) var784)))) ; Statement: $l20 = $l18 | $l19 
(define-const var87 var1610 var1610-WriteNullBooleanAsFalse) ; Statement: $r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse> 
(define-const var1314 Int (mask/-2077367092 var87)) ; Statement: $l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var30 Int (bv2nat (bvor ((_ int2bv 64) var2348) ((_ int2bv 64) var1314)))) ; Statement: $l22 = $l20 | $l21 
(define-const var1903 var1610 var1610-WriteNullListAsEmpty) ; Statement: $r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty> 
(define-const var3232 Int (mask/-2077367092 var1903)) ; Statement: $l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3199 Int (bv2nat (bvor ((_ int2bv 64) var30) ((_ int2bv 64) var3232)))) ; Statement: $l24 = $l22 | $l23 
(define-const var3933 var1610 var1610-WriteNullStringAsEmpty) ; Statement: $r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty> 
(define-const var2318 Int (mask/-2077367092 var3933)) ; Statement: $l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3140 Int (bv2nat (bvor ((_ int2bv 64) var3199) ((_ int2bv 64) var2318)))) ; Statement: $l26 = $l24 | $l25 
(define-const var103 var1610 var1610-WriteNulls) ; Statement: $r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls> 
(define-const var2078 Int (mask/-2077367092 var103)) ; Statement: $l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2404 Int (bv2nat (bvor ((_ int2bv 64) var2078) ((_ int2bv 64) var3140)))) ; Statement: $l28 = $l27 | $l26 
(define-const var3586 Int (bv2nat (bvand ((_ int2bv 64) var2287) ((_ int2bv 64) var2404)))) ; Statement: $l29 = l2 & $l28 
(define-const var1958 Int (ite (> var3586 0) 1 (ite (< var3586 0) (- 1) 0))) ; Statement: $b30 = $l29 cmp 0L 
 ; Statement: if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 
(assert (not (= var1958 0))) ; Cond: $b30 != 0 
(assert true)
;(assert (visitLabel/567040954 var2014!5 var2691!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23) 

(declare-const var2014!6 var1244)
(declare-const var2691!2 var3819)
(define-const var2144 var3303 (defaultValue/-2048851183 var409!2)) ; Statement: $r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 
(assert (not (= var2144 null-var3303))) ; Cond: $r9 != null 
(assert true)
;(assert (gwFieldName/844239833 var2890!2 var3424!3 var409!2 var2646!2)) ; Statement: specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4) 

(declare-const var2890!3 var312)
(declare-const var3424!4 var2453)
(declare-const var409!3 var3162)
(declare-const var2646!3 Int)
(define-const var3218 Int (bv2nat (bvand ((_ int2bv 64) var2287) ((_ int2bv 64) var3140)))) ; Statement: $l6 = l2 & $l26 
(define-const var3156 Int (ite (> var3218 0) 1 (ite (< var3218 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var3156 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var2014!6 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2014!7 var1244)
(declare-const var2216 Int)
(declare-const var2098 Int)
(assert true)
;(assert (visitLdcInsn/1458008857 var2014!7 "")) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("") 

(declare-const var2014!8 var1244)
(declare-const var3980 String)
(define-const var1860 String var3758-TYPE_JSON_WRITER) ; Statement: $r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2014!8 182 var1860 "writeString" "(Ljava/lang/String;)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0) 

(declare-const var2014!9 var1244)
(declare-const var1338 Int)
(declare-const var1860!1 String)
(declare-const var2719 String)
(declare-const var1205 String)
(declare-const var556!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2014!9 167 var3161!2)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6) 

(declare-const var2014!10 var1244)
(declare-const var711!1 Int)
(declare-const var3161!3 var3819)
(assert true)
;(assert (visitLabel/567040954 var2014!10 var2321!1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22) 

(declare-const var2014!11 var1244)
(declare-const var2321!2 var3819)
(assert true)
;(assert (visitVarInsn/-915853820 var2014!11 25 1)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2014!12 var1244)
(declare-const var2216!1 Int)
(declare-const var2098!1 Int)
(define-const var2284 String var3758-TYPE_JSON_WRITER) ; Statement: $r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2014!12 182 var2284 "writeStringNull" "()V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0) 

(declare-const var2014!13 var1244)
(declare-const var1338!1 Int)
(declare-const var2284!1 String)
(declare-const var3146 String)
(declare-const var397 String)
(declare-const var556!2 Int)
(assert true)
;(assert (visitLabel/567040954 var2014!13 var3161!3)) ; Statement: virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var2014!14 var1244)
(declare-const var3161!4 var3819)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), objectFeatures/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], long), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var3303=([java.lang.Class], java.lang.Object), var3819-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), var312_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLdcInsn/1458008857=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var312=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2890=r7, var2453=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3424=r0, var3162=com.alibaba.fastjson2.writer.FieldWriter, var409=r1, var454=i5, var2646=i4, var1257=z0, var3336=$l1, var3046=$l0, var2287=l2, var1244=com.alibaba.fastjson2.internal.asm.MethodWriter, var2014=r2, var2110=r3, var2740=r4, var3303=java.lang.Object, var112=i3, var3819=com.alibaba.fastjson2.internal.asm.Label, var162=$r5, var3161=$r6, var3761=89, var3411=58, var2756=198, var3071=$r8, var605=$z1, var3332=$r21, var1829=$z4, var1567=$z5, var556=0, var711=167, var2321=$r22, var2691=$r23, var1610=com.alibaba.fastjson2.JSONWriter$Feature, var2647=$r24, var1096=$l18, var438=$r25, var784=$l19, var2348=$l20, var87=$r26, var1314=$l21, var30=$l22, var1903=$r27, var3232=$l23, var3199=$l24, var3933=$r28, var2318=$l25, var3140=$l26, var103=$r29, var2078=$l27, var2404=$l28, var3586=$l29, var1958=$b30, var2144=$r9, var3218=$l6, var3156=$b7, var2216=25, var2098=1, var3980="", var3758=com.alibaba.fastjson2.internal.asm.ASMUtils, var1860=$r31, var1338=182, var2719="writeString", var1205="(Ljava/lang/String;)V", var2284=$r32, var3146="writeStringNull", var397="()V"}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var312, r7=var2890, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var2453, r0=var3424, com.alibaba.fastjson2.writer.FieldWriter=var3162, r1=var409, i5=var454, i4=var2646, z0=var1257, $l1=var3336, $l0=var3046, l2=var2287, com.alibaba.fastjson2.internal.asm.MethodWriter=var1244, r2=var2014, r3=var2110, r4=var2740, java.lang.Object=var3303, i3=var112, com.alibaba.fastjson2.internal.asm.Label=var3819, $r5=var162, $r6=var3161, 89=var3761, 58=var3411, 198=var2756, $r8=var3071, $z1=var605, $r21=var3332, $z4=var1829, $z5=var1567, 0=var556, 167=var711, $r22=var2321, $r23=var2691, com.alibaba.fastjson2.JSONWriter$Feature=var1610, $r24=var2647, $l18=var1096, $r25=var438, $l19=var784, $l20=var2348, $r26=var87, $l21=var1314, $l22=var30, $r27=var1903, $l23=var3232, $l24=var3199, $r28=var3933, $l25=var2318, $l26=var3140, $r29=var103, $l27=var2078, $l28=var2404, $l29=var3586, $b30=var1958, $r9=var2144, $l6=var3218, $b7=var3156, 25=var2216, 1=var2098, ""=var3980, com.alibaba.fastjson2.internal.asm.ASMUtils=var3758, $r31=var1860, 182=var1338, "writeString"=var2719, "(Ljava/lang/String;)V"=var1205, $r32=var2284, "writeStringNull"=var3146, "()V"=var397}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r1 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i5 := @parameter2: int;	i4 := @parameter3: int;	z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	$l1 = r1.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$l0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: long objectFeatures>;	l2 = $l1 | $l0;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	i3 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>(r3);	$r5 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r5.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r1, i4, i5);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(198, $r5);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$r8 = "trim";	$z1 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto (branch);	if z0 == 0 goto $z5 = 0;	$r21 = "symbol";	$z4 = virtualinvoke $r21.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z4 == 0 goto $z5 = 0;	$z5 = 1;	goto [?= staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3)];	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, $z5, 0, i3);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r5);	$r22 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r22.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r23 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r23.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r24 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature NullAsDefaultValue>;	$l18 = $r24.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r25 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullNumberAsZero>;	$l19 = $r25.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l20 = $l18 | $l19;	$r26 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullBooleanAsFalse>;	$l21 = $r26.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l22 = $l20 | $l21;	$r27 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullListAsEmpty>;	$l23 = $r27.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l24 = $l22 | $l23;	$r28 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNullStringAsEmpty>;	$l25 = $r28.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l26 = $l24 | $l25;	$r29 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNulls>;	$l27 = $r29.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l28 = $l27 | $l26;	$l29 = l2 & $l28;	$b30 = $l29 cmp 0L;	if $b30 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r23);	$r9 = r1.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	specialinvoke r7.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r1, i4);	$l6 = l2 & $l26;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.String)>("");	$r31 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r31, "writeString", "(Ljava/lang/String;)V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r6);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r22);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r32 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r32, "writeStringNull", "()V", 0);	virtualinvoke r2.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	return
;block_num 8