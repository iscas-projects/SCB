(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3459 0)
(declare-sort var282 0)
(declare-sort var548 0)
(declare-sort var715 0)
(declare-sort var3839 0)
(declare-sort var528 0)
(declare-sort var1930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var3459) void)
(declare-fun checkEndCode/-651668869 (var3459) void)
(declare-fun var715_checkTypeRefAndPath/-5268865 (Int var282) void)
(declare-fun var3459_checkDesc/2075147271 (String Bool) void)
(declare-fun var3839-init () var3839)
(declare-fun visitTryCatchAnnotation/484131850 (var1930 Int var282 String Bool) var528)
(declare-fun cast-from-var3459-to-var1930 (var3459) var1930)
(declare-fun <init>/2073798864 (var3839 var528) void)
(declare-const null-var3459 var3459)
(declare-const null-Int Int)
(declare-const null-var282 var282)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3466 var3459) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var3466 null-var3459)))
(declare-const var212 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var212 null-Int)))
(declare-const var3751 var282) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var3751 null-var282)))
(declare-const var3052 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3052 null-String)))
(declare-const var214 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var214 null-Bool)))
(assert true)
;(assert (checkStartCode/-1084876908 var3466)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var3466!1 var3459)
(assert true)
;(assert (checkEndCode/-651668869 var3466!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var3466!2 var3459)
(define-const var2154 Int (div var212 (to_int (^ 2 24)))) ; Statement: i1 = i0 >>> 24 
 ; Statement: if i1 == 66 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (= var2154 66)) ; Cond: i1 == 66 
;(assert (var715_checkTypeRefAndPath/-5268865 var212 var3751)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 

(declare-const var212!1 Int)
(declare-const var3751!1 var282)
;(assert (var3459_checkDesc/2075147271 var3052 (ite (= 1 0) true false))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r2, 0) 

(declare-const var3052!1 String)
(declare-const var2858 Int)
(define-const var512 var3839 var3839-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter 
(assert true)
(define-const var3159 var528 (visitTryCatchAnnotation/484131850 (cast-from-var3459-to-var1930 var3466!2) var212!1 var3751!1 var3052!1 var214)) ; Statement: $r4 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: jdk.internal.org.objectweb.asm.AnnotationVisitor visitTryCatchAnnotation(int,jdk.internal.org.objectweb.asm.TypePath,java.lang.String,boolean)>(i0, r1, r2, z0) 
(assert true)
;(assert (<init>/2073798864 var512 var3159)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter: void <init>(jdk.internal.org.objectweb.asm.AnnotationVisitor)>($r4) 

(declare-const var512!1 var3839)
(declare-const var3159!1 var528)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var715_checkTypeRefAndPath/-5268865=([int, jdk.internal.org.objectweb.asm.TypePath], void), var3459_checkDesc/2075147271=([java.lang.String, boolean], void), var3839-init=([], jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter), visitTryCatchAnnotation/484131850=([jdk.internal.org.objectweb.asm.MethodVisitor, int, jdk.internal.org.objectweb.asm.TypePath, java.lang.String, boolean], jdk.internal.org.objectweb.asm.AnnotationVisitor), cast-from-var3459-to-var1930=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], jdk.internal.org.objectweb.asm.MethodVisitor), <init>/2073798864=([jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter, jdk.internal.org.objectweb.asm.AnnotationVisitor], void)}
; {var3459=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var3466=r0, var212=i0, var282=jdk.internal.org.objectweb.asm.TypePath, var3751=r1, var3052=r2, var548=null_type, var214=z0, var2154=i1, var715=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var2858=0, var3839=jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter, var512=$r3, var528=jdk.internal.org.objectweb.asm.AnnotationVisitor, var1930=jdk.internal.org.objectweb.asm.MethodVisitor, var3159=$r4}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var3459, r0=var3466, i0=var212, jdk.internal.org.objectweb.asm.TypePath=var282, r1=var3751, r2=var3052, null_type=var548, z0=var214, i1=var2154, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var715, 0=var2858, jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter=var3839, $r3=var512, jdk.internal.org.objectweb.asm.AnnotationVisitor=var528, jdk.internal.org.objectweb.asm.MethodVisitor=var1930, $r4=var3159}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	i1 = i0 >>> 24;	if i1 == 66 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r2, 0);	$r3 = new jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter;	$r4 = specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: jdk.internal.org.objectweb.asm.AnnotationVisitor visitTryCatchAnnotation(int,jdk.internal.org.objectweb.asm.TypePath,java.lang.String,boolean)>(i0, r1, r2, z0);	specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter: void <init>(jdk.internal.org.objectweb.asm.AnnotationVisitor)>($r4);	return $r3
;block_num 2