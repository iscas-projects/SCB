(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1510 0)
(declare-sort var3760 0)
(declare-sort var3941 0)
(declare-sort var343 0)
(declare-sort var2304 0)
(declare-sort var2378 0)
(declare-sort var292 0)
(declare-sort var1984 0)
(declare-sort var3491 0)
(declare-sort var3588 0)
(declare-sort var24 0)
(declare-sort var367 0)
(declare-sort var3179 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun objectClass/-356097418 (var3760) ClassObject)
(declare-fun mask/1918454044 (var1984) Int)
(declare-fun visitMethod/328969596 (var2378 Int String String Int) var3491)
(declare-fun genCheckAutoType/1507281336 (var1510 String var3491 Int Int Int Int Int) void)
(declare-fun var3588-init () var3588)
(declare-fun <init>/-201242697 (var3588) void)
(declare-fun var24-init () var24)
(declare-fun <init>/-2069075760 (var24) void)
(declare-fun visitVarInsn/-915853820 (var3491 Int Int) void)
(declare-fun visitMethodInsn/-527702312 (var3491 Int String String String Bool) void)
(declare-fun visitJumpInsn/413071865 (var3491 Int var24) void)
(declare-fun visitInsn/-918620226 (var3491 Int) void)
(declare-fun visitLabel/567040954 (var3491 var24) void)
(declare-fun creator/1914013406 (var3654) var3179)
(declare-fun cast-from-var292-to-var3654 (var292) var3654)
(declare-fun genCreateObject/-1744014466 (var1510 var3491 var3760 String String Int Bool var3941 var3179) void)
(declare-fun getLength-Arr-var2304-1 ((Array Int var2304)) Int)
(declare-fun visitLdcInsn/868177477 (var3491 Int) void)
(declare-fun visitFieldInsn/1331737383 (var3491 Int String String String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitIincInsn/874918902 (var3491 Int Int) void)
(declare-fun visitMaxs/516991312 (var3491 Int Int) void)
(declare-const null-var1510 var1510)
(declare-const null-var3760 var3760)
(declare-const null-var3941 var3941)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var2304__ (Array Int var2304))
(declare-const null-var2378 var2378)
(declare-const null-var292 var292)
(declare-const var1984-FieldBased var1984)
(declare-const var1510-METHOD_DESC_READ_OBJECT String)
(declare-const var367-TYPE_JSON_READER String)
(declare-const null-ClassObject ClassObject)
(declare-const var367-TYPE_OBJECT_READER_ADAPTER String)
(declare-const var1510-METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0 String)
(declare-const var367-DESC_JSON_READER String)
(declare-const var1984-SupportSmartMatch var1984)
(declare-const var1510-METHOD_DESC_PROCESS_EXTRA String)
(declare-const var144 var1510) ; Statement: r5 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM 
(assert (not (= var144 null-var1510)))
(declare-const var3574 var3760) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext 
(assert (not (= var3574 null-var3760)))
(declare-const var1105 var3941) ; Statement: r11 := @parameter1: java.lang.reflect.Constructor 
(assert (not (= var1105 null-var3941)))
(declare-const var2793 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2793 null-Int)))
(declare-const var1416 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var1416 null-String)))
(declare-const var1236 (Array Int var2304)) ; Statement: r13 := @parameter4: com.alibaba.fastjson2.reader.FieldReader[] 
(assert (not (= var1236 null-__Array__Int__var2304__)))
(declare-const var3164 var2378) ; Statement: r3 := @parameter5: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var3164 null-var2378)))
(declare-const var1225 String) ; Statement: r6 := @parameter6: java.lang.String 
(assert (not (= var1225 null-String)))
(declare-const var3822 var292) ; Statement: r12 := @parameter7: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var3822 null-var292)))
(define-const var1958 ClassObject (objectClass/-356097418 var3574)) ; Statement: r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext: java.lang.Class objectClass> 
(define-const var2171 var1984 var1984-FieldBased) ; Statement: $r2 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature FieldBased> 
(define-const var2698 Int (mask/1918454044 var2171)) ; Statement: $l1 = $r2.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var3201 Int (bv2nat (bvand ((_ int2bv 64) var2793) ((_ int2bv 64) var2698)))) ; Statement: $l2 = l0 & $l1 
(define-const var2948 Int (ite (> var3201 0) 1 (ite (< var3201 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
 ; Statement: if $b3 == 0 goto $z4 = 0 
(assert (not (= var2948 0))) ; Negate: Cond: $b3 == 0  
(define-const var1988 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= z0 = $z4] 
(assert true) ; Non Conditional
(define-const var3158 Bool var1988) ; Statement: z0 = $z4 
(define-const var937 String var1510-METHOD_DESC_READ_OBJECT) ; Statement: $r4 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_OBJECT> 
(assert true)
(define-const var2865 var3491 (visitMethod/328969596 var3164 1 "readJSONBObject" var937 2048)) ; Statement: $r66 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "readJSONBObject", $r4, 2048) 
(assert true)
;(assert (genCheckAutoType/1507281336 var144 var1225 var2865 1 2 3 4 15)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCheckAutoType(java.lang.String,com.alibaba.fastjson2.internal.asm.MethodWriter,int,int,int,int,int)>(r6, $r66, 1, 2, 3, 4, 15) 

(declare-const var144!1 var1510)
(declare-const var1225!1 String)
(declare-const var2865!1 var3491)
(declare-const var1277 Int)
(declare-const var218 Int)
(declare-const var2979 Int)
(declare-const var1073 Int)
(declare-const var1242 Int)
(define-const var3961 Int 16) ; Statement: i23 = 16 
(define-const var3825 var3588 var3588-init) ; Statement: $r94 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3825)) ; Statement: specialinvoke $r94.<java.util.HashMap: void <init>()>() 

(declare-const var3825!1 var3588)
(define-const var3907 var24 var24-init) ; Statement: $r95 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3907)) ; Statement: specialinvoke $r95.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3907!1 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!1 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!2 var3491)
(declare-const var718 Int)
(declare-const var1277!1 Int)
(define-const var2603 String var367-TYPE_JSON_READER) ; Statement: $r9 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!2 182 var2603 "nextIfNull" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "nextIfNull", "()Z", 0) 

