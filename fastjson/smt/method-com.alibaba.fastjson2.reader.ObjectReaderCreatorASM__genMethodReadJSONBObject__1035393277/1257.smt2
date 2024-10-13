(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort var756 0)
(declare-sort var2378 0)
(declare-sort var3292 0)
(declare-sort var1574 0)
(declare-sort var3582 0)
(declare-sort var351 0)
(declare-sort var3695 0)
(declare-sort var2562 0)
(declare-sort var2251 0)
(declare-sort var2953 0)
(declare-sort var1491 0)
(declare-sort var1857 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun objectClass/-356097418 (var756) ClassObject)
(declare-fun mask/1918454044 (var3695) Int)
(declare-fun visitMethod/328969596 (var3582 Int String String Int) var2562)
(declare-fun genCheckAutoType/1507281336 (var1764 String var2562 Int Int Int Int Int) void)
(declare-fun var2251-init () var2251)
(declare-fun <init>/-201242697 (var2251) void)
(declare-fun var2953-init () var2953)
(declare-fun <init>/-2069075760 (var2953) void)
(declare-fun visitVarInsn/-915853820 (var2562 Int Int) void)
(declare-fun visitMethodInsn/-527702312 (var2562 Int String String String Bool) void)
(declare-fun visitJumpInsn/413071865 (var2562 Int var2953) void)
(declare-fun visitInsn/-918620226 (var2562 Int) void)
(declare-fun visitLabel/567040954 (var2562 var2953) void)
(declare-fun creator/1914013406 (var3694) var1857)
(declare-fun cast-from-var351-to-var3694 (var351) var3694)
(declare-fun genCreateObject/-1744014466 (var1764 var2562 var756 String String Int Bool var2378 var1857) void)
(declare-fun getLength-Arr-var1574-1 ((Array Int var1574)) Int)
(declare-fun visitLdcInsn/868177477 (var2562 Int) void)
(declare-fun visitFieldInsn/1331737383 (var2562 Int String String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitIincInsn/874918902 (var2562 Int Int) void)
(declare-fun visitMaxs/516991312 (var2562 Int Int) void)
(declare-const null-var1764 var1764)
(declare-const null-var756 var756)
(declare-const null-var2378 var2378)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var1574__ (Array Int var1574))
(declare-const null-var3582 var3582)
(declare-const null-var351 var351)
(declare-const var3695-FieldBased var3695)
(declare-const var1764-METHOD_DESC_READ_OBJECT String)
(declare-const var1491-TYPE_JSON_READER String)
(declare-const null-ClassObject ClassObject)
(declare-const var1491-TYPE_OBJECT_READER_ADAPTER String)
(declare-const var1764-METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0 String)
(declare-const var1491-DESC_JSON_READER String)
(declare-const var3695-SupportSmartMatch var3695)
(declare-const var1764-METHOD_DESC_PROCESS_EXTRA String)
(declare-const var2461 var1764) ; Statement: r5 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM 
(assert (not (= var2461 null-var1764)))
(declare-const var3214 var756) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext 
(assert (not (= var3214 null-var756)))
(declare-const var2875 var2378) ; Statement: r11 := @parameter1: java.lang.reflect.Constructor 
(assert (not (= var2875 null-var2378)))
(declare-const var2932 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2932 null-Int)))
(declare-const var1785 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var1785 null-String)))
(declare-const var1462 (Array Int var1574)) ; Statement: r13 := @parameter4: com.alibaba.fastjson2.reader.FieldReader[] 
(assert (not (= var1462 null-__Array__Int__var1574__)))
(declare-const var3014 var3582) ; Statement: r3 := @parameter5: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var3014 null-var3582)))
(declare-const var3868 String) ; Statement: r6 := @parameter6: java.lang.String 
(assert (not (= var3868 null-String)))
(declare-const var3576 var351) ; Statement: r12 := @parameter7: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var3576 null-var351)))
(define-const var2790 ClassObject (objectClass/-356097418 var3214)) ; Statement: r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext: java.lang.Class objectClass> 
(define-const var3252 var3695 var3695-FieldBased) ; Statement: $r2 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature FieldBased> 
(define-const var1619 Int (mask/1918454044 var3252)) ; Statement: $l1 = $r2.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var3649 Int (bv2nat (bvand ((_ int2bv 64) var2932) ((_ int2bv 64) var1619)))) ; Statement: $l2 = l0 & $l1 
(define-const var779 Int (ite (> var3649 0) 1 (ite (< var3649 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $z4 = 0 
(assert (= var779 0)) ; Cond: $b3 == 0 
(define-const var1152 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
(define-const var1603 Bool var1152) ; Statement: z0 = $z4 
(define-const var1412 String var1764-METHOD_DESC_READ_OBJECT) ; Statement: $r4 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_OBJECT> 
(assert true)
(define-const var1914 var2562 (visitMethod/328969596 var3014 1 "readJSONBObject" var1412 2048)) ; Statement: $r66 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "readJSONBObject", $r4, 2048) 
(assert true)
;(assert (genCheckAutoType/1507281336 var2461 var3868 var1914 1 2 3 4 15)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCheckAutoType(java.lang.String,com.alibaba.fastjson2.internal.asm.MethodWriter,int,int,int,int,int)>(r6, $r66, 1, 2, 3, 4, 15) 

(declare-const var2461!1 var1764)
(declare-const var3868!1 String)
(declare-const var1914!1 var2562)
(declare-const var859 Int)
(declare-const var2992 Int)
(declare-const var1013 Int)
(declare-const var3257 Int)
(declare-const var3966 Int)
(define-const var429 Int 16) ; Statement: i23 = 16 
(define-const var1534 var2251 var2251-init) ; Statement: $r94 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1534)) ; Statement: specialinvoke $r94.<java.util.HashMap: void <init>()>() 

(declare-const var1534!1 var2251)
(define-const var426 var2953 var2953-init) ; Statement: $r95 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var426)) ; Statement: specialinvoke $r95.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var426!1 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!1 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!2 var2562)
(declare-const var3848 Int)
(declare-const var859!1 Int)
(define-const var915 String var1491-TYPE_JSON_READER) ; Statement: $r9 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!2 182 var915 "nextIfNull" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "nextIfNull", "()Z", 0) 

