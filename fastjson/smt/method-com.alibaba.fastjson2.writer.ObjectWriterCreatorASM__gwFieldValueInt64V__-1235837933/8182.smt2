(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3016 0)
(declare-sort var1752 0)
(declare-sort var1375 0)
(declare-sort var3865 0)
(declare-sort var2245 0)
(declare-sort var1903 0)
(declare-sort var1653 0)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1752) var3865)
(declare-fun format/-2048851183 (var1375) String)
(declare-fun classNameType/1968396404 (var1752) String)
(declare-fun var/1427438936 (var1752 var2245) Int)
(declare-fun cast-from-ClassObject-to-var2245 (ClassObject) var2245)
(declare-fun cast-from-String-to-var2245 (String) var2245)
(declare-fun var1903-init () var1903)
(declare-fun <init>/-2069075760 (var1903) void)
(declare-fun genGetObject/-2113871742 (var3016 var1752 var1375 Int Int) void)
(declare-fun visitInsn/-918620226 (var3865 Int) void)
(declare-fun visitVarInsn/-915853820 (var3865 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var3865 Int var1903) void)
(declare-fun defaultValue/-2048851183 (var1375) var2245)
(declare-fun visitLabel/567040954 (var3865 var1903) void)
(declare-fun features/-2048851183 (var1375) Int)
(declare-fun mask/-2077367092 (var1653) Int)
(declare-fun gwFieldName/844239833 (var3016 var1752 var1375 Int) void)
(declare-fun visitMethodInsn/-527702312 (var3865 Int String String String Bool) void)
(declare-const null-var3016 var3016)
(declare-const null-var1752 var1752)
(declare-const null-var1375 var1375)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var2245 var2245)
(declare-const var1653-WriteNonStringValueAsString var1653)
(declare-const var1653-WriteLongAsString var1653)
(declare-const var1653-BrowserCompatible var1653)
(declare-const var2200-TYPE_JSON_WRITER String)
(declare-const var534 var3016) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var534 null-var3016)))
(declare-const var1862 var1752) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1862 null-var1752)))
(declare-const var1125 var1375) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1125 null-var1375)))
(declare-const var3198 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3198 null-Int)))
(declare-const var1180 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1180 null-Int)))
(declare-const var3037 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var3037 null-Bool)))
(define-const var3944 var3865 (mw/1968396404 var1862)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1941 String (format/-2048851183 var1125)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var1878 String (classNameType/1968396404 var1862)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var2142 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Long: java.lang.Class TYPE> 
(assert true)
(define-const var3459 Int (var/1427438936 var1862 (cast-from-ClassObject-to-var2245 var2142))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var3657 Int (var/1427438936 var1862 (cast-from-String-to-var2245 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var945 var1903 var1903-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var945)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var945!1 var1903)
(define-const var1670 var1903 var1903-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1670)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1670!1 var1903)
(assert true)
;(assert (genGetObject/-2113871742 var534 var1862 var1125 var1180 var3198)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var534!1 var3016)
(declare-const var1862!1 var1752)
(declare-const var1125!1 var1375)
(declare-const var1180!1 Int)
(declare-const var3198!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var3944 92)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92) 

(declare-const var3944!1 var3865)
(declare-const var3264 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3944!1 55 var3459)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0) 

