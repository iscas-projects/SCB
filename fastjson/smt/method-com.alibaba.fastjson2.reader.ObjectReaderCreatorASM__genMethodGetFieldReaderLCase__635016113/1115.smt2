(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1476 0)
(declare-sort var3860 0)
(declare-sort var950 0)
(declare-sort var3212 0)
(declare-sort var3042 0)
(declare-sort var1255 0)
(declare-sort var3818 0)
(declare-sort var2441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethod/328969596 (var950 Int String String Int) var3818)
(declare-fun var2441-init () var2441)
(declare-fun <init>/-2069075760 (var2441) void)
(declare-fun getLength-Arr-var3860-1 ((Array Int var3860)) Int)
(declare-fun visitInsn/-918620226 (var3818 Int) void)
(declare-fun visitLabel/567040954 (var3818 var2441) void)
(declare-fun visitMaxs/516991312 (var3818 Int Int) void)
(declare-const null-var1476 var1476)
(declare-const null-__Array__Int__var3860__ (Array Int var3860))
(declare-const null-var950 var950)
(declare-const null-String String)
(declare-const null-var3042 var3042)
(declare-const var1255-DESC_FIELD_READER String)
(declare-const var1300 var1476) ; Statement: r39 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM 
(assert (not (= var1300 null-var1476)))
(declare-const var317 (Array Int var3860)) ; Statement: r8 := @parameter0: com.alibaba.fastjson2.reader.FieldReader[] 
(assert (not (= var317 null-__Array__Int__var3860__)))
(declare-const var3004 var950) ; Statement: r0 := @parameter1: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var3004 null-var950)))
(declare-const var3402 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var3402 null-String)))
(declare-const var13 var3042) ; Statement: r17 := @parameter3: com.alibaba.fastjson2.reader.ObjectReaderAdapter 
(assert (not (= var13 null-var3042)))
(define-const var3822 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3822)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3822!1 String)
(assert (= var3822!1 ""))
(assert true)
(define-const var817 String (append/672562846 var3822!1 "(J)")) ; Statement: $r3 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(J)") 
(declare-const var3822!2 String)
(assert (= var3822!2 (str.++ var3822!1 "(J)")))
(define-const var2971 String var1255-DESC_FIELD_READER) ; Statement: $r2 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER> 
(assert true)
(define-const var2074 String (append/672562846 var817 var2971)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var817!1 String)
(assert (= var817!1 (str.++ var817 var2971)))
(assert true)
(define-const var1517 String (toString/-2075883882 var2074)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2820 var3818 (visitMethod/328969596 var3004 1 "getFieldReaderLCase" var1517 512)) ; Statement: r6 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "getFieldReaderLCase", $r5, 512) 
(define-const var1428 var2441 var2441-init) ; Statement: $r47 = new com.alibaba.fastjson2.internal.asm.Label 
(assert true)
;(assert (<init>/-2069075760 var1428)) ; Statement: specialinvoke $r47.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>() 

(declare-const var1428!1 var2441)
(define-const var1668 Int (getLength-Arr-var3860-1 var317)) ; Statement: $i0 = lengthof r8 
 ; Statement: if $i0 <= 6 goto i21 = 0 
(assert (<= var1668 6)) ; Cond: $i0 <= 6 
(define-const var3083 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
(define-const var2615 Int (getLength-Arr-var3860-1 var317)) ; Statement: $i1 = lengthof r8 
 ; Statement: if i21 >= $i1 goto virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 
(assert (>= var3083 var2615)) ; Cond: i21 >= $i1 
(assert true)
;(assert (visitInsn/-918620226 var2820 1)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1) 

(declare-const var2820!1 var3818)
(declare-const var2872 Int)
(assert true)
;(assert (visitInsn/-918620226 var2820!1 176)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var2820!2 var3818)
(declare-const var3632 Int)
(assert true)
;(assert (visitLabel/567040954 var2820!2 var1428!1)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r47) 

(declare-const var2820!3 var3818)
(declare-const var1428!2 var2441)
(assert true)
;(assert (visitInsn/-918620226 var2820!3 176)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176) 

(declare-const var2820!4 var3818)
(declare-const var3632!1 Int)
(assert true)
;(assert (visitMaxs/516991312 var2820!4 5 5)) ; Statement: virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 5) 