(declare-const var1914!3 var2562)
(declare-const var518 Int)
(declare-const var915!1 String)
(declare-const var750 String)
(declare-const var3161 String)
(declare-const var2189 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!3 153 var426!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r95) 

(declare-const var1914!4 var2562)
(declare-const var605 Int)
(declare-const var426!2 var2953)
(assert true)
;(assert (visitInsn/-918620226 var1914!4 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 

(declare-const var1914!5 var2562)
(declare-const var859!2 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!5 176)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var1914!6 var2562)
(declare-const var3936 Int)
(assert true)
;(assert (visitLabel/567040954 var1914!6 var426!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r95) 

(declare-const var1914!7 var2562)
(declare-const var426!3 var2953)
 ; Statement: if r1 == null goto $r96 = new com.alibaba.fastjson2.internal.asm.Label 
(assert (= var2790 null-ClassObject)) ; Cond: r1 == null 
(define-const var3165 var2953 var2953-init) ; Statement: $r96 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3165)) ; Statement: specialinvoke $r96.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3165!1 var2953)
(define-const var1478 Int 0) ; Statement: i24 = 0 
(define-const var163 Int 0) ; Statement: i25 = 0 
(define-const var282 var2953 var2953-init) ; Statement: $r97 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var282)) ; Statement: specialinvoke $r97.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var282!1 var2953)
(define-const var2879 var2953 var2953-init) ; Statement: $r98 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2879)) ; Statement: specialinvoke $r98.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2879!1 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!7 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!8 var2562)
(declare-const var3848!1 Int)
(declare-const var859!3 Int)
(define-const var703 String var1491-TYPE_JSON_READER) ; Statement: $r70 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!8 182 var703 "isArray" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r70, "isArray", "()Z", 0) 

(declare-const var1914!9 var2562)
(declare-const var518!1 Int)
(declare-const var703!1 String)
(declare-const var1300 String)
(declare-const var3161!1 String)
(declare-const var2189!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!9 153 var3165!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r96) 

(declare-const var1914!10 var2562)
(declare-const var605!1 Int)
(declare-const var3165!2 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!10 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!11 var2562)
(declare-const var3848!2 Int)
(declare-const var859!4 Int)
(define-const var3483 String var1491-TYPE_JSON_READER) ; Statement: $r71 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!11 182 var3483 "isSupportBeanArray" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r71, "isSupportBeanArray", "()Z", 0) 

(declare-const var1914!12 var2562)
(declare-const var518!2 Int)
(declare-const var3483!1 String)
(declare-const var1321 String)
(declare-const var3161!2 String)
(declare-const var2189!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!12 153 var2879!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r98) 

(declare-const var1914!13 var2562)
(declare-const var605!2 Int)
(declare-const var2879!2 var2953)
(define-const var2037 var1857 (creator/1914013406 (cast-from-var351-to-var3694 var3576))) ; Statement: $r72 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert true)
;(assert (genCreateObject/-1744014466 var2461!1 var1914!13 var3214 var3868!1 var1785 4 var1603 var2875 var2037)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r72) 