(declare-const var2865!3 var3491)
(declare-const var110 Int)
(declare-const var2603!1 String)
(declare-const var3999 String)
(declare-const var1938 String)
(declare-const var3470 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!3 153 var3907!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r95) 

(declare-const var2865!4 var3491)
(declare-const var2282 Int)
(declare-const var3907!2 var24)
(assert true)
;(assert (visitInsn/-918620226 var2865!4 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 

(declare-const var2865!5 var3491)
(declare-const var1277!2 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!5 176)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var2865!6 var3491)
(declare-const var661 Int)
(assert true)
;(assert (visitLabel/567040954 var2865!6 var3907!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r95) 

(declare-const var2865!7 var3491)
(declare-const var3907!3 var24)
 ; Statement: if r1 == null goto $r96 = new com.alibaba.fastjson2.internal.asm.Label 
(assert (= var1958 null-ClassObject)) ; Cond: r1 == null 
(define-const var2194 var24 var24-init) ; Statement: $r96 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2194)) ; Statement: specialinvoke $r96.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2194!1 var24)
(define-const var1034 Int 0) ; Statement: i24 = 0 
(define-const var3463 Int 0) ; Statement: i25 = 0 
(define-const var1357 var24 var24-init) ; Statement: $r97 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1357)) ; Statement: specialinvoke $r97.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1357!1 var24)
(define-const var2794 var24 var24-init) ; Statement: $r98 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2794)) ; Statement: specialinvoke $r98.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2794!1 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!7 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!8 var3491)
(declare-const var718!1 Int)
(declare-const var1277!3 Int)
(define-const var3350 String var367-TYPE_JSON_READER) ; Statement: $r70 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!8 182 var3350 "isArray" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r70, "isArray", "()Z", 0) 

(declare-const var2865!9 var3491)
(declare-const var110!1 Int)
(declare-const var3350!1 String)
(declare-const var2023 String)
(declare-const var1938!1 String)
(declare-const var3470!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!9 153 var2194!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r96) 

(declare-const var2865!10 var3491)
(declare-const var2282!1 Int)
(declare-const var2194!2 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!10 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!11 var3491)
(declare-const var718!2 Int)
(declare-const var1277!4 Int)
(define-const var2916 String var367-TYPE_JSON_READER) ; Statement: $r71 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!11 182 var2916 "isSupportBeanArray" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r71, "isSupportBeanArray", "()Z", 0) 

(declare-const var2865!12 var3491)
(declare-const var110!2 Int)
(declare-const var2916!1 String)
(declare-const var3465 String)
(declare-const var1938!2 String)
(declare-const var3470!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!12 153 var2794!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r98) 

(declare-const var2865!13 var3491)
(declare-const var2282!2 Int)
(declare-const var2794!2 var24)
(define-const var3271 var3179 (creator/1914013406 (cast-from-var292-to-var3654 var3822))) ; Statement: $r72 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert true)
;(assert (genCreateObject/-1744014466 var144!1 var2865!13 var3574 var1225!1 var1416 4 var3158 var1105 var3271)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r72) 

