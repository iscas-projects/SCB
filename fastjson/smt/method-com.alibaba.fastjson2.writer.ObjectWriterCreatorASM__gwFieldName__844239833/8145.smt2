(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3029 0)
(declare-sort var3044 0)
(declare-sort var3138 0)
(declare-sort var3887 0)
(declare-sort var141 0)
(declare-sort var3445 0)
(declare-sort var2059 0)
(declare-sort var1177 0)
(declare-sort var2647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3044) var3887)
(declare-fun classNameType/1968396404 (var3044) String)
(declare-fun var141-init () var141)
(declare-fun <init>/-2069075760 (var141) void)
(declare-fun jsonb/1968396404 (var3044) Bool)
(declare-fun fieldName/-2048851183 (var3138) String)
(declare-fun var3445_toBytes/-815774109 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1177_copyOf/317732420 ((Array Int Int) Int) (Array Int Int))
(declare-fun visitVarInsn/-915853820 (var3887 Int Int) void)
(declare-fun var3029_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var3887 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var3887 Int String String String Bool) void)
(declare-const null-var3029 var3029)
(declare-const null-var3044 var3044)
(declare-const null-var3138 var3138)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2647-DESC_FIELD_WRITER String)
(declare-const var2647-TYPE_FIELD_WRITER String)
(declare-const var3029-METHOD_DESC_WRITE_FIELD_NAME String)
(declare-const var3369 var3029) ; Statement: r42 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3369 null-var3029)))
(declare-const var3592 var3044) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3592 null-var3044)))
(declare-const var2018 var3138) ; Statement: r5 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2018 null-var3138)))
(declare-const var2958 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2958 null-Int)))
(define-const var3108 var3887 (mw/1968396404 var3592)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1412 String (classNameType/1968396404 var3592)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var3242 var141 var141-init) ; Statement: $r71 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3242)) ; Statement: specialinvoke $r71.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3242!1 var141)
(define-const var3700 var141 var141-init) ; Statement: $r72 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var3700)) ; Statement: specialinvoke $r72.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var3700!1 var141)
(define-const var3050 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1207 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var1103 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var1578 Bool (jsonb/1968396404 var3592)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
 ; Statement: if $z0 != 0 goto $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(assert (not (= (ite var1578 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1124 String (fieldName/-2048851183 var2018)) ; Statement: $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(define-const var1667 (Array Int Int) (var3445_toBytes/-815774109 var1124)) ; Statement: r57 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r6) 
(define-const var634 Int (getLength-Arr-Int-1 var1667)) ; Statement: i75 = lengthof r57 
(define-const var3414 String null-String) ; Statement: r58 = null 
(define-const var683 String null-String) ; Statement: r70 = null 
(define-const var3900 String null-String) ; Statement: r69 = null 
(define-const var2536 String "(J)V") ; Statement: r59 = "(J)V" 
(define-const var3200 String "(J)V") ; Statement: r65 = "(J)V" 
(define-const var1795 String "(J)V") ; Statement: r64 = "(J)V" 
(define-const var199 String "(J)V") ; Statement: r63 = "(J)V" 
(define-const var2682 (Array Int Int) (var1177_copyOf/317732420 var1667 16)) ; Statement: r60 = staticinvoke <java.util.Arrays: byte[] copyOf(byte[],int)>(r57, 16) 
 ; Statement: tableswitch(i75) {     case 2: goto r58 = "writeName2Raw";     case 3: goto r58 = "writeName3Raw";     case 4: goto r58 = "writeName4Raw";     case 5: goto r58 = "writeName5Raw";     case 6: goto r58 = "writeName6Raw";     case 7: goto r58 = "writeName7Raw";     case 8: goto r58 = "writeName8Raw";     case 9: goto r58 = "writeName9Raw";     case 10: goto r58 = "writeName10Raw";     case 11: goto r58 = "writeName11Raw";     case 12: goto r58 = "writeName12Raw";     case 13: goto r58 = "writeName13Raw";     case 14: goto r58 = "writeName14Raw";     case 15: goto r58 = "writeName15Raw";     case 16: goto r58 = "writeName16Raw";     default: goto if r69 == null goto (branch); } 
(assert (and (not (= var634 16)) (and (not (= var634 15)) (and (not (= var634 14)) (and (not (= var634 13)) (and (not (= var634 12)) (and (not (= var634 11)) (and (not (= var634 10)) (and (not (= var634 9)) (and (not (= var634 8)) (and (not (= var634 7)) (and (not (= var634 6)) (and (not (= var634 5)) (and (not (= var634 4)) (and (not (= var634 3)) (and (not (= var634 2)) true)))))))))))))))) ; Intersect: Negate: Cond: i75 == 16   and Intersect: Negate: Cond: i75 == 15   and Intersect: Negate: Cond: i75 == 14   and Intersect: Negate: Cond: i75 == 13   and Intersect: Negate: Cond: i75 == 12   and Intersect: Negate: Cond: i75 == 11   and Intersect: Negate: Cond: i75 == 10   and Intersect: Negate: Cond: i75 == 9   and Intersect: Negate: Cond: i75 == 8   and Intersect: Negate: Cond: i75 == 7   and Intersect: Negate: Cond: i75 == 6   and Intersect: Negate: Cond: i75 == 5   and Intersect: Negate: Cond: i75 == 4   and Intersect: Negate: Cond: i75 == 3   and Intersect: Negate: Cond: i75 == 2   and Non Conditional               
 ; Statement: if r69 == null goto (branch) 
(assert (= var3900 null-String)) ; Cond: r69 == null 
 ; Statement: if z8 == 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 
(assert (= (ite var1103 1 0) 0)) ; Cond: z8 == 0 
(assert true)
;(assert (visitVarInsn/-915853820 var3108 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3108!1 var3887)
(declare-const var478 Int)
(declare-const var2641 Int)
(define-const var2619 String (var3029_fieldWriter/625874517 var2958)) ; Statement: $r8 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i0) 
(define-const var1269 String var2647-DESC_FIELD_WRITER) ; Statement: $r7 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var3108!1 180 var1412 var2619 var1269)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r2, $r8, $r7) 

(declare-const var3108!2 var3887)
(declare-const var3051 Int)
(declare-const var1412!1 String)
(declare-const var2619!1 String)
(declare-const var1269!1 String)
(assert true)
;(assert (visitVarInsn/-915853820 var3108!2 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3108!3 var3887)
(declare-const var478!1 Int)
(declare-const var1392 Int)
(define-const var2170 String var2647-TYPE_FIELD_WRITER) ; Statement: $r10 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
(define-const var723 Bool (jsonb/1968396404 var3592)) ; Statement: $z1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
 ; Statement: if $z1 == 0 goto $r62 = "writeFieldName" 
(assert (not (= (ite var723 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1628 String "writeFieldNameJSONB") ; Statement: $r62 = "writeFieldNameJSONB" 
 ; Statement: goto [?= $r9 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_FIELD_NAME>] 
(assert true) ; Non Conditional
(define-const var2860 String var3029-METHOD_DESC_WRITE_FIELD_NAME) ; Statement: $r9 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_FIELD_NAME> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3108!3 182 var2170 var1628 var2860 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r10, $r62, $r9, 0) 

(declare-const var3108!4 var3887)
(declare-const var2432 Int)
(declare-const var2170!1 String)
(declare-const var1628!1 String)
(declare-const var2860!1 String)
(declare-const var2641!1 Int)
 ; Statement: if z9 == 0 goto return 
(assert (= (ite var1207 1 0) 0)) ; Cond: z9 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var141-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var3445_toBytes/-815774109=([java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), var1177_copyOf/317732420=([byte[], int], byte[]), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), var3029_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3029=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3369=r42, var3044=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3592=r0, var3138=com.alibaba.fastjson2.writer.FieldWriter, var2018=r5, var2958=i0, var3887=com.alibaba.fastjson2.internal.asm.MethodWriter, var3108=r1, var1412=r2, var141=com.alibaba.fastjson2.internal.asm.Label, var3242=$r71, var3700=$r72, var3050=z6, var1207=z9, var1103=z8, var1578=$z0, var1124=$r6, var3445=com.alibaba.fastjson2.JSONB, var1667=r57, var634=i75, var2059=null_type, var3414=r58, var683=r70, var3900=r69, var2536=r59, var3200=r65, var1795=r64, var199=r63, var1177=java.util.Arrays, var2682=r60, var478=25, var2641=0, var2619=$r8, var2647=com.alibaba.fastjson2.internal.asm.ASMUtils, var1269=$r7, var3051=180, var1392=1, var2170=$r10, var723=$z1, var1628=$r62, var2860=$r9, var2432=182}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3029, r42=var3369, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3044, r0=var3592, com.alibaba.fastjson2.writer.FieldWriter=var3138, r5=var2018, i0=var2958, com.alibaba.fastjson2.internal.asm.MethodWriter=var3887, r1=var3108, r2=var1412, com.alibaba.fastjson2.internal.asm.Label=var141, $r71=var3242, $r72=var3700, z6=var3050, z9=var1207, z8=var1103, $z0=var1578, $r6=var1124, com.alibaba.fastjson2.JSONB=var3445, r57=var1667, i75=var634, null_type=var2059, r58=var3414, r70=var683, r69=var3900, r59=var2536, r65=var3200, r64=var1795, r63=var199, java.util.Arrays=var1177, r60=var2682, 25=var478, 0=var2641, $r8=var2619, com.alibaba.fastjson2.internal.asm.ASMUtils=var2647, $r7=var1269, 180=var3051, 1=var1392, $r10=var2170, $z1=var723, $r62=var1628, $r9=var2860, 182=var2432}
;seq 
;cnt {}
;stmts r42 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r5 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i0 := @parameter2: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r71 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r71.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r72 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r72.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	z6 = 0;	z9 = 0;	z8 = 0;	$z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	if $z0 != 0 goto $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	$r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	r57 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r6);	i75 = lengthof r57;	r58 = null;	r70 = null;	r69 = null;	r59 = "(J)V";	r65 = "(J)V";	r64 = "(J)V";	r63 = "(J)V";	r60 = staticinvoke <java.util.Arrays: byte[] copyOf(byte[],int)>(r57, 16);	tableswitch(i75) {     case 2: goto r58 = "writeName2Raw";     case 3: goto r58 = "writeName3Raw";     case 4: goto r58 = "writeName4Raw";     case 5: goto r58 = "writeName5Raw";     case 6: goto r58 = "writeName6Raw";     case 7: goto r58 = "writeName7Raw";     case 8: goto r58 = "writeName8Raw";     case 9: goto r58 = "writeName9Raw";     case 10: goto r58 = "writeName10Raw";     case 11: goto r58 = "writeName11Raw";     case 12: goto r58 = "writeName12Raw";     case 13: goto r58 = "writeName13Raw";     case 14: goto r58 = "writeName14Raw";     case 15: goto r58 = "writeName15Raw";     case 16: goto r58 = "writeName16Raw";     default: goto if r69 == null goto (branch); };	if r69 == null goto (branch);	if z8 == 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r8 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i0);	$r7 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r2, $r8, $r7);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r10 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	$z1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	if $z1 == 0 goto $r62 = "writeFieldName";	$r62 = "writeFieldNameJSONB";	goto [?= $r9 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_FIELD_NAME>];	$r9 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_FIELD_NAME>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r10, $r62, $r9, 0);	if z9 == 0 goto return;	return
;block_num 8