(declare-const var2461!2 var1764)
(declare-const var1914!14 var2562)
(declare-const var3214!1 var756)
(declare-const var3868!2 String)
(declare-const var1785!1 String)
(declare-const var3257!1 Int)
(declare-const var1603!1 Bool)
(declare-const var2875!1 var2378)
(declare-const var2037!1 var1857)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!14 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var1914!15 var2562)
(declare-const var2774 Int)
(declare-const var3499 Int)
(define-const var1776 var2953 var2953-init) ; Statement: $r99 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1776)) ; Statement: specialinvoke $r99.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1776!1 var2953)
(define-const var898 var2953 var2953-init) ; Statement: $r100 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var898)) ; Statement: specialinvoke $r100.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var898!1 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!15 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!16 var2562)
(declare-const var3848!3 Int)
(declare-const var859!5 Int)
(define-const var470 String var1491-TYPE_JSON_READER) ; Statement: $r75 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!16 182 var470 "startArray" "()I" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r75, "startArray", "()I", 0) 

(declare-const var1914!17 var2562)
(declare-const var518!3 Int)
(declare-const var470!1 String)
(declare-const var2465 String)
(declare-const var3821 String)
(declare-const var2189!3 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!17 89)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var1914!18 var2562)
(declare-const var1420 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!18 54 7)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 7) 

(declare-const var1914!19 var2562)
(declare-const var3593 Int)
(declare-const var3797 Int)
(define-const var3685 Int (getLength-Arr-var1574-1 var1462)) ; Statement: $i26 = lengthof r13 
(assert true)
;(assert (visitLdcInsn/868177477 var1914!19 var3685)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(int)>($i26) 

(declare-const var1914!20 var2562)
(declare-const var3685!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!20 160 var898!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(160, $r100) 

(declare-const var1914!21 var2562)
(declare-const var2086 Int)
(declare-const var898!2 var2953)
(define-const var3539 Int 0) ; Statement: i27 = 0 
(assert true) ; Non Conditional
(define-const var1700 Int (getLength-Arr-var1574-1 var1462)) ; Statement: $i28 = lengthof r13 
 ; Statement: if i27 >= $i28 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99) 
(assert (>= var3539 var1700)) ; Cond: i27 >= $i28 
(assert true)
;(assert (visitJumpInsn/413071865 var1914!21 167 var1776!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99) 

(declare-const var1914!22 var2562)
(declare-const var2666 Int)
(declare-const var1776!2 var2953)
(assert true)
;(assert (visitLabel/567040954 var1914!22 var898!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r100) 

(declare-const var1914!23 var2562)
(declare-const var898!3 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!23 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1914!24 var2562)
(declare-const var3848!4 Int)
(declare-const var2189!4 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!24 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!25 var2562)
(declare-const var3848!5 Int)
(declare-const var859!6 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!25 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var1914!26 var2562)
(declare-const var3848!6 Int)
(declare-const var3499!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!26 21 7)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, 7) 

(declare-const var1914!27 var2562)
(declare-const var106 Int)
(declare-const var3797!1 Int)
(define-const var890 String var1491-TYPE_OBJECT_READER_ADAPTER) ; Statement: $r15 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER> 
(define-const var2077 String var1764-METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0) ; Statement: $r14 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!27 182 var890 "readArrayMappingJSONBObject0" var2077 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "readArrayMappingJSONBObject0", $r14, 0) 

(declare-const var1914!28 var2562)
(declare-const var518!4 Int)
(declare-const var890!1 String)
(declare-const var1782 String)
(declare-const var2077!1 String)
(declare-const var2189!5 Int)
(assert true)
;(assert (visitLabel/567040954 var1914!28 var1776!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r99) 

(declare-const var1914!29 var2562)
(declare-const var1776!3 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!29 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var1914!30 var2562)
(declare-const var3848!7 Int)
(declare-const var3499!2 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!30 176)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var1914!31 var2562)
(declare-const var3936!1 Int)
(assert true)
;(assert (visitLabel/567040954 var1914!31 var2879!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r98) 

(declare-const var1914!32 var2562)
(declare-const var2879!3 var2953)
(assert true)
;(assert (visitLabel/567040954 var1914!32 var3165!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r96) 

(declare-const var1914!33 var2562)
(declare-const var3165!3 var2953)
(define-const var2144 var1857 (creator/1914013406 (cast-from-var351-to-var3694 var3576))) ; Statement: $r16 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert true)
;(assert (genCreateObject/-1744014466 var2461!2 var1914!33 var3214!1 var3868!2 var1785!1 4 var1603!1 var2875!1 var2144)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r16) 

(declare-const var2461!3 var1764)
(declare-const var1914!34 var2562)
(declare-const var3214!2 var756)
(declare-const var3868!3 String)
(declare-const var1785!2 String)
(declare-const var3257!2 Int)
(declare-const var1603!2 Bool)
(declare-const var2875!2 var2378)
(declare-const var2144!1 var1857)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!34 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var1914!35 var2562)
(declare-const var2774!1 Int)
(declare-const var3499!3 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!35 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!36 var2562)
(declare-const var3848!8 Int)
(declare-const var859!7 Int)
(define-const var2112 String var1491-TYPE_JSON_READER) ; Statement: $r17 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!36 182 var2112 "nextIfObjectStart" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r17, "nextIfObjectStart", "()Z", 0) 