(declare-const var144!2 var1510)
(declare-const var2865!14 var3491)
(declare-const var3574!1 var3760)
(declare-const var1225!2 String)
(declare-const var1416!1 String)
(declare-const var1073!1 Int)
(declare-const var3158!1 Bool)
(declare-const var1105!1 var3941)
(declare-const var3271!1 var3179)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!14 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var2865!15 var3491)
(declare-const var1921 Int)
(declare-const var2546 Int)
(define-const var2190 var24 var24-init) ; Statement: $r99 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2190)) ; Statement: specialinvoke $r99.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2190!1 var24)
(define-const var1652 var24 var24-init) ; Statement: $r100 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1652)) ; Statement: specialinvoke $r100.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1652!1 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!15 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!16 var3491)
(declare-const var718!3 Int)
(declare-const var1277!5 Int)
(define-const var2285 String var367-TYPE_JSON_READER) ; Statement: $r75 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!16 182 var2285 "startArray" "()I" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r75, "startArray", "()I", 0) 

(declare-const var2865!17 var3491)
(declare-const var110!3 Int)
(declare-const var2285!1 String)
(declare-const var2054 String)
(declare-const var1626 String)
(declare-const var3470!3 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!17 89)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89) 

(declare-const var2865!18 var3491)
(declare-const var313 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!18 54 7)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 7) 

(declare-const var2865!19 var3491)
(declare-const var3789 Int)
(declare-const var455 Int)
(define-const var3357 Int (getLength-Arr-var2304-1 var1236)) ; Statement: $i26 = lengthof r13 
(assert true)
;(assert (visitLdcInsn/868177477 var2865!19 var3357)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(int)>($i26) 

(declare-const var2865!20 var3491)
(declare-const var3357!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!20 160 var1652!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(160, $r100) 

(declare-const var2865!21 var3491)
(declare-const var2309 Int)
(declare-const var1652!2 var24)
(define-const var1149 Int 0) ; Statement: i27 = 0 
(assert true) ; Non Conditional
(define-const var2562 Int (getLength-Arr-var2304-1 var1236)) ; Statement: $i28 = lengthof r13 
 ; Statement: if i27 >= $i28 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99) 
(assert (>= var1149 var2562)) ; Cond: i27 >= $i28 
(assert true)
;(assert (visitJumpInsn/413071865 var2865!21 167 var2190!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99) 

(declare-const var2865!22 var3491)
(declare-const var1338 Int)
(declare-const var2190!2 var24)
(assert true)
;(assert (visitLabel/567040954 var2865!22 var1652!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r100) 

(declare-const var2865!23 var3491)
(declare-const var1652!3 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!23 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2865!24 var3491)
(declare-const var718!4 Int)
(declare-const var3470!4 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!24 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!25 var3491)
(declare-const var718!5 Int)
(declare-const var1277!6 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!25 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var2865!26 var3491)
(declare-const var718!6 Int)
(declare-const var2546!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!26 21 7)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, 7) 

(declare-const var2865!27 var3491)
(declare-const var1550 Int)
(declare-const var455!1 Int)
(define-const var2381 String var367-TYPE_OBJECT_READER_ADAPTER) ; Statement: $r15 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER> 
(define-const var2057 String var1510-METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0) ; Statement: $r14 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!27 182 var2381 "readArrayMappingJSONBObject0" var2057 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "readArrayMappingJSONBObject0", $r14, 0) 

(declare-const var2865!28 var3491)
(declare-const var110!4 Int)
(declare-const var2381!1 String)
(declare-const var1882 String)
(declare-const var2057!1 String)
(declare-const var3470!5 Int)
(assert true)
;(assert (visitLabel/567040954 var2865!28 var2190!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r99) 

(declare-const var2865!29 var3491)
(declare-const var2190!3 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!29 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var2865!30 var3491)
(declare-const var718!7 Int)
(declare-const var2546!2 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!30 176)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var2865!31 var3491)
(declare-const var661!1 Int)
(assert true)
;(assert (visitLabel/567040954 var2865!31 var2794!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r98) 

(declare-const var2865!32 var3491)
(declare-const var2794!3 var24)
(assert true)
;(assert (visitLabel/567040954 var2865!32 var2194!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r96) 

(declare-const var2865!33 var3491)
(declare-const var2194!3 var24)
(define-const var2418 var3179 (creator/1914013406 (cast-from-var292-to-var3654 var3822))) ; Statement: $r16 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert true)
;(assert (genCreateObject/-1744014466 var144!2 var2865!33 var3574!1 var1225!2 var1416!1 4 var3158!1 var1105!1 var2418)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r16) 

(declare-const var144!3 var1510)
(declare-const var2865!34 var3491)
(declare-const var3574!2 var3760)
(declare-const var1225!3 String)
(declare-const var1416!2 String)
(declare-const var1073!2 Int)
(declare-const var3158!2 Bool)
(declare-const var1105!2 var3941)
(declare-const var2418!1 var3179)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!34 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var2865!35 var3491)
(declare-const var1921!1 Int)
(declare-const var2546!3 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!35 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!36 var3491)
(declare-const var718!8 Int)
(declare-const var1277!7 Int)
(define-const var1038 String var367-TYPE_JSON_READER) ; Statement: $r17 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!36 182 var1038 "nextIfObjectStart" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r17, "nextIfObjectStart", "()Z", 0) 

