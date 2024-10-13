(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1446 0)
(declare-sort var1362 0)
(declare-sort var3387 0)
(declare-sort var380 0)
(declare-sort var2369 0)
(declare-sort var1940 0)
(declare-sort var2025 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1362) var380)
(declare-fun format/-2048851183 (var3387) String)
(declare-fun classNameType/1968396404 (var1362) String)
(declare-fun var/1427438936 (var1362 var2369) Int)
(declare-fun cast-from-ClassObject-to-var2369 (ClassObject) var2369)
(declare-fun cast-from-String-to-var2369 (String) var2369)
(declare-fun var1940-init () var1940)
(declare-fun <init>/-2069075760 (var1940) void)
(declare-fun genGetObject/-2113871742 (var1446 var1362 var3387 Int Int) void)
(declare-fun visitInsn/-918620226 (var380 Int) void)
(declare-fun visitVarInsn/-915853820 (var380 Int Int) void)
(declare-fun visitJumpInsn/413071865 (var380 Int var1940) void)
(declare-fun defaultValue/-2048851183 (var3387) var2369)
(declare-fun visitLabel/567040954 (var380 var1940) void)
(declare-fun features/-2048851183 (var3387) Int)
(declare-fun mask/-2077367092 (var2025) Int)
(declare-fun gwFieldName/844239833 (var1446 var1362 var3387 Int) void)
(declare-fun visitMethodInsn/-527702312 (var380 Int String String String Bool) void)
(declare-const null-var1446 var1446)
(declare-const null-var1362 var1362)
(declare-const null-var3387 var3387)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const Int-TYPE ClassObject)
(declare-const null-var2369 var2369)
(declare-const var2025-WriteNonStringValueAsString var2025)
(declare-const var2025-WriteLongAsString var2025)
(declare-const var2025-BrowserCompatible var2025)
(declare-const var1074-TYPE_JSON_WRITER String)
(declare-const var3225 var1446) ; Statement: r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3225 null-var1446)))
(declare-const var487 var1362) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var487 null-var1362)))
(declare-const var1122 var3387) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1122 null-var3387)))
(declare-const var3051 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3051 null-Int)))
(declare-const var3382 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var3382 null-Int)))
(declare-const var2218 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2218 null-Bool)))
(define-const var931 var380 (mw/1968396404 var487)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2157 String (format/-2048851183 var1122)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format> 
(define-const var1785 String (classNameType/1968396404 var487)) ; Statement: r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var3163 ClassObject Int-TYPE) ; Statement: $r5 = <java.lang.Long: java.lang.Class TYPE> 
(assert true)
(define-const var3832 Int (var/1427438936 var487 (cast-from-ClassObject-to-var2369 var3163))) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5) 
(assert true)
(define-const var1459 Int (var/1427438936 var487 (cast-from-String-to-var2369 "WRITE_DEFAULT_VALUE"))) ; Statement: i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE") 
(define-const var2374 var1940 var1940-init) ; Statement: $r6 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2374)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2374!1 var1940)
(define-const var428 var1940 var1940-init) ; Statement: $r7 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var428)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var428!1 var1940)
(assert true)
;(assert (genGetObject/-2113871742 var3225 var487 var1122 var3382 var3051)) ; Statement: virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3) 

(declare-const var3225!1 var1446)
(declare-const var487!1 var1362)
(declare-const var1122!1 var3387)
(declare-const var3382!1 Int)
(declare-const var3051!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var931 92)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92) 

(declare-const var931!1 var380)
(declare-const var3954 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var931!1 55 var3832)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0) 

(declare-const var931!2 var380)
(declare-const var2727 Int)
(declare-const var3832!1 Int)
(assert true)
;(assert (visitInsn/-918620226 var931!2 9)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9) 

(declare-const var931!3 var380)
(declare-const var3460 Int)
(assert true)
;(assert (visitInsn/-918620226 var931!3 148)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148) 

(declare-const var931!4 var380)
(declare-const var3976 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var931!4 154 var2374!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6) 