(declare-const var1914!37 var2562)
(declare-const var518!5 Int)
(declare-const var2112!1 String)
(declare-const var2516 String)
(declare-const var3161!3 String)
(declare-const var2189!6 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!37 87)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(87) 

(declare-const var1914!38 var2562)
(declare-const var367 Int)
(define-const var800 var1857 (creator/1914013406 (cast-from-var351-to-var3694 var3576))) ; Statement: $r18 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert true)
;(assert (genCreateObject/-1744014466 var2461!3 var1914!38 var3214!2 var3868!3 var1785!2 4 var1603!2 var2875!2 var800)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r18) 

(declare-const var2461!4 var1764)
(declare-const var1914!39 var2562)
(declare-const var3214!3 var756)
(declare-const var3868!4 String)
(declare-const var1785!3 String)
(declare-const var3257!3 Int)
(declare-const var1603!3 Bool)
(declare-const var2875!3 var2378)
(declare-const var800!1 var1857)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!39 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var1914!40 var2562)
(declare-const var2774!2 Int)
(declare-const var3499!4 Int)
(define-const var2819 var2953 var2953-init) ; Statement: $r101 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2819)) ; Statement: specialinvoke $r101.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2819!1 var2953)
(define-const var2499 var2953 var2953-init) ; Statement: $r102 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2499)) ; Statement: specialinvoke $r102.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2499!1 var2953)
(define-const var3714 var2953 var2953-init) ; Statement: $r103 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3714)) ; Statement: specialinvoke $r103.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3714!1 var2953)
(assert true)
;(assert (visitInsn/-918620226 var1914!40 3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(3) 

(declare-const var1914!41 var2562)
(declare-const var1013!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!41 54 8)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 8) 

(declare-const var1914!42 var2562)
(declare-const var3593!1 Int)
(declare-const var1926 Int)
(assert true)
;(assert (visitLabel/567040954 var1914!42 var2819!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r101) 

(declare-const var1914!43 var2562)
(declare-const var2819!2 var2953)
(define-const var2406 var2953 var2953-init) ; Statement: $r104 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2406)) ; Statement: specialinvoke $r104.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2406!1 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!43 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!44 var2562)
(declare-const var3848!9 Int)
(declare-const var859!8 Int)
(define-const var1637 String var1491-TYPE_JSON_READER) ; Statement: $r23 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!44 182 var1637 "nextIfObjectEnd" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r23, "nextIfObjectEnd", "()Z", 0) 

(declare-const var1914!45 var2562)
(declare-const var518!6 Int)
(declare-const var1637!1 String)
(declare-const var1261 String)
(declare-const var3161!4 String)
(declare-const var2189!7 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!45 154 var2499!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r102) 

(declare-const var1914!46 var2562)
(declare-const var384 Int)
(declare-const var2499!2 var2953)
 ; Statement: if i24 < 2 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104) 
(assert (< var1478 2)) ; Cond: i24 < 2 
(assert true)
;(assert (visitLabel/567040954 var1914!46 var2406!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104) 

(declare-const var1914!47 var2562)
(declare-const var2406!2 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!47 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!48 var2562)
(declare-const var3848!10 Int)
(declare-const var859!9 Int)
(define-const var373 String var1491-TYPE_JSON_READER) ; Statement: $r78 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!48 182 var373 "readFieldNameHashCode" "()J" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r78, "readFieldNameHashCode", "()J", 0) 

(declare-const var1914!49 var2562)
(declare-const var518!7 Int)
(declare-const var373!1 String)
(declare-const var1448 String)
(declare-const var2994 String)
(declare-const var2189!8 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!49 92)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92) 

(declare-const var1914!50 var2562)
(declare-const var1364 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!50 55 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9) 

(declare-const var1914!51 var2562)
(declare-const var2636 Int)
(declare-const var3138 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!51 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var1914!52 var2562)
(declare-const var3138!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!52 148)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var1914!53 var2562)
(declare-const var3112 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!53 153 var3714!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r103) 