(declare-const var2865!37 var3491)
(declare-const var110!5 Int)
(declare-const var1038!1 String)
(declare-const var49 String)
(declare-const var1938!3 String)
(declare-const var3470!6 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!37 87)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(87) 

(declare-const var2865!38 var3491)
(declare-const var3717 Int)
(define-const var1575 var3179 (creator/1914013406 (cast-from-var292-to-var3654 var3822))) ; Statement: $r18 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator> 
(assert true)
;(assert (genCreateObject/-1744014466 var144!3 var2865!38 var3574!2 var1225!3 var1416!2 4 var3158!2 var1105!2 var1575)) ; Statement: specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r18) 

(declare-const var144!4 var1510)
(declare-const var2865!39 var3491)
(declare-const var3574!3 var3760)
(declare-const var1225!4 String)
(declare-const var1416!3 String)
(declare-const var1073!3 Int)
(declare-const var3158!3 Bool)
(declare-const var1105!3 var3941)
(declare-const var1575!1 var3179)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!39 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var2865!40 var3491)
(declare-const var1921!2 Int)
(declare-const var2546!4 Int)
(define-const var3190 var24 var24-init) ; Statement: $r101 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3190)) ; Statement: specialinvoke $r101.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3190!1 var24)
(define-const var3406 var24 var24-init) ; Statement: $r102 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3406)) ; Statement: specialinvoke $r102.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3406!1 var24)
(define-const var2299 var24 var24-init) ; Statement: $r103 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2299)) ; Statement: specialinvoke $r103.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2299!1 var24)
(assert true)
;(assert (visitInsn/-918620226 var2865!40 3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(3) 

(declare-const var2865!41 var3491)
(declare-const var2979!1 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!41 54 8)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 8) 

(declare-const var2865!42 var3491)
(declare-const var3789!1 Int)
(declare-const var3597 Int)
(assert true)
;(assert (visitLabel/567040954 var2865!42 var3190!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r101) 

(declare-const var2865!43 var3491)
(declare-const var3190!2 var24)
(define-const var1739 var24 var24-init) ; Statement: $r104 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1739)) ; Statement: specialinvoke $r104.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1739!1 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!43 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!44 var3491)
(declare-const var718!9 Int)
(declare-const var1277!8 Int)
(define-const var345 String var367-TYPE_JSON_READER) ; Statement: $r23 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!44 182 var345 "nextIfObjectEnd" "()Z" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r23, "nextIfObjectEnd", "()Z", 0) 

(declare-const var2865!45 var3491)
(declare-const var110!6 Int)
(declare-const var345!1 String)
(declare-const var1070 String)
(declare-const var1938!4 String)
(declare-const var3470!7 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!45 154 var3406!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r102) 

(declare-const var2865!46 var3491)
(declare-const var3664 Int)
(declare-const var3406!2 var24)
 ; Statement: if i24 < 2 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104) 
(assert (< var1034 2)) ; Cond: i24 < 2 
(assert true)
;(assert (visitLabel/567040954 var2865!46 var1739!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104) 

(declare-const var2865!47 var3491)
(declare-const var1739!2 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!47 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!48 var3491)
(declare-const var718!10 Int)
(declare-const var1277!9 Int)
(define-const var2358 String var367-TYPE_JSON_READER) ; Statement: $r78 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!48 182 var2358 "readFieldNameHashCode" "()J" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r78, "readFieldNameHashCode", "()J", 0) 

(declare-const var2865!49 var3491)
(declare-const var110!7 Int)
(declare-const var2358!1 String)
(declare-const var1168 String)
(declare-const var23 String)
(declare-const var3470!8 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!49 92)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92) 

(declare-const var2865!50 var3491)
(declare-const var246 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!50 55 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9) 

(declare-const var2865!51 var3491)
(declare-const var1440 Int)
(declare-const var3306 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!51 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var2865!52 var3491)
(declare-const var3306!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!52 148)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var2865!53 var3491)
(declare-const var2241 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!53 153 var2299!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r103) 

(declare-const var2865!54 var3491)
(declare-const var2282!3 Int)
(declare-const var2299!2 var24)
(define-const var710 var24 var24-init) ; Statement: $r105 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var710)) ; Statement: specialinvoke $r105.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var710!1 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!54 22 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9) 

(declare-const var2865!55 var3491)
(declare-const var1144 Int)
(declare-const var3306!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!55 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2865!56 var3491)
(declare-const var718!11 Int)
(declare-const var3470!9 Int)
(assert true)
;(assert (visitFieldInsn/1331737383 var2865!56 180 var1225!4 "typeKeyHashCode" "J")) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r6, "typeKeyHashCode", "J") 

(declare-const var2865!57 var3491)
(declare-const var219 Int)
(declare-const var1225!5 String)
(declare-const var106 String)
(declare-const var1565 String)
(assert true)
;(assert (visitInsn/-918620226 var2865!57 148)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var2865!58 var3491)
(declare-const var2241!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!58 154 var710!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r105) 

