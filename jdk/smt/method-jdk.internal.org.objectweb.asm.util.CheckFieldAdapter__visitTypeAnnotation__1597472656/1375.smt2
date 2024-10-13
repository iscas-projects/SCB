(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3906 0)
(declare-sort var586 0)
(declare-sort var771 0)
(declare-sort var2755 0)
(declare-sort var89 0)
(declare-sort var3320 0)
(declare-sort var3071 0)
(declare-sort var1367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkEnd/674844227 (var3906) void)
(declare-fun var2755_checkTypeRefAndPath/-5268865 (Int var586) void)
(declare-fun var89_checkDesc/2075147271 (String Bool) void)
(declare-fun var3320-init () var3320)
(declare-fun visitTypeAnnotation/-1103367219 (var1367 Int var586 String Bool) var3071)
(declare-fun cast-from-var3906-to-var1367 (var3906) var1367)
(declare-fun <init>/2073798864 (var3320 var3071) void)
(declare-const null-var3906 var3906)
(declare-const null-Int Int)
(declare-const null-var586 var586)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var234 var3906) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckFieldAdapter 
(assert (not (= var234 null-var3906)))
(declare-const var13 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var13 null-Int)))
(declare-const var950 var586) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var950 null-var586)))
(declare-const var3086 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3086 null-String)))
(declare-const var3717 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var3717 null-Bool)))
(assert true)
;(assert (checkEnd/674844227 var234)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckFieldAdapter: void checkEnd()>() 

(declare-const var234!1 var3906)
(define-const var2641 Int (div var13 (to_int (^ 2 24)))) ; Statement: i1 = i0 >>> 24 
 ; Statement: if i1 == 19 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 
(assert (= var2641 19)) ; Cond: i1 == 19 
;(assert (var2755_checkTypeRefAndPath/-5268865 var13 var950)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1) 

(declare-const var13!1 Int)
(declare-const var950!1 var586)
;(assert (var89_checkDesc/2075147271 var3086 (ite (= 1 0) true false))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r2, 0) 

(declare-const var3086!1 String)
(declare-const var880 Int)
(define-const var1136 var3320 var3320-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter 
(assert true)
(define-const var30 var3071 (visitTypeAnnotation/-1103367219 (cast-from-var3906-to-var1367 var234!1) var13!1 var950!1 var3086!1 var3717)) ; Statement: $r4 = specialinvoke r0.<jdk.internal.org.objectweb.asm.FieldVisitor: jdk.internal.org.objectweb.asm.AnnotationVisitor visitTypeAnnotation(int,jdk.internal.org.objectweb.asm.TypePath,java.lang.String,boolean)>(i0, r1, r2, z0) 
(assert true)
;(assert (<init>/2073798864 var1136 var30)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter: void <init>(jdk.internal.org.objectweb.asm.AnnotationVisitor)>($r4) 

(declare-const var1136!1 var3320)
(declare-const var30!1 var3071)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {checkEnd/674844227=([jdk.internal.org.objectweb.asm.util.CheckFieldAdapter], void), var2755_checkTypeRefAndPath/-5268865=([int, jdk.internal.org.objectweb.asm.TypePath], void), var89_checkDesc/2075147271=([java.lang.String, boolean], void), var3320-init=([], jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter), visitTypeAnnotation/-1103367219=([jdk.internal.org.objectweb.asm.FieldVisitor, int, jdk.internal.org.objectweb.asm.TypePath, java.lang.String, boolean], jdk.internal.org.objectweb.asm.AnnotationVisitor), cast-from-var3906-to-var1367=([jdk.internal.org.objectweb.asm.util.CheckFieldAdapter], jdk.internal.org.objectweb.asm.FieldVisitor), <init>/2073798864=([jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter, jdk.internal.org.objectweb.asm.AnnotationVisitor], void)}
; {var3906=jdk.internal.org.objectweb.asm.util.CheckFieldAdapter, var234=r0, var13=i0, var586=jdk.internal.org.objectweb.asm.TypePath, var950=r1, var3086=r2, var771=null_type, var3717=z0, var2641=i1, var2755=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var89=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var880=0, var3320=jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter, var1136=$r3, var3071=jdk.internal.org.objectweb.asm.AnnotationVisitor, var1367=jdk.internal.org.objectweb.asm.FieldVisitor, var30=$r4}
; {jdk.internal.org.objectweb.asm.util.CheckFieldAdapter=var3906, r0=var234, i0=var13, jdk.internal.org.objectweb.asm.TypePath=var586, r1=var950, r2=var3086, null_type=var771, z0=var3717, i1=var2641, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var2755, jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var89, 0=var880, jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter=var3320, $r3=var1136, jdk.internal.org.objectweb.asm.AnnotationVisitor=var3071, jdk.internal.org.objectweb.asm.FieldVisitor=var1367, $r4=var30}
;seq 
;cnt {}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckFieldAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r2 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckFieldAdapter: void checkEnd()>();	i1 = i0 >>> 24;	if i1 == 19 goto staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: void checkTypeRefAndPath(int,jdk.internal.org.objectweb.asm.TypePath)>(i0, r1);	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r2, 0);	$r3 = new jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter;	$r4 = specialinvoke r0.<jdk.internal.org.objectweb.asm.FieldVisitor: jdk.internal.org.objectweb.asm.AnnotationVisitor visitTypeAnnotation(int,jdk.internal.org.objectweb.asm.TypePath,java.lang.String,boolean)>(i0, r1, r2, z0);	specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.CheckAnnotationAdapter: void <init>(jdk.internal.org.objectweb.asm.AnnotationVisitor)>($r4);	return $r3
;block_num 2