(declare-const var931!5 var380)
(declare-const var2117 Int)
(declare-const var2374!2 var1940)
(define-const var3258 var2369 (defaultValue/-2048851183 var1122!1)) ; Statement: $r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue> 
 ; Statement: if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 
(assert (not (not (= var3258 null-var2369)))) ; Negate: Cond: $r9 != null  
(assert true)
;(assert (visitVarInsn/-915853820 var931!5 21 var1459)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1) 

(declare-const var931!6 var380)
(declare-const var2534 Int)
(declare-const var1459!1 Int)
(assert true)
;(assert (visitJumpInsn/413071865 var931!6 153 var2374!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6) 

(declare-const var931!7 var380)
(declare-const var908 Int)
(declare-const var2374!3 var1940)
(assert true)
;(assert (visitJumpInsn/413071865 var931!7 167 var428!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7) 

(declare-const var931!8 var380)
(declare-const var3917 Int)
(declare-const var428!2 var1940)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var931!8 var2374!3)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6) 

(declare-const var931!9 var380)
(declare-const var2374!4 var1940)
(define-const var1630 String "iso8601") ; Statement: $r10 = "iso8601" 
(assert true)
(define-const var1391 Bool (= var1630 var2157)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 
(assert (not (not (= (ite var1391 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var403 Int (features/-2048851183 var1122!1)) ; Statement: $l9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: long features> 
(define-const var789 var2025 var2025-WriteNonStringValueAsString) ; Statement: $r15 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNonStringValueAsString> 
(define-const var2064 Int (mask/-2077367092 var789)) ; Statement: $l5 = $r15.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1129 var2025 var2025-WriteLongAsString) ; Statement: $r16 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteLongAsString> 
(define-const var1691 Int (mask/-2077367092 var1129)) ; Statement: $l4 = $r16.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1155 Int (bv2nat (bvor ((_ int2bv 64) var2064) ((_ int2bv 64) var1691)))) ; Statement: $l7 = $l5 | $l4 
(define-const var3175 var2025 var2025-BrowserCompatible) ; Statement: $r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserCompatible> 
(define-const var1838 Int (mask/-2077367092 var3175)) ; Statement: $l6 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3998 Int (bv2nat (bvor ((_ int2bv 64) var1155) ((_ int2bv 64) var1838)))) ; Statement: $l8 = $l7 | $l6 
(define-const var1779 Int (bv2nat (bvand ((_ int2bv 64) var403) ((_ int2bv 64) var3998)))) ; Statement: $l10 = $l9 & $l8 
(define-const var2376 Int (ite (> var1779 0) 1 (ite (< var1779 0) (- 1) 0))) ; Statement: $b11 = $l10 cmp 0L 
 ; Statement: if $b11 == 0 goto specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 
(assert (= var2376 0)) ; Cond: $b11 == 0 
(assert true)
;(assert (gwFieldName/844239833 var3225!1 var487!1 var1122!1 var3382!1)) ; Statement: specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2) 

(declare-const var3225!2 var1446)
(declare-const var487!2 var1362)
(declare-const var1122!2 var3387)
(declare-const var3382!2 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var931!9 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var931!10 var380)
(declare-const var1390 Int)
(declare-const var1126 Int)
(assert true)
;(assert (visitVarInsn/-915853820 var931!10 22 var3832!1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0) 

(declare-const var931!11 var380)
(declare-const var3582 Int)
(declare-const var3832!2 Int)
(define-const var1034 String var1074-TYPE_JSON_WRITER) ; Statement: $r18 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
;(assert (visitMethodInsn/-527702312 var931!11 182 var1034 "writeInt64" "(J)V" (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r18, "writeInt64", "(J)V", 0) 

(declare-const var931!12 var380)
(declare-const var3927 Int)
(declare-const var1034!1 String)
(declare-const var2564 String)
(declare-const var863 String)
(declare-const var173 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (visitLabel/567040954 var931!12 var428!2)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7) 

(declare-const var931!13 var380)
(declare-const var428!3 var1940)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), format/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-ClassObject-to-var2369=([java.lang.Class], java.lang.Object), cast-from-String-to-var2369=([java.lang.String], java.lang.Object), var1940-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitJumpInsn/413071865=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, com.alibaba.fastjson2.internal.asm.Label], void), defaultValue/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Object), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), features/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], long), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), gwFieldName/844239833=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1446=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3225=r8, var1362=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var487=r0, var3387=com.alibaba.fastjson2.writer.FieldWriter, var1122=r2, var3051=i3, var3382=i2, var2218=z1, var380=com.alibaba.fastjson2.internal.asm.MethodWriter, var931=r1, var2157=r3, var1785=r4, var3163=$r5, var2369=java.lang.Object, var3832=i0, var1459=i1, var1940=com.alibaba.fastjson2.internal.asm.Label, var2374=$r6, var428=$r7, var3954=92, var2727=55, var3460=9, var3976=148, var2117=154, var3258=$r9, var2534=21, var908=153, var3917=167, var1630=$r10, var1391=$z0, var403=$l9, var2025=com.alibaba.fastjson2.JSONWriter$Feature, var789=$r15, var2064=$l5, var1129=$r16, var1691=$l4, var1155=$l7, var3175=$r17, var1838=$l6, var3998=$l8, var1779=$l10, var2376=$b11, var1390=25, var1126=1, var3582=22, var1074=com.alibaba.fastjson2.internal.asm.ASMUtils, var1034=$r18, var3927=182, var2564="writeInt64", var863="(J)V", var173=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1446, r8=var3225, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1362, r0=var487, com.alibaba.fastjson2.writer.FieldWriter=var3387, r2=var1122, i3=var3051, i2=var3382, z1=var2218, com.alibaba.fastjson2.internal.asm.MethodWriter=var380, r1=var931, r3=var2157, r4=var1785, $r5=var3163, java.lang.Object=var2369, i0=var3832, i1=var1459, com.alibaba.fastjson2.internal.asm.Label=var1940, $r6=var2374, $r7=var428, 92=var3954, 55=var2727, 9=var3460, 148=var3976, 154=var2117, $r9=var3258, 21=var2534, 153=var908, 167=var3917, $r10=var1630, $z0=var1391, $l9=var403, com.alibaba.fastjson2.JSONWriter$Feature=var2025, $r15=var789, $l5=var2064, $r16=var1129, $l4=var1691, $l7=var1155, $r17=var3175, $l6=var1838, $l8=var3998, $l10=var1779, $b11=var2376, 25=var1390, 1=var1126, 22=var3582, com.alibaba.fastjson2.internal.asm.ASMUtils=var1074, $r18=var1034, 182=var3927, "writeInt64"=var2564, "(J)V"=var863, 0=var173}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i2 := @parameter3: int;	z1 := @parameter4: boolean;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String format>;	r4 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r5 = <java.lang.Long: java.lang.Class TYPE>;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r5);	i1 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>("WRITE_DEFAULT_VALUE");	$r6 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r6.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r7 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r7.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	virtualinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i2, i3);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(92);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(55, i0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(9);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(148);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(154, $r6);	$r9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Object defaultValue>;	if $r9 != null goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(21, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(153, $r6);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitJumpInsn(int,com.alibaba.fastjson2.internal.asm.Label)>(167, $r7);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r6);	$r10 = "iso8601";	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 != 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$l9 = r2.<com.alibaba.fastjson2.writer.FieldWriter: long features>;	$r15 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteNonStringValueAsString>;	$l5 = $r15.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$r16 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature WriteLongAsString>;	$l4 = $r16.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l7 = $l5 | $l4;	$r17 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BrowserCompatible>;	$l6 = $r17.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l8 = $l7 | $l6;	$l10 = $l9 & $l8;	$b11 = $l10 cmp 0L;	if $b11 == 0 goto specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	specialinvoke r8.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwFieldName(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int)>(r0, r2, i2);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(22, i0);	$r18 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r18, "writeInt64", "(J)V", 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r7);	return
;block_num 6