(declare-const var2820!5 var3818)
(declare-const var2923 Int)
(declare-const var2923!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethod/328969596=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, java.lang.String, java.lang.String, int], com.alibaba.fastjson2.internal.asm.MethodWriter), var2441-init=([], com.alibaba.fastjson2.internal.asm.Label), <init>/-2069075760=([com.alibaba.fastjson2.internal.asm.Label], void), getLength-Arr-var3860-1=([com.alibaba.fastjson2.reader.FieldReader[]], int), visitInsn/-918620226=([com.alibaba.fastjson2.internal.asm.MethodWriter, int], void), visitLabel/567040954=([com.alibaba.fastjson2.internal.asm.MethodWriter, com.alibaba.fastjson2.internal.asm.Label], void), visitMaxs/516991312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void)}
; {var1476=com.alibaba.fastjson2.reader.ObjectReaderCreatorASM, var1300=r39, var3860=com.alibaba.fastjson2.reader.FieldReader, var317=r8, var950=com.alibaba.fastjson2.internal.asm.ClassWriter, var3004=r0, var3402=r13, var3212=null_type, var3042=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var13=r17, var3822=$r46, var817=$r3, var1255=com.alibaba.fastjson2.internal.asm.ASMUtils, var2971=$r2, var2074=$r4, var1517=$r5, var3818=com.alibaba.fastjson2.internal.asm.MethodWriter, var2820=r6, var2441=com.alibaba.fastjson2.internal.asm.Label, var1428=$r47, var1668=$i0, var3083=i21, var2615=$i1, var2872=1, var3632=176, var2923=5}
; {com.alibaba.fastjson2.reader.ObjectReaderCreatorASM=var1476, r39=var1300, com.alibaba.fastjson2.reader.FieldReader=var3860, r8=var317, com.alibaba.fastjson2.internal.asm.ClassWriter=var950, r0=var3004, r13=var3402, null_type=var3212, com.alibaba.fastjson2.reader.ObjectReaderAdapter=var3042, r17=var13, $r46=var3822, $r3=var817, com.alibaba.fastjson2.internal.asm.ASMUtils=var1255, $r2=var2971, $r4=var2074, $r5=var1517, com.alibaba.fastjson2.internal.asm.MethodWriter=var3818, r6=var2820, com.alibaba.fastjson2.internal.asm.Label=var2441, $r47=var1428, $i0=var1668, i21=var3083, $i1=var2615, 1=var2872, 176=var3632, 5=var2923}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r39 := @this: com.alibaba.fastjson2.reader.ObjectReaderCreatorASM;	r8 := @parameter0: com.alibaba.fastjson2.reader.FieldReader[];	r0 := @parameter1: com.alibaba.fastjson2.internal.asm.ClassWriter;	r13 := @parameter2: java.lang.String;	r17 := @parameter3: com.alibaba.fastjson2.reader.ObjectReaderAdapter;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(J)");	$r2 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r6 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: com.alibaba.fastjson2.internal.asm.MethodWriter visitMethod(int,java.lang.String,java.lang.String,int)>(1, "getFieldReaderLCase", $r5, 512);	$r47 = new com.alibaba.fastjson2.internal.asm.Label;	specialinvoke $r47.<com.alibaba.fastjson2.internal.asm.Label: void <init>()>();	$i0 = lengthof r8;	if $i0 <= 6 goto i21 = 0;	i21 = 0;	$i1 = lengthof r8;	if i21 >= $i1 goto virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(1);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLabel(com.alibaba.fastjson2.internal.asm.Label)>($r47);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitInsn(int)>(176);	virtualinvoke r6.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMaxs(int,int)>(5, 5);	return
;block_num 4