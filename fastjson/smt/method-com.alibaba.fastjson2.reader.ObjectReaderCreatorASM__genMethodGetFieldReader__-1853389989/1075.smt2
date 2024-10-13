(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var2143 0)
(declare-sort var2542 0)
(declare-sort var799 0)
(declare-sort var1050 0)
(declare-sort var1545 0)
(declare-sort var3823 0)
(declare-sort var1605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethod/328969596 (var2542 Int String String Int) var3823)
(declare-fun var1605-init () var1605)
(declare-fun <init>/-2069075760 (var1605) void)
(declare-fun getLength-Arr-var2143-1 ((Array Int var2143)) Int)
(declare-fun visitInsn/-918620226 (var3823 Int) void)
(declare-fun visitLabel/567040954 (var3823 var1605) void)
(declare-fun visitMaxs/516991312 (var3823 Int Int) void)
(declare-const null-var743 var743)
(declare-const null-__Array__Int__var2143__ (Array Int var2143))
(declare-const null-var2542 var2542)
(declare-const null-String String)
(declare-const null-var1050 var1050)
(declare-const var1545-DESC_FIELD_READER String)
(declare-const var1297 var743) ; Statement: r39 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM 
(assert (not (= var1297 null-var743)))
(declare-const var3106 (Array Int var2143)) ; Statement: r8 := @parameter0: com.alibaba.fastjson2.reader.FieldReader[] 
(assert (not (= var3106 null-__Array__Int__var2143__)))
(declare-const var1292 var2542) ; Statement: r0 := @parameter1: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var1292 null-var2542)))
(declare-const var986 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var986 null-String)))
(declare-const var2097 var1050) ; Statement: r17 := @parameter3: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var2097 null-var1050)))
(define-const var43 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var43)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var43!1 String)
(assert (= var43!1 ""))
(assert true)
(define-const var3361 String (append/672562846 var43!1 "(J)")) ; Statement: $r3 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(J)") 
(declare-const var43!2 String)
(assert (= var43!2 (str.++ var43!1 "(J)")))
(define-const var3032 String var1545-DESC_FIELD_READER) ; Statement: $r2 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER> 
(assert true)
(define-const var3868 String (append/672562846 var3361 var3032)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3361!1 String)
(assert (= var3361!1 (str.++ var3361 var3032)))
(assert true)
(define-const var3938 String (toString/-2075883882 var3868)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1059 var3823 (visitMethod/328969596 var1292 1 "getFieldReader" var3938 512)) ; Statement: r6 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "getFieldReader", $r5, 512) 
(define-const var1221 var1605 var1605-init) ; Statement: $r47 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1221)) ; Statement: specialinvoke $r47.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1221!1 var1605)
(define-const var645 Int (getLength-Arr-var2143-1 var3106)) ; Statement: $i0 = lengthof r8 
 ; Statement: if $i0 <= 6 goto i21 = 0 
(assert (<= var645 6)) ; Cond: $i0 <= 6 
(define-const var2037 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
(define-const var800 Int (getLength-Arr-var2143-1 var3106)) ; Statement: $i1 = lengthof r8 
 ; Statement: if i21 >= $i1 goto virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 
(assert (>= var2037 var800)) ; Cond: i21 >= $i1 
(assert true)
;(assert (visitInsn/-918620226 var1059 1)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 

(declare-const var1059!1 var3823)
(declare-const var3948 Int)
(assert true)
;(assert (visitInsn/-918620226 var1059!1 176)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var1059!2 var3823)
(declare-const var1236 Int)
(assert true)
;(assert (visitLabel/567040954 var1059!2 var1221!1)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r47) 

(declare-const var1059!3 var3823)
(declare-const var1221!2 var1605)
(assert true)
;(assert (visitInsn/-918620226 var1059!3 176)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var1059!4 var3823)
(declare-const var1236!1 Int)
(assert true)
;(assert (visitMaxs/516991312 var1059!4 5 5)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 5) 

(declare-const var1059!5 var3823)
(declare-const var2690 Int)
(declare-const var2690!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethod/328969596=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, java.lang.String, java.lang.String, int], com.alibaba.fastjson2.internal.asm.MethodWriter), var1605-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), getLength-Arr-var2143-1=([com.alibaba.fastjson2.reader.FieldReader[]], int), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), visitMaxs/516991312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void)}
; {var743=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, var1297=r39, var2143=com.alibaba.fastjson2.reader.FieldReader, var3106=r8, var2542=com.alibaba.fastjson2.internal.asm.ClassWriter, var1292=r0, var986=r13, var799=null_type, var1050=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var2097=r17, var43=$r46, var3361=$r3, var1545=com.alibaba.fastjson2.internal.asm.ASMUtils, var3032=$r2, var3868=$r4, var3938=$r5, var3823=com.alibaba.fastjson2.internal.asm.MethodWriter, var1059=r6, var1605=com.alibaba.fastjson2.internal.asm.Label, var1221=$r47, var645=$i0, var2037=i21, var800=$i1, var3948=1, var1236=176, var2690=5}
; {com.alibaba.fastjson2.reader.ObjectReaderCreatorASM=var743, r39=var1297, com.alibaba.fastjson2.reader.FieldReader=var2143, r8=var3106, com.alibaba.fastjson2.internal.asm.ClassWriter=var2542, r0=var1292, r13=var986, null_type=var799, com.alibaba.fastjson2.reader.ObjectReaderAdapter=var1050, r17=var2097, $r46=var43, $r3=var3361, com.alibaba.fastjson2.internal.asm.ASMUtils=var1545, $r2=var3032, $r4=var3868, $r5=var3938, com.alibaba.fastjson2.internal.asm.MethodWriter=var3823, r6=var1059, com.alibaba.fastjson2.internal.asm.Label=var1605, $r47=var1221, $i0=var645, i21=var2037, $i1=var800, 1=var3948, 176=var1236, 5=var2690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r39 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM;	r8 := @parameter0: com.alibaba.fastjson2.reader.FieldReader[];	r0 := @parameter1: com.alibaba.fastjson2.internal.asm.ClassWriter;	r13 := @parameter2: java.lang.String;	r17 := @parameter3: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(J)");	$r2 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "getFieldReader", $r5, 512);	$r47 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r47.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$i0 = lengthof r8;	if $i0 <= 6 goto i21 = 0;	i21 = 0;	$i1 = lengthof r8;	if i21 >= $i1 goto virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r47);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 5);	return
;block_num 4