(declare-const var1914!54 var2562)
(declare-const var605!3 Int)
(declare-const var3714!2 var2953)
(define-const var2659 var2953 var2953-init) ; Statement: $r105 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2659)) ; Statement: specialinvoke $r105.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2659!1 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!54 22 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9) 

(declare-const var1914!55 var2562)
(declare-const var1956 Int)
(declare-const var3138!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!55 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1914!56 var2562)
(declare-const var3848!11 Int)
(declare-const var2189!9 Int)
(assert true)
;(assert (visitFieldInsn/1331737383 var1914!56 180 var3868!4 "typeKeyHashCode" "J")) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r6, "typeKeyHashCode", "J") 

(declare-const var1914!57 var2562)
(declare-const var1954 Int)
(declare-const var3868!5 String)
(declare-const var2620 String)
(declare-const var2830 String)
(assert true)
;(assert (visitInsn/-918620226 var1914!57 148)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var1914!58 var2562)
(declare-const var3112!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!58 154 var2659!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r105) 

(declare-const var1914!59 var2562)
(declare-const var384!1 Int)
(declare-const var2659!2 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!59 22 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9) 

(declare-const var1914!60 var2562)
(declare-const var1956!1 Int)
(declare-const var3138!3 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!60 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var1914!61 var2562)
(declare-const var3138!4 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!61 148)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var1914!62 var2562)
(declare-const var3112!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!62 153 var2659!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r105) 

(declare-const var1914!63 var2562)
(declare-const var605!4 Int)
(declare-const var2659!3 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!63 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1914!64 var2562)
(declare-const var3848!12 Int)
(declare-const var2189!10 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!64 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!65 var2562)
(declare-const var3848!13 Int)
(declare-const var859!10 Int)
(define-const var3686 String String-init) ; Statement: $r106 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3686)) ; Statement: specialinvoke $r106.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3686!1 String)
(assert (= var3686!1 ""))
(assert true)
(define-const var3420 String (append/672562846 var3686!1 "(")) ; Statement: $r81 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3686!2 String)
(assert (= var3686!2 (str.++ var3686!1 "(")))
(define-const var3878 String var1491-DESC_JSON_READER) ; Statement: $r82 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER> 
(assert true)
(define-const var3639 String (append/672562846 var3420 var3878)) ; Statement: $r83 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r82) 
(declare-const var3420!1 String)
(assert (= var3420!1 (str.++ var3420 var3878)))
(assert true)
(define-const var203 String (append/672562846 var3639 ")Ljava/lang/Object;")) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljava/lang/Object;") 
(declare-const var3639!1 String)
(assert (= var3639!1 (str.++ var3639 ")Ljava/lang/Object;")))
(assert true)
(define-const var3073 String (toString/-2075883882 var203)) ; Statement: $r85 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!65 182 var3868!5 "autoType" var3073 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r6, "autoType", $r85, 0) 

(declare-const var1914!66 var2562)
(declare-const var518!8 Int)
(declare-const var3868!6 String)
(declare-const var639 String)
(declare-const var3073!1 String)
(declare-const var2189!11 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!66 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var1914!67 var2562)
(declare-const var2774!3 Int)
(declare-const var3499!5 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!67 167 var2499!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r102) 

