(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2425 0)
(declare-sort var1399 0)
(declare-sort var3373 0)
(declare-sort var1261 0)
(declare-sort var1140 0)
(declare-sort var1652 0)
(declare-sort var1770 0)
(declare-sort var1466 0)
(declare-sort var2118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1399) var1261)
(declare-fun classNameType/1968396404 (var1399) String)
(declare-fun var1140-init () var1140)
(declare-fun <init>/-2069075760 (var1140) void)
(declare-fun jsonb/1968396404 (var1399) Bool)
(declare-fun fieldName/-2048851183 (var3373) String)
(declare-fun var1652_toBytes/-815774109 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1466_copyOf/317732420 ((Array Int Int) Int) (Array Int Int))
(declare-fun visitVarInsn/-915853820 (var1261 Int Int) void)
(declare-fun var2425_fieldWriter/625874517 (Int) String)
(declare-fun visitFieldInsn/1331737383 (var1261 Int String String String) void)
(declare-fun visitMethodInsn/-527702312 (var1261 Int String String String Bool) void)
(declare-const null-var2425 var2425)
(declare-const null-var1399 var1399)
(declare-const null-var3373 var3373)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2118-DESC_FIELD_WRITER String)
(declare-const var2118-TYPE_FIELD_WRITER String)
(declare-const var2425-METHOD_DESC_WRITE_FIELD_NAME String)
(declare-const var2380 var2425) ; Statement: r42 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2380 null-var2425)))
(declare-const var3958 var1399) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3958 null-var1399)))
(declare-const var318 var3373) ; Statement: r5 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var318 null-var3373)))
(declare-const var57 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var57 null-Int)))
(define-const var3199 var1261 (mw/1968396404 var3958)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var1903 String (classNameType/1968396404 var3958)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType> 
(define-const var1947 var1140 var1140-init) ; Statement: $r71 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1947)) ; Statement: specialinvoke $r71.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1947!1 var1140)
(define-const var2925 var1140 var1140-init) ; Statement: $r72 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var2925)) ; Statement: specialinvoke $r72.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var2925!1 var1140)
(define-const var3921 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var3494 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var2592 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2346 Bool (jsonb/1968396404 var3958)) ; Statement: $z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
 ; Statement: if $z0 != 0 goto $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(assert (not (= (ite var2346 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3735 String (fieldName/-2048851183 var318)) ; Statement: $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName> 
(define-const var1024 (Array Int Int) (var1652_toBytes/-815774109 var3735)) ; Statement: r57 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r6) 
(define-const var2634 Int (getLength-Arr-Int-1 var1024)) ; Statement: i75 = lengthof r57 
(define-const var2640 String null-String) ; Statement: r58 = null 
(define-const var2113 String null-String) ; Statement: r70 = null 
(define-const var1371 String null-String) ; Statement: r69 = null 
(define-const var1142 String "(J)V") ; Statement: r59 = "(J)V" 
(define-const var1884 String "(J)V") ; Statement: r65 = "(J)V" 
(define-const var1797 String "(J)V") ; Statement: r64 = "(J)V" 
(define-const var3005 String "(J)V") ; Statement: r63 = "(J)V" 
(define-const var2491 (Array Int Int) (var1466_copyOf/317732420 var1024 16)) ; Statement: r60 = staticinvoke <java.util.Arrays: byte[] copyOf(byte[],int)>(r57, 16) 
 ; Statement: tableswitch(i75) {     case 2: goto r58 = "writeName2Raw";     case 3: goto r58 = "writeName3Raw";     case 4: goto r58 = "writeName4Raw";     case 5: goto r58 = "writeName5Raw";     case 6: goto r58 = "writeName6Raw";     case 7: goto r58 = "writeName7Raw";     case 8: goto r58 = "writeName8Raw";     case 9: goto r58 = "writeName9Raw";     case 10: goto r58 = "writeName10Raw";     case 11: goto r58 = "writeName11Raw";     case 12: goto r58 = "writeName12Raw";     case 13: goto r58 = "writeName13Raw";     case 14: goto r58 = "writeName14Raw";     case 15: goto r58 = "writeName15Raw";     case 16: goto r58 = "writeName16Raw";     default: goto if r69 == null goto (branch); } 
(assert (and (not (= var2634 16)) (and (not (= var2634 15)) (and (not (= var2634 14)) (and (not (= var2634 13)) (and (not (= var2634 12)) (and (not (= var2634 11)) (and (not (= var2634 10)) (and (not (= var2634 9)) (and (not (= var2634 8)) (and (not (= var2634 7)) (and (not (= var2634 6)) (and (not (= var2634 5)) (and (not (= var2634 4)) (and (not (= var2634 3)) (and (not (= var2634 2)) true)))))))))))))))) ; Intersect: Negate: Cond: i75 == 16   and Intersect: Negate: Cond: i75 == 15   and Intersect: Negate: Cond: i75 == 14   and Intersect: Negate: Cond: i75 == 13   and Intersect: Negate: Cond: i75 == 12   and Intersect: Negate: Cond: i75 == 11   and Intersect: Negate: Cond: i75 == 10   and Intersect: Negate: Cond: i75 == 9   and Intersect: Negate: Cond: i75 == 8   and Intersect: Negate: Cond: i75 == 7   and Intersect: Negate: Cond: i75 == 6   and Intersect: Negate: Cond: i75 == 5   and Intersect: Negate: Cond: i75 == 4   and Intersect: Negate: Cond: i75 == 3   and Intersect: Negate: Cond: i75 == 2   and Non Conditional               
 ; Statement: if r69 == null goto (branch) 
(assert (= var1371 null-String)) ; Cond: r69 == null 
 ; Statement: if z8 == 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 
(assert (= (ite var2592 1 0) 0)) ; Cond: z8 == 0 
(assert true)
;(assert (visitVarInsn/-915853820 var3199 25 0)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3199!1 var1261)
(declare-const var3772 Int)
(declare-const var2555 Int)
(define-const var206 String (var2425_fieldWriter/625874517 var57)) ; Statement: $r8 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i0) 
(define-const var3121 String var2118-DESC_FIELD_WRITER) ; Statement: $r7 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
;(assert (visitFieldInsn/1331737383 var3199!1 180 var1903 var206 var3121)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r2, $r8, $r7) 

(declare-const var3199!2 var1261)
(declare-const var2452 Int)
(declare-const var1903!1 String)
(declare-const var206!1 String)
(declare-const var3121!1 String)
(assert true)
;(assert (visitVarInsn/-915853820 var3199!2 25 1)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 

(declare-const var3199!3 var1261)
(declare-const var3772!1 Int)
(declare-const var3309 Int)
(define-const var718 String var2118-TYPE_FIELD_WRITER) ; Statement: $r10 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> 
(define-const var3470 Bool (jsonb/1968396404 var3958)) ; Statement: $z1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb> 
 ; Statement: if $z1 == 0 goto $r62 = "writeFieldName" 
(assert (= (ite var3470 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3404 String "writeFieldName") ; Statement: $r62 = "writeFieldName" 
(assert true) ; Non Conditional
(define-const var622 String var2425-METHOD_DESC_WRITE_FIELD_NAME) ; Statement: $r9 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_FIELD_NAME> 
(assert true)
;(assert (visitMethodInsn/-527702312 var3199!3 182 var718 var3404 var622 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r10, $r62, $r9, 0) 

(declare-const var3199!4 var1261)
(declare-const var3727 Int)
(declare-const var718!1 String)
(declare-const var3404!1 String)
(declare-const var622!1 String)
(declare-const var2555!1 Int)
 ; Statement: if z9 == 0 goto return 
(assert (= (ite var3494 1 0) 0)) ; Cond: z9 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), classNameType/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.String), var1140-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), jsonb/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], boolean), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), var1652_toBytes/-815774109=([java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), var1466_copyOf/317732420=([byte[], int], byte[]), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), var2425_fieldWriter/625874517=([int], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2425=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2380=r42, var1399=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3958=r0, var3373=com.alibaba.fastjson2.writer.FieldWriter, var318=r5, var57=i0, var1261=com.alibaba.fastjson2.internal.asm.MethodWriter, var3199=r1, var1903=r2, var1140=com.alibaba.fastjson2.internal.asm.Label, var1947=$r71, var2925=$r72, var3921=z6, var3494=z9, var2592=z8, var2346=$z0, var3735=$r6, var1652=com.alibaba.fastjson2.JSONB, var1024=r57, var2634=i75, var1770=null_type, var2640=r58, var2113=r70, var1371=r69, var1142=r59, var1884=r65, var1797=r64, var3005=r63, var1466=java.util.Arrays, var2491=r60, var3772=25, var2555=0, var206=$r8, var2118=com.alibaba.fastjson2.internal.asm.ASMUtils, var3121=$r7, var2452=180, var3309=1, var718=$r10, var3470=$z1, var3404=$r62, var622=$r9, var3727=182}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2425, r42=var2380, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1399, r0=var3958, com.alibaba.fastjson2.writer.FieldWriter=var3373, r5=var318, i0=var57, com.alibaba.fastjson2.internal.asm.MethodWriter=var1261, r1=var3199, r2=var1903, com.alibaba.fastjson2.internal.asm.Label=var1140, $r71=var1947, $r72=var2925, z6=var3921, z9=var3494, z8=var2592, $z0=var2346, $r6=var3735, com.alibaba.fastjson2.JSONB=var1652, r57=var1024, i75=var2634, null_type=var1770, r58=var2640, r70=var2113, r69=var1371, r59=var1142, r65=var1884, r64=var1797, r63=var3005, java.util.Arrays=var1466, r60=var2491, 25=var3772, 0=var2555, $r8=var206, com.alibaba.fastjson2.internal.asm.ASMUtils=var2118, $r7=var3121, 180=var2452, 1=var3309, $r10=var718, $z1=var3470, $r62=var3404, $r9=var622, 182=var3727}
;seq 
;cnt {}
;stmts r42 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r5 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i0 := @parameter2: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.String classNameType>;	$r71 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r71.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$r72 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r72.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	z6 = 0;	z9 = 0;	z8 = 0;	$z0 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	if $z0 != 0 goto $r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	$r6 = r5.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.String fieldName>;	r57 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r6);	i75 = lengthof r57;	r58 = null;	r70 = null;	r69 = null;	r59 = "(J)V";	r65 = "(J)V";	r64 = "(J)V";	r63 = "(J)V";	r60 = staticinvoke <java.util.Arrays: byte[] copyOf(byte[],int)>(r57, 16);	tableswitch(i75) {     case 2: goto r58 = "writeName2Raw";     case 3: goto r58 = "writeName3Raw";     case 4: goto r58 = "writeName4Raw";     case 5: goto r58 = "writeName5Raw";     case 6: goto r58 = "writeName6Raw";     case 7: goto r58 = "writeName7Raw";     case 8: goto r58 = "writeName8Raw";     case 9: goto r58 = "writeName9Raw";     case 10: goto r58 = "writeName10Raw";     case 11: goto r58 = "writeName11Raw";     case 12: goto r58 = "writeName12Raw";     case 13: goto r58 = "writeName13Raw";     case 14: goto r58 = "writeName14Raw";     case 15: goto r58 = "writeName15Raw";     case 16: goto r58 = "writeName16Raw";     default: goto if r69 == null goto (branch); };	if r69 == null goto (branch);	if z8 == 0 goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 0);	$r8 = staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String fieldWriter(int)>(i0);	$r7 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r2, $r8, $r7);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	$r10 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>;	$z1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: boolean jsonb>;	if $z1 == 0 goto $r62 = "writeFieldName";	$r62 = "writeFieldName";	$r9 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String METHOD_DESC_WRITE_FIELD_NAME>;	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r10, $r62, $r9, 0);	if z9 == 0 goto return;	return
;block_num 8