(declare-const var2865!59 var3491)
(declare-const var3664!1 Int)
(declare-const var710!2 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!59 22 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9) 

(declare-const var2865!60 var3491)
(declare-const var1144!1 Int)
(declare-const var3306!3 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!60 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var2865!61 var3491)
(declare-const var3306!4 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!61 148)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var2865!62 var3491)
(declare-const var2241!2 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!62 153 var710!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r105) 

(declare-const var2865!63 var3491)
(declare-const var2282!4 Int)
(declare-const var710!3 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!63 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2865!64 var3491)
(declare-const var718!12 Int)
(declare-const var3470!10 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!64 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!65 var3491)
(declare-const var718!13 Int)
(declare-const var1277!10 Int)
(define-const var3284 String String-init) ; Statement: $r106 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3284)) ; Statement: specialinvoke $r106.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3284!1 String)
(assert (= var3284!1 ""))
(assert true)
(define-const var1857 String (append/672562846 var3284!1 "(")) ; Statement: $r81 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3284!2 String)
(assert (= var3284!2 (str.++ var3284!1 "(")))
(define-const var3105 String var367-DESC_JSON_READER) ; Statement: $r82 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER> 
(assert true)
(define-const var3606 String (append/672562846 var1857 var3105)) ; Statement: $r83 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r82) 
(declare-const var1857!1 String)
(assert (= var1857!1 (str.++ var1857 var3105)))
(assert true)
(define-const var792 String (append/672562846 var3606 ")Ljava/lang/Object;")) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljava/lang/Object;") 
(declare-const var3606!1 String)
(assert (= var3606!1 (str.++ var3606 ")Ljava/lang/Object;")))
(assert true)
(define-const var2579 String (toString/-2075883882 var792)) ; Statement: $r85 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!65 182 var1225!5 "autoType" var2579 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r6, "autoType", $r85, 0) 

(declare-const var2865!66 var3491)
(declare-const var110!8 Int)
(declare-const var1225!6 String)
(declare-const var3973 String)
(declare-const var2579!1 String)
(declare-const var3470!11 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!66 58 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6) 

(declare-const var2865!67 var3491)
(declare-const var1921!3 Int)
(declare-const var2546!5 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!67 167 var3406!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r102) 

(declare-const var2865!68 var3491)
(declare-const var1338!1 Int)
(declare-const var3406!3 var24)
(assert true)
;(assert (visitLabel/567040954 var2865!68 var710!3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r105) 

(declare-const var2865!69 var3491)
(declare-const var710!4 var24)
(define-const var3561 Int (getLength-Arr-var2304-1 var1236)) ; Statement: $i33 = lengthof r13 
 ; Statement: if $i33 <= 6 goto i41 = 0 
(assert (<= var3561 6)) ; Cond: $i33 <= 6 
(define-const var3659 Int 0) ; Statement: i41 = 0 
(assert true) ; Non Conditional
(define-const var75 Int (getLength-Arr-var2304-1 var1236)) ; Statement: $i4 = lengthof r13 
 ; Statement: if i41 >= $i4 goto $r112 = new com.alibaba.fastjson2.internal.asm.Label 
(assert (>= var3659 var75)) ; Cond: i41 >= $i4 
(define-const var3750 var24 var24-init) ; Statement: $r112 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3750)) ; Statement: specialinvoke $r112.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3750!1 var24)
(define-const var806 var1984 var1984-SupportSmartMatch) ; Statement: $r25 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature SupportSmartMatch> 
(define-const var2532 Int (mask/1918454044 var806)) ; Statement: $l5 = $r25.<com.alibaba.fastjson2.JSONReader$Feature: long mask> 
(define-const var2755 Int (bv2nat (bvand ((_ int2bv 64) var2793) ((_ int2bv 64) var2532)))) ; Statement: $l6 = l0 & $l5 
(define-const var897 Int (ite (> var2755 0) 1 (ite (< var2755 0) (- 1) 0))) ; Statement: $b7 = $l6 cmp 0L 
 ; Statement: if $b7 != 0 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (= var897 0))) ; Cond: $b7 != 0 
(assert true)
;(assert (visitVarInsn/-915853820 var2865!69 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!70 var3491)
(declare-const var718!14 Int)
(declare-const var1277!11 Int)
(define-const var3410 String var367-TYPE_JSON_READER) ; Statement: $r26 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!70 182 var3410 "getNameHashCodeLCase" "()J" (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r26, "getNameHashCodeLCase", "()J", 0) 

(declare-const var2865!71 var3491)
(declare-const var110!9 Int)
(declare-const var3410!1 String)
(declare-const var2595 String)
(declare-const var23!1 String)
(declare-const var3470!12 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!71 55 9)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9) 