(declare-const var1914!68 var2562)
(declare-const var2666!1 Int)
(declare-const var2499!3 var2953)
(assert true)
;(assert (visitLabel/567040954 var1914!68 var2659!3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r105) 

(declare-const var1914!69 var2562)
(declare-const var2659!4 var2953)
(define-const var1989 Int (getLength-Arr-var1574-1 var1462)) ; Statement: $i33 = lengthof r13 
 ; Statement: if $i33 <= 6 goto i41 = 0 
(assert (<= var1989 6)) ; Cond: $i33 <= 6 
(define-const var1267 Int 0) ; Statement: i41 = 0 
(assert true) ; Non Conditional
(define-const var2289 Int (getLength-Arr-var1574-1 var1462)) ; Statement: $i4 = lengthof r13 
 ; Statement: if i41 >= $i4 goto $r112 = new com.alibaba.fastjson2.internal.asm.Label 
(assert (>= var1267 var2289)) ; Cond: i41 >= $i4 
(define-const var1774 var2953 var2953-init) ; Statement: $r112 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1774)) ; Statement: specialinvoke $r112.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1774!1 var2953)
(define-const var2517 var3695 var3695-SupportSmartMatch) ; Statement: $r25 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature SupportSmartMatch> 
(define-const var1397 Int (mask/1918454044 var2517)) ; Statement: $l5 = $r25.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var588 Int (bv2nat (bvand ((_ int2bv 64) var2932) ((_ int2bv 64) var1397)))) ; Statement: $l6 = l0 & $l5 
(define-const var897 Int (ite (> var588 0) 1 (ite (< var588 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var897 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var1914!69 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!70 var2562)
(declare-const var3848!14 Int)
(declare-const var859!11 Int)
(define-const var3973 String var1491-TYPE_JSON_READER) ; Statement: $r26 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!70 182 var3973 "getNameHashCodeLCase" "()J" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r26, "getNameHashCodeLCase", "()J", 0) 

(declare-const var1914!71 var2562)
(declare-const var518!9 Int)
(declare-const var3973!1 String)
(declare-const var179 String)
(declare-const var2994!1 String)
(declare-const var2189!12 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!71 55 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9) 

(declare-const var1914!72 var2562)
(declare-const var2636!1 Int)
(declare-const var3138!5 Int)
(define-const var2972 Int 0) ; Statement: i43 = 0 
(assert true) ; Non Conditional
(define-const var390 Int (getLength-Arr-var1574-1 var1462)) ; Statement: $i44 = lengthof r13 
 ; Statement: if i43 >= $i44 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112) 
(assert (>= var2972 var390)) ; Cond: i43 >= $i44 
(assert true)
;(assert (visitLabel/567040954 var1914!72 var1774!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112) 

(declare-const var1914!73 var2562)
(declare-const var1774!2 var2953)
(assert true) ; Non Conditional
(assert true)
;(assert (visitVarInsn/-915853820 var1914!73 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1914!74 var2562)
(declare-const var3848!15 Int)
(declare-const var2189!13 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!74 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var1914!75 var2562)
(declare-const var3848!16 Int)
(declare-const var859!12 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!75 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var1914!76 var2562)
(declare-const var3848!17 Int)
(declare-const var3499!6 Int)
(define-const var777 String var1491-TYPE_OBJECT_READER_ADAPTER) ; Statement: $r28 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER> 
(define-const var883 String var1764-METHOD_DESC_PROCESS_EXTRA) ; Statement: $r27 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_PROCESS_EXTRA> 
(assert true)
;(assert (visitMethodInsn/-527702312 var1914!76 182 var777 "processExtra" var883 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r28, "processExtra", $r27, 0) 

(declare-const var1914!77 var2562)
(declare-const var518!10 Int)
(declare-const var777!1 String)
(declare-const var1533 String)
(declare-const var883!1 String)
(declare-const var2189!14 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!77 167 var3714!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r103) 

(declare-const var1914!78 var2562)
(declare-const var2666!2 Int)
(declare-const var3714!3 var2953)
(assert true)
;(assert (visitLabel/567040954 var1914!78 var3714!3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r103) 

(declare-const var1914!79 var2562)
(declare-const var3714!4 var2953)
(assert true)
;(assert (visitIincInsn/874918902 var1914!79 8 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitIincInsn(int,int)>(8, 1) 

(declare-const var1914!80 var2562)
(declare-const var1926!1 Int)
(declare-const var859!13 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var1914!80 167 var2819!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r101) 

(declare-const var1914!81 var2562)
(declare-const var2666!3 Int)
(declare-const var2819!3 var2953)
(assert true)
;(assert (visitLabel/567040954 var1914!81 var2499!3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r102) 

(declare-const var1914!82 var2562)
(declare-const var2499!4 var2953)
(assert true)
;(assert (visitVarInsn/-915853820 var1914!82 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var1914!83 var2562)
(declare-const var3848!18 Int)
(declare-const var3499!7 Int)
(assert true)
;(assert (visitInsn/-918620226 var1914!83 176)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var1914!84 var2562)
(declare-const var3936!2 Int)
(assert true)
;(assert (visitMaxs/516991312 var1914!84 5 10)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 10) 

(declare-const var1914!85 var2562)
(declare-const var2621 Int)
(declare-const var138 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {objectClass/-356097418=([com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext], java.lang.Class), mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), visitMethod/328969596=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, java.lang.String, java.lang.String, int], com.alibaba.fastjson2.internal.asm.MethodWriter), genCheckAutoType/1507281336=([com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, java.lang.String, com.alibaba.fastjson2.internal.asm.MethodWriter, int, int, int, int, int], void), var2251-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var2953-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), creator/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.util.function.Supplier), cast-from-var351-to-var3694=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], com.alibaba.fastjson2.reader.ObjectReaderBean), genCreateObject/-1744014466=([com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext, java.lang.String, java.lang.String, int, boolean, java.lang.reflect.Constructor, java.util.function.Supplier], void), getLength-Arr-var1574-1=([com.alibaba.fastjson2.reader.FieldReader[]], int), visitLdcInsn/868177477=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitIincInsn/874918902=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitMaxs/516991312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void)}
; {var1764=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, var2461=r5, var756=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext, var3214=r0, var2378=java.lang.reflect.Constructor, var2875=r11, var2932=l0, var1785=r10, var3292=null_type, var1574=com.alibaba.fastjson2.reader.FieldReader, var1462=r13, var3582=com.alibaba.fastjson2.internal.asm.ClassWriter, var3014=r3, var3868=r6, var351=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var3576=r12, var2790=r1, var3695=com.alibaba.fastjson2.JSONReader$Feature, var3252=$r2, var1619=$l1, var3649=$l2, var779=$b3, var1152=$z4, var1603=z0, var1412=$r4, var2562=com.alibaba.fastjson2.internal.asm.MethodWriter, var1914=$r66, var859=1, var2992=2, var1013=3, var3257=4, var3966=15, var429=i23, var2251=java.util.HashMap, var1534=$r94, var2953=com.alibaba.fastjson2.internal.asm.Label, var426=$r95, var3848=25, var1491=com.alibaba.fastjson2.internal.asm.ASMUtils, var915=$r9, var518=182, var750="nextIfNull", var3161="()Z", var2189=0, var605=153, var3936=176, var3165=$r96, var1478=i24, var163=i25, var282=$r97, var2879=$r98, var703=$r70, var1300="isArray", var3483=$r71, var1321="isSupportBeanArray", var1857=java.util.function.Supplier, var3694=com.alibaba.fastjson2.reader.ObjectReaderBean, var2037=$r72, var2774=58, var3499=6, var1776=$r99, var898=$r100, var470=$r75, var2465="startArray", var3821="()I", var1420=89, var3593=54, var3797=7, var3685=$i26, var2086=160, var3539=i27, var1700=$i28, var2666=167, var106=21, var890=$r15, var2077=$r14, var1782="readArrayMappingJSONBObject0", var2144=$r16, var2112=$r17, var2516="nextIfObjectStart", var367=87, var800=$r18, var2819=$r101, var2499=$r102, var3714=$r103, var1926=8, var2406=$r104, var1637=$r23, var1261="nextIfObjectEnd", var384=154, var373=$r78, var1448="readFieldNameHashCode", var2994="()J", var1364=92, var2636=55, var3138=9, var3112=148, var2659=$r105, var1956=22, var1954=180, var2620="typeKeyHashCode", var2830="J", var3686=$r106, var3420=$r81, var3878=$r82, var3639=$r83, var203=$r84, var3073=$r85, var639="autoType", var1989=$i33, var1267=i41, var2289=$i4, var1774=$r112, var2517=$r25, var1397=$l5, var588=$l6, var897=$b7, var3973=$r26, var179="getNameHashCodeLCase", var2972=i43, var390=$i44, var777=$r28, var883=$r27, var1533="processExtra", var2621=5, var138=10}
; {com.alibaba.fastjson2.reader.ObjectReaderCreatorASM=var1764, r5=var2461, com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext=var756, r0=var3214, java.lang.reflect.Constructor=var2378, r11=var2875, l0=var2932, r10=var1785, null_type=var3292, com.alibaba.fastjson2.reader.FieldReader=var1574, r13=var1462, com.alibaba.fastjson2.internal.asm.ClassWriter=var3582, r3=var3014, r6=var3868, com.alibaba.fastjson2.reader.ObjectReaderAdapter=var351, r12=var3576, r1=var2790, com.alibaba.fastjson2.JSONReader$Feature=var3695, $r2=var3252, $l1=var1619, $l2=var3649, $b3=var779, $z4=var1152, z0=var1603, $r4=var1412, com.alibaba.fastjson2.internal.asm.MethodWriter=var2562, $r66=var1914, 1=var859, 2=var2992, 3=var1013, 4=var3257, 15=var3966, i23=var429, java.util.HashMap=var2251, $r94=var1534, com.alibaba.fastjson2.internal.asm.Label=var2953, $r95=var426, 25=var3848, com.alibaba.fastjson2.internal.asm.ASMUtils=var1491, $r9=var915, 182=var518, "nextIfNull"=var750, "()Z"=var3161, 0=var2189, 153=var605, 176=var3936, $r96=var3165, i24=var1478, i25=var163, $r97=var282, $r98=var2879, $r70=var703, "isArray"=var1300, $r71=var3483, "isSupportBeanArray"=var1321, java.util.function.Supplier=var1857, com.alibaba.fastjson2.reader.ObjectReaderBean=var3694, $r72=var2037, 58=var2774, 6=var3499, $r99=var1776, $r100=var898, $r75=var470, "startArray"=var2465, "()I"=var3821, 89=var1420, 54=var3593, 7=var3797, $i26=var3685, 160=var2086, i27=var3539, $i28=var1700, 167=var2666, 21=var106, $r15=var890, $r14=var2077, "readArrayMappingJSONBObject0"=var1782, $r16=var2144, $r17=var2112, "nextIfObjectStart"=var2516, 87=var367, $r18=var800, $r101=var2819, $r102=var2499, $r103=var3714, 8=var1926, $r104=var2406, $r23=var1637, "nextIfObjectEnd"=var1261, 154=var384, $r78=var373, "readFieldNameHashCode"=var1448, "()J"=var2994, 92=var1364, 55=var2636, 9=var3138, 148=var3112, $r105=var2659, 22=var1956, 180=var1954, "typeKeyHashCode"=var2620, "J"=var2830, $r106=var3686, $r81=var3420, $r82=var3878, $r83=var3639, $r84=var203, $r85=var3073, "autoType"=var639, $i33=var1989, i41=var1267, $i4=var2289, $r112=var1774, $r25=var2517, $l5=var1397, $l6=var588, $b7=var897, $r26=var3973, "getNameHashCodeLCase"=var179, i43=var2972, $i44=var390, $r28=var777, $r27=var883, "processExtra"=var1533, 5=var2621, 10=var138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext;	r11 := @parameter1: java.lang.reflect.Constructor;	l0 := @parameter2: long;	r10 := @parameter3: java.lang.String;	r13 := @parameter4: com.alibaba.fastjson2.reader.FieldReader[];	r3 := @parameter5: com.alibaba.fastjson2.internal.asm.ClassWriter;	r6 := @parameter6: java.lang.String;	r12 := @parameter7: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext: java.lang.Class objectClass>;	$r2 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature FieldBased>;	$l1 = $r2.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l2 = l0 & $l1;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $z4 = 0;	$z4 = 0;	z0 = $z4;	$r4 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_OBJECT>;	$r66 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "readJSONBObject", $r4, 2048);	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCheckAutoType(java.lang.String,com.alibaba.fastjson2.internal.asm.MethodWriter,int,int,int,int,int)>(r6, $r66, 1, 2, 3, 4, 15);	i23 = 16;	$r94 = new java.util.HashMap;	specialinvoke $r94.<java.util.HashMap: void <init>()>();	$r95 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r95.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r9 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "nextIfNull", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r95);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r95);	if r1 == null goto $r96 = new com.alibaba.fastjson2.internal.asm.Label;	$r96 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r96.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	i24 = 0;	i25 = 0;	$r97 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r97.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r98 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r98.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r70 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r70, "isArray", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r96);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r71 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r71, "isSupportBeanArray", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r98);	$r72 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r72);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	$r99 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r99.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r100 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r100.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r75 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r75, "startArray", "()I", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 7);	$i26 = lengthof r13;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(int)>($i26);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(160, $r100);	i27 = 0;	$i28 = lengthof r13;	if i27 >= $i28 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r100);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, 7);	$r15 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER>;	$r14 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "readArrayMappingJSONBObject0", $r14, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r99);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r98);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r96);	$r16 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r16);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r17 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r17, "nextIfObjectStart", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(87);	$r18 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r18);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	$r101 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r101.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r102 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r102.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r103 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r103.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(3);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 8);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r101);	$r104 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r104.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r23 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r23, "nextIfObjectEnd", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r102);	if i24 < 2 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r78 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r78, "readFieldNameHashCode", "()J", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r103);	$r105 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r105.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r6, "typeKeyHashCode", "J");	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r105);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r105);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r106 = new java.lang.StringBuilder;	specialinvoke $r106.<java.lang.StringBuilder: void <init>()>();	$r81 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r82 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER>;	$r83 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r82);	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljava/lang/Object;");	$r85 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r6, "autoType", $r85, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r102);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r105);	$i33 = lengthof r13;	if $i33 <= 6 goto i41 = 0;	i41 = 0;	$i4 = lengthof r13;	if i41 >= $i4 goto $r112 = new com.alibaba.fastjson2.internal.asm.Label;	$r112 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r112.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r25 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature SupportSmartMatch>;	$l5 = $r25.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l6 = l0 & $l5;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r26 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r26, "getNameHashCodeLCase", "()J", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9);	i43 = 0;	$i44 = lengthof r13;	if i43 >= $i44 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	$r28 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER>;	$r27 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_PROCESS_EXTRA>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r28, "processExtra", $r27, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r103);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r103);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitIincInsn(int,int)>(8, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r101);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r102);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 10);	return
;block_num 14