(declare-const var3944!2 var3865)
(declare-const var3043 Int)
(declare-const var3459!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var3944!2 9)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var3944!3 var3865)
(declare-const var2991 Int)
(assert true)
;(assert (visitInsn/-918620226 var3944!3 148)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var3944!4 var3865)
(declare-const var1408 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var3944!4 154 var945!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var3944!5 var3865)
(declare-const var1061 Int)
(declare-const var945!2 var1903)
(define-const var1860 var2245 (defaultValue/-2048851183 var1125!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (= var1860 null-var2245))) ; Cond: $r9 != null 
(assert true)
;(assert (visitLabel/567040954 var3944!5 var945!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var3944!6 var3865)
(declare-const var945!3 var1903)
(define-const var3449 String "iso8601") ; Statement: $r10 = "iso8601" 
(assert true)
(define-const var3934 Bool (= var3449 var1941)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 
(assert (not (not (= (ite var3934 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var868 Int (features/-2048851183 var1125!1)) ; Statement: $l9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var3529 var1653 var1653-WriteNonStringValueAsString) ; Statement: $r15 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNonStringValueAsString> 
(define-const var3334 Int (mask/-2077367092 var3529)) ; Statement: $l5 = $r15.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1338 var1653 var1653-WriteLongAsString) ; Statement: $r16 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteLongAsString> 
(define-const var169 Int (mask/-2077367092 var1338)) ; Statement: $l4 = $r16.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var433 Int (bv2nat (bvor ((_ int2bv 64) var3334) ((_ int2bv 64) var169)))) ; Statement: $l7 = $l5 | $l4 
(define-const var662 var1653 var1653-BrowserCompatible) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserCompatible> 
(define-const var894 Int (mask/-2077367092 var662)) ; Statement: $l6 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var449 Int (bv2nat (bvor ((_ int2bv 64) var433) ((_ int2bv 64) var894)))) ; Statement: $l8 = $l7 | $l6 
(define-const var295 Int (bv2nat (bvand ((_ int2bv 64) var868) ((_ int2bv 64) var449)))) ; Statement: $l10 = $l9 & $l8 
(define-const var2010 Int (ite (> var295 0) 1 (ite (< var295 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 
(assert (= var2010 0)) ; Cond: $b11 == 0 
(assert true)
;(assert (gwFieldName/844239833 var534!1 var1862!1 var1125!1 var1180!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var534!2 var3016)
(declare-const var1862!2 var1752)
(declare-const var1125!2 var1375)
(declare-const var1180!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3944!6 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3944!7 var3865)
(declare-const var3854 Int)
(declare-const var1460 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var3944!7 22 var3459!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0) 

(declare-const var3944!8 var3865)
(declare-const var35 Int)
(declare-const var3459!2 Int)
(define-const var2063 String var2200-TYPE_JSON_WRITER) ; Statement: $r18 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3944!8 182 var2063 "writeInt64" "(J)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r18, "writeInt64", "(J)V", 0) 

(declare-const var3944!9 var3865)
(declare-const var2993 Int)
(declare-const var2063!1 String)
(declare-const var3641 String)
(declare-const var1355 String)
(declare-const var24 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var3944!9 var1670!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var3944!10 var3865)
(declare-const var1670!2 var1903)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var2245=([java.lang.Class], java.lang.Object), cast-from-String-to-var2245=([java.lang.String], java.lang.Object), var1903-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3016=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var534=r8, var1752=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1862=r0, var1375=com.alibaba.fastjson2.writer.FieldWriter, var1125=r2, var3198=i3, var1180=i2, var3037=z1, var3865=com.alibaba.fastjson2.internal.asm.MethodWriter, var3944=r1, var1941=r3, var1878=r4, var2142=$r5, var2245=java.lang.Object, var3459=i0, var3657=i1, var1903=com.alibaba.fastjson2.internal.asm.Label, var945=$r6, var1670=$r7, var3264=92, var3043=55, var2991=9, var1408=148, var1061=154, var1860=$r9, var3449=$r10, var3934=$z0, var868=$l9, var1653=com.alibaba.fastjson2.JSONWriter$Feature, var3529=$r15, var3334=$l5, var1338=$r16, var169=$l4, var433=$l7, var662=$r17, var894=$l6, var449=$l8, var295=$l10, var2010=$b11, var3854=25, var1460=1, var35=22, var2200=com.alibaba.fastjson2.internal.asm.ASMUtils, var2063=$r18, var2993=182, var3641="writeInt64", var1355="(J)V", var24=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3016, r8=var534, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1752, r0=var1862, com.alibaba.fastjson2.writer.FieldWriter=var1375, r2=var1125, i3=var3198, i2=var1180, z1=var3037, com.alibaba.fastjson2.internal.asm.MethodWriter=var3865, r1=var3944, r3=var1941, r4=var1878, $r5=var2142, java.lang.Object=var2245, i0=var3459, i1=var3657, com.alibaba.fastjson2.internal.asm.Label=var1903, $r6=var945, $r7=var1670, 92=var3264, 55=var3043, 9=var2991, 148=var1408, 154=var1061, $r9=var1860, $r10=var3449, $z0=var3934, $l9=var868, com.alibaba.fastjson2.JSONWriter$Feature=var1653, $r15=var3529, $l5=var3334, $r16=var1338, $l4=var169, $l7=var433, $r17=var662, $l6=var894, $l8=var449, $l10=var295, $b11=var2010, 25=var3854, 1=var1460, 22=var35, com.alibaba.fastjson2.internal.asm.ASMUtils=var2200, $r18=var2063, 182=var2993, "writeInt64"=var3641, "(J)V"=var1355, 0=var24}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Long: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	$r10 = "iso8601";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$l9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$r15 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNonStringValueAsString>;	$l5 = $r15.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r16 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteLongAsString>;	$l4 = $r16.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l7 = $l5 | $l4;	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserCompatible>;	$l6 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l8 = $l7 | $l6;	$l10 = $l9 & $l8;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0);	$r18 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r18, "writeInt64", "(J)V", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 5