(declare-const var2865!72 var3491)
(declare-const var1440!1 Int)
(declare-const var3306!5 Int)
(define-const var1513 Int 0) ; Statement: i43 = 0 
(assert true) ; Non Conditional
(define-const var2273 Int (getLength-Arr-var2304-1 var1236)) ; Statement: $i44 = lengthof r13 
 ; Statement: if i43 >= $i44 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112) 
(assert (>= var1513 var2273)) ; Cond: i43 >= $i44 
(assert true)
;(assert (visitLabel/567040954 var2865!72 var3750!1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112) 

(declare-const var2865!73 var3491)
(declare-const var3750!2 var24)
(assert true) ; Non Conditional
(assert true)
;(assert (visitVarInsn/-915853820 var2865!73 25 0)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2865!74 var3491)
(declare-const var718!15 Int)
(declare-const var3470!13 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!74 25 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var2865!75 var3491)
(declare-const var718!16 Int)
(declare-const var1277!12 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!75 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var2865!76 var3491)
(declare-const var718!17 Int)
(declare-const var2546!6 Int)
(define-const var3872 String var367-TYPE_OBJECT_READER_ADAPTER) ; Statement: $r28 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER> 
(define-const var2536 String var1510-METHOD_DESC_PROCESS_EXTRA) ; Statement: $r27 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_PROCESS_EXTRA> 
(assert true)
;(assert (visitMethodInsn/-527702312 var2865!76 182 var3872 "processExtra" var2536 (ite (= 1 0) true false))) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r28, "processExtra", $r27, 0) 

(declare-const var2865!77 var3491)
(declare-const var110!10 Int)
(declare-const var3872!1 String)
(declare-const var3250 String)
(declare-const var2536!1 String)
(declare-const var3470!14 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!77 167 var2299!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r103) 

(declare-const var2865!78 var3491)
(declare-const var1338!2 Int)
(declare-const var2299!3 var24)
(assert true)
;(assert (visitLabel/567040954 var2865!78 var2299!3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r103) 

(declare-const var2865!79 var3491)
(declare-const var2299!4 var24)
(assert true)
;(assert (visitIincInsn/874918902 var2865!79 8 1)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitIincInsn(int,int)>(8, 1) 

(declare-const var2865!80 var3491)
(declare-const var3597!1 Int)
(declare-const var1277!13 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var2865!80 167 var3190!2)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r101) 

(declare-const var2865!81 var3491)
(declare-const var1338!3 Int)
(declare-const var3190!3 var24)
(assert true)
;(assert (visitLabel/567040954 var2865!81 var3406!3)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r102) 

(declare-const var2865!82 var3491)
(declare-const var3406!4 var24)
(assert true)
;(assert (visitVarInsn/-915853820 var2865!82 25 6)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6) 

(declare-const var2865!83 var3491)
(declare-const var718!18 Int)
(declare-const var2546!7 Int)
(assert true)
;(assert (visitInsn/-918620226 var2865!83 176)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var2865!84 var3491)
(declare-const var661!2 Int)
(assert true)
;(assert (visitMaxs/516991312 var2865!84 5 10)) ; Statement: virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 10) 

