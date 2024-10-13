(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var563 0)
(declare-sort var2453 0)
(declare-sort var2781 0)
(declare-sort var1564 0)
(declare-sort var1472 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2781-init () var2781)
(declare-fun <init>/-1779032354 (var2781) void)
(declare-fun synthetics/-1797295458 (var563) Int)
(declare-fun var1564_max/1360571700 (Int Int) Int)
(declare-fun var1472-init () var1472)
(declare-fun cw/-1797295458 (var563) var647)
(declare-fun <init>/-666303065 (var1472 var647 Bool var2781 var2781 Int) void)
(declare-const null-var563 var563)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-NullType var2453)
(declare-const null-var2781 var2781)
(declare-const var3944 var563) ; Statement: r3 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var3944 null-var563)))
(declare-const var190 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var190 null-Int)))
(declare-const var707 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var707 null-String)))
(declare-const var2225 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2225 null-Bool)))
(define-const var2558 var2781 var2781-init) ; Statement: $r0 = new jdk.internal.org.objectweb.asm.ByteVector 
(assert true)
;(assert (<init>/-1779032354 var2558)) ; Statement: specialinvoke $r0.<jdk.internal.org.objectweb.asm.ByteVector: void <init>()>() 

(declare-const var2558!1 var2781)
(define-const var2967 String "Ljava/lang/Synthetic;") ; Statement: $r2 = "Ljava/lang/Synthetic;" 
(assert true)
(define-const var2148 Bool (= var2967 var707)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = r3.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> 
(assert (not (= (ite var2148 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var211 Int (synthetics/-1797295458 var3944)) ; Statement: $i5 = r3.<jdk.internal.org.objectweb.asm.MethodWriter: int synthetics> 
(define-const var606 Int (+ var190 1)) ; Statement: $i4 = i1 + 1 
(define-const var88 Int (var1564_max/1360571700 var211 var606)) ; Statement: $i6 = staticinvoke <java.lang.Math: int max(int,int)>($i5, $i4) 
(declare-const var3944!1 var563)
(assert (not (= var3944!1 null-var563)))
(assert (= (synthetics/-1797295458 var3944!1) var88)) ; Statement: r3.<jdk.internal.org.objectweb.asm.MethodWriter: int synthetics> = $i6 
(define-const var230 var1472 var1472-init) ; Statement: $r22 = new jdk.internal.org.objectweb.asm.AnnotationWriter 
(define-const var2546 var647 (cw/-1797295458 var3944!1)) ; Statement: $r23 = r3.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> 
(assert true)
;(assert (<init>/-666303065 var230 var2546 (ite (= 1 0) true false) var2558!1 null-var2781 0)) ; Statement: specialinvoke $r22.<jdk.internal.org.objectweb.asm.AnnotationWriter: void <init>(jdk.internal.org.objectweb.asm.ClassWriter,boolean,jdk.internal.org.objectweb.asm.ByteVector,jdk.internal.org.objectweb.asm.ByteVector,int)>($r23, 0, $r0, null, 0) 

(declare-const var230!1 var1472)
(declare-const var2546!1 var647)
(declare-const var2685 Int)
(declare-const var2558!2 var2781)
(declare-const var265 var2453)
(declare-const var2685!1 Int)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2781-init=([], jdk.internal.org.objectweb.asm.ByteVector), <init>/-1779032354=([jdk.internal.org.objectweb.asm.ByteVector], void), synthetics/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), var1564_max/1360571700=([int, int], int), var1472-init=([], jdk.internal.org.objectweb.asm.AnnotationWriter), cw/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ClassWriter), <init>/-666303065=([jdk.internal.org.objectweb.asm.AnnotationWriter, jdk.internal.org.objectweb.asm.ClassWriter, boolean, jdk.internal.org.objectweb.asm.ByteVector, jdk.internal.org.objectweb.asm.ByteVector, int], void)}
; {var563=jdk.internal.org.objectweb.asm.MethodWriter, var3944=r3, var190=i1, var707=r1, var2453=null_type, var2225=z1, var2781=jdk.internal.org.objectweb.asm.ByteVector, var2558=$r0, var2967=$r2, var2148=$z0, var211=$i5, var606=$i4, var1564=java.lang.Math, var88=$i6, var1472=jdk.internal.org.objectweb.asm.AnnotationWriter, var230=$r22, var647=jdk.internal.org.objectweb.asm.ClassWriter, var2546=$r23, var2685=0, var265=null}
; {jdk.internal.org.objectweb.asm.MethodWriter=var563, r3=var3944, i1=var190, r1=var707, null_type=var2453, z1=var2225, jdk.internal.org.objectweb.asm.ByteVector=var2781, $r0=var2558, $r2=var2967, $z0=var2148, $i5=var211, $i4=var606, java.lang.Math=var1564, $i6=var88, jdk.internal.org.objectweb.asm.AnnotationWriter=var1472, $r22=var230, jdk.internal.org.objectweb.asm.ClassWriter=var647, $r23=var2546, 0=var2685, null=var265}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	i1 := @parameter0: int;	r1 := @parameter1: java.lang.String;	z1 := @parameter2: boolean;	$r0 = new jdk.internal.org.objectweb.asm.ByteVector;	specialinvoke $r0.<jdk.internal.org.objectweb.asm.ByteVector: void <init>()>();	$r2 = "Ljava/lang/Synthetic;";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = r3.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw>;	$i5 = r3.<jdk.internal.org.objectweb.asm.MethodWriter: int synthetics>;	$i4 = i1 + 1;	$i6 = staticinvoke <java.lang.Math: int max(int,int)>($i5, $i4);	r3.<jdk.internal.org.objectweb.asm.MethodWriter: int synthetics> = $i6;	$r22 = new jdk.internal.org.objectweb.asm.AnnotationWriter;	$r23 = r3.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw>;	specialinvoke $r22.<jdk.internal.org.objectweb.asm.AnnotationWriter: void <init>(jdk.internal.org.objectweb.asm.ClassWriter,boolean,jdk.internal.org.objectweb.asm.ByteVector,jdk.internal.org.objectweb.asm.ByteVector,int)>($r23, 0, $r0, null, 0);	return $r22
;block_num 2