(declare-const var2865!85 var3491)
(declare-const var2962 Int)
(declare-const var1320 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {objectClass/-356097418=([com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext], java.lang.Class), mask/1918454044=([com.alibaba.fastjson2.JSONReader$Feature], long), visitMethod/328969596=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, java.lang.String, java.lang.String, int], com.alibaba.fastjson2.internal.asm.MethodWriter), genCheckAutoType/1507281336=([com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, java.lang.String, com.alibaba.fastjson2.internal.asm.MethodWriter, int, int, int, int, int], void), var3588-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var24-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), creator/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.util.function.Supplier), cast-from-var292-to-var3654=([com.alibaba.fastjson2.reader.ObjectReaderAdapter], com.alibaba.fastjson2.reader.ObjectReaderBean), genCreateObject/-1744014466=([com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext, java.lang.String, java.lang.String, int, boolean, java.lang.reflect.Constructor, java.util.function.Supplier], void), getLength-Arr-var2304-1=([com.alibaba.fastjson2.reader.FieldReader[]], int), visitLdcInsn/868177477=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitIincInsn/874918902=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitMaxs/516991312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void)}
; {var1510=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, var144=r5, var3760=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext, var3574=r0, var3941=java.lang.reflect.Constructor, var1105=r11, var2793=l0, var1416=r10, var343=null_type, var2304=com.alibaba.fastjson2.reader.FieldReader, var1236=r13, var2378=com.alibaba.fastjson2.internal.asm.ClassWriter, var3164=r3, var1225=r6, var292=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var3822=r12, var1958=r1, var1984=com.alibaba.fastjson2.JSONReader$Feature, var2171=$r2, var2698=$l1, var3201=$l2, var2948=$b3, var1988=$z4, var3158=z0, var937=$r4, var3491=com.alibaba.fastjson2.internal.asm.MethodWriter, var2865=$r66, var1277=1, var218=2, var2979=3, var1073=4, var1242=15, var3961=i23, var3588=java.util.HashMap, var3825=$r94, var24=com.alibaba.fastjson2.internal.asm.Label, var3907=$r95, var718=25, var367=com.alibaba.fastjson2.internal.asm.ASMUtils, var2603=$r9, var110=182, var3999="nextIfNull", var1938="()Z", var3470=0, var2282=153, var661=176, var2194=$r96, var1034=i24, var3463=i25, var1357=$r97, var2794=$r98, var3350=$r70, var2023="isArray", var2916=$r71, var3465="isSupportBeanArray", var3179=java.util.function.Supplier, var3654=com.alibaba.fastjson2.reader.ObjectReaderBean, var3271=$r72, var1921=58, var2546=6, var2190=$r99, var1652=$r100, var2285=$r75, var2054="startArray", var1626="()I", var313=89, var3789=54, var455=7, var3357=$i26, var2309=160, var1149=i27, var2562=$i28, var1338=167, var1550=21, var2381=$r15, var2057=$r14, var1882="readArrayMappingJSONBObject0", var2418=$r16, var1038=$r17, var49="nextIfObjectStart", var3717=87, var1575=$r18, var3190=$r101, var3406=$r102, var2299=$r103, var3597=8, var1739=$r104, var345=$r23, var1070="nextIfObjectEnd", var3664=154, var2358=$r78, var1168="readFieldNameHashCode", var23="()J", var246=92, var1440=55, var3306=9, var2241=148, var710=$r105, var1144=22, var219=180, var106="typeKeyHashCode", var1565="J", var3284=$r106, var1857=$r81, var3105=$r82, var3606=$r83, var792=$r84, var2579=$r85, var3973="autoType", var3561=$i33, var3659=i41, var75=$i4, var3750=$r112, var806=$r25, var2532=$l5, var2755=$l6, var897=$b7, var3410=$r26, var2595="getNameHashCodeLCase", var1513=i43, var2273=$i44, var3872=$r28, var2536=$r27, var3250="processExtra", var2962=5, var1320=10}
; {com.alibaba.fastjson2.reader.ObjectReaderCreatorASM=var1510, r5=var144, com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext=var3760, r0=var3574, java.lang.reflect.Constructor=var3941, r11=var1105, l0=var2793, r10=var1416, null_type=var343, com.alibaba.fastjson2.reader.FieldReader=var2304, r13=var1236, com.alibaba.fastjson2.internal.asm.ClassWriter=var2378, r3=var3164, r6=var1225, com.alibaba.fastjson2.reader.ObjectReaderAdapter=var292, r12=var3822, r1=var1958, com.alibaba.fastjson2.JSONReader$Feature=var1984, $r2=var2171, $l1=var2698, $l2=var3201, $b3=var2948, $z4=var1988, z0=var3158, $r4=var937, com.alibaba.fastjson2.internal.asm.MethodWriter=var3491, $r66=var2865, 1=var1277, 2=var218, 3=var2979, 4=var1073, 15=var1242, i23=var3961, java.util.HashMap=var3588, $r94=var3825, com.alibaba.fastjson2.internal.asm.Label=var24, $r95=var3907, 25=var718, com.alibaba.fastjson2.internal.asm.ASMUtils=var367, $r9=var2603, 182=var110, "nextIfNull"=var3999, "()Z"=var1938, 0=var3470, 153=var2282, 176=var661, $r96=var2194, i24=var1034, i25=var3463, $r97=var1357, $r98=var2794, $r70=var3350, "isArray"=var2023, $r71=var2916, "isSupportBeanArray"=var3465, java.util.function.Supplier=var3179, com.alibaba.fastjson2.reader.ObjectReaderBean=var3654, $r72=var3271, 58=var1921, 6=var2546, $r99=var2190, $r100=var1652, $r75=var2285, "startArray"=var2054, "()I"=var1626, 89=var313, 54=var3789, 7=var455, $i26=var3357, 160=var2309, i27=var1149, $i28=var2562, 167=var1338, 21=var1550, $r15=var2381, $r14=var2057, "readArrayMappingJSONBObject0"=var1882, $r16=var2418, $r17=var1038, "nextIfObjectStart"=var49, 87=var3717, $r18=var1575, $r101=var3190, $r102=var3406, $r103=var2299, 8=var3597, $r104=var1739, $r23=var345, "nextIfObjectEnd"=var1070, 154=var3664, $r78=var2358, "readFieldNameHashCode"=var1168, "()J"=var23, 92=var246, 55=var1440, 9=var3306, 148=var2241, $r105=var710, 22=var1144, 180=var219, "typeKeyHashCode"=var106, "J"=var1565, $r106=var3284, $r81=var1857, $r82=var3105, $r83=var3606, $r84=var792, $r85=var2579, "autoType"=var3973, $i33=var3561, i41=var3659, $i4=var75, $r112=var3750, $r25=var806, $l5=var2532, $l6=var2755, $b7=var897, $r26=var3410, "getNameHashCodeLCase"=var2595, i43=var1513, $i44=var2273, $r28=var3872, $r27=var2536, "processExtra"=var3250, 5=var2962, 10=var1320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext;	r11 := @parameter1: java.lang.reflect.Constructor;	l0 := @parameter2: long;	r10 := @parameter3: java.lang.String;	r13 := @parameter4: com.alibaba.fastjson2.reader.FieldReader[];	r3 := @parameter5: com.alibaba.fastjson2.internal.asm.ClassWriter;	r6 := @parameter6: java.lang.String;	r12 := @parameter7: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	r1 = r0.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext: java.lang.Class objectClass>;	$r2 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature FieldBased>;	$l1 = $r2.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l2 = l0 & $l1;	$b3 = $l2 cmp 0L;	if $b3 == 0 goto $z4 = 0;	$z4 = 1;	goto [?= z0 = $z4];	z0 = $z4;	$r4 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_OBJECT>;	$r66 = virtualinvoke r3.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "readJSONBObject", $r4, 2048);	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCheckAutoType(java.lang.String,com.alibaba.fastjson2.internal.asm.MethodWriter,int,int,int,int,int)>(r6, $r66, 1, 2, 3, 4, 15);	i23 = 16;	$r94 = new java.util.HashMap;	specialinvoke $r94.<java.util.HashMap: void <init>()>();	$r95 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r95.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r9 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "nextIfNull", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r95);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r95);	if r1 == null goto $r96 = new com.alibaba.fastjson2.internal.asm.Label;	$r96 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r96.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	i24 = 0;	i25 = 0;	$r97 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r97.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r98 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r98.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r70 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r70, "isArray", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r96);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r71 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r71, "isSupportBeanArray", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r98);	$r72 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r72);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	$r99 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r99.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r100 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r100.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r75 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r75, "startArray", "()I", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(89);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 7);	$i26 = lengthof r13;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(int)>($i26);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(160, $r100);	i27 = 0;	$i28 = lengthof r13;	if i27 >= $i28 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r99);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r100);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, 7);	$r15 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER>;	$r14 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_READ_ARRAY_MAPPING_JSONB_OBJECT0>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "readArrayMappingJSONBObject0", $r14, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r99);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r98);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r96);	$r16 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r16);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r17 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r17, "nextIfObjectStart", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(87);	$r18 = r12.<com.alibaba.fastjson2.reader.ObjectReaderAdapter: java.util.function.Supplier creator>;	specialinvoke r5.<com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: void genCreateObject(com.alibaba.fastjson2.internal.asm.MethodWriter,com.alibaba.fastjson2.reader.ObjectReaderCreatorASM$ObjectWriteContext,java.lang.String,java.lang.String,int,boolean,java.lang.reflect.Constructor,java.util.function.Supplier)>($r66, r0, r6, r10, 4, z0, r11, $r18);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	$r101 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r101.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r102 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r102.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r103 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r103.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(3);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(54, 8);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r101);	$r104 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r104.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r23 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r23, "nextIfObjectEnd", "()Z", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r102);	if i24 < 2 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r104);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r78 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r78, "readFieldNameHashCode", "()J", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r103);	$r105 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r105.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r6, "typeKeyHashCode", "J");	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r105);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, 9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r105);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r106 = new java.lang.StringBuilder;	specialinvoke $r106.<java.lang.StringBuilder: void <init>()>();	$r81 = virtualinvoke $r106.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r82 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER>;	$r83 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r82);	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljava/lang/Object;");	$r85 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r6, "autoType", $r85, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r102);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r105);	$i33 = lengthof r13;	if $i33 <= 6 goto i41 = 0;	i41 = 0;	$i4 = lengthof r13;	if i41 >= $i4 goto $r112 = new com.alibaba.fastjson2.internal.asm.Label;	$r112 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r112.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r25 = <com.alibaba.fastjson2.JSONReader$Feature: com.alibaba.fastjson2.JSONReader$Feature SupportSmartMatch>;	$l5 = $r25.<com.alibaba.fastjson2.JSONReader$Feature: long mask>;	$l6 = l0 & $l5;	$b7 = $l6 cmp 0L;	if $b7 != 0 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r26 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r26, "getNameHashCodeLCase", "()J", 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, 9);	i43 = 0;	$i44 = lengthof r13;	if i43 >= $i44 goto virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r112);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	$r28 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER>;	$r27 = <com.alibaba.fastjson2.reader.ObjectReaderCreatorASM: java.lang.String METHOD_DESC_PROCESS_EXTRA>;	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r28, "processExtra", $r27, 0);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r103);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r103);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitIincInsn(int,int)>(8, 1);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r101);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r102);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 6);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke $r66.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 10);	return
;block_num 14