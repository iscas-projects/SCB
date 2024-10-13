(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var764 0)
(declare-sort var2415 0)
(declare-sort var2136 0)
(declare-sort var1828 0)
(declare-sort var1780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1261334635 (var1828 Int) void)
(declare-fun cast-from-var764-to-var1828 (var764) var1828)
(declare-fun var1780-init () var1780)
(declare-fun <init>/-1779032354 (var1780) void)
(declare-fun code/-1797295458 (var764) var1780)
(declare-fun firstMethod/790748385 (var2415) var764)
(declare-fun lastMethod/790748385 (var2415) var764)
(declare-fun mv/-1017828445 (var1828) var1828)
(declare-fun cw/-1797295458 (var764) var2415)
(declare-fun access/-1797295458 (var764) Int)
(declare-fun newUTF8/-569522875 (var2415 String) Int)
(declare-fun name/-1797295458 (var764) Int)
(declare-fun desc/-1797295458 (var764) Int)
(declare-fun descriptor/-1797295458 (var764) String)
(declare-fun signature/-1797295458 (var764) String)
(declare-fun compute/-1797295458 (var764) Int)
(declare-const null-var764 var764)
(declare-const null-var2415 var2415)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var1233 var764) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var1233 null-var764)))
(declare-const var3079 var2415) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var3079 null-var2415)))
(declare-const var1998 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1998 null-Int)))
(declare-const var2568 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2568 null-String)))
(declare-const var2461 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var2461 null-String)))
(declare-const var1931 String) ; Statement: r8 := @parameter4: java.lang.String 
(assert (not (= var1931 null-String)))
(declare-const var2962 (Array Int String)) ; Statement: r9 := @parameter5: java.lang.String[] 
(assert (not (= var2962 null-__Array__Int__String__)))
(declare-const var1340 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var1340 null-Bool)))
(declare-const var2288 Bool) ; Statement: z1 := @parameter7: boolean 
(assert (not (= var2288 null-Bool)))
(assert true)
;(assert (<init>/-1261334635 (cast-from-var764-to-var1828 var1233) 327680)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: void <init>(int)>(327680) 

(declare-const var1233!1 var764)
(declare-const var3646 Int)
(define-const var210 var1780 var1780-init) ; Statement: $r17 = new jdk.internal.org.objectweb.asm.ByteVector 
(assert true)
;(assert (<init>/-1779032354 var210)) ; Statement: specialinvoke $r17.<jdk.internal.org.objectweb.asm.ByteVector: void <init>()>() 

(declare-const var210!1 var1780)
(declare-const var1233!2 var764)
(assert (not (= var1233!2 null-var764)))
(assert (= (code/-1797295458 var1233!2) var210!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector code> = $r17 
(define-const var429 var764 (firstMethod/790748385 var3079)) ; Statement: $r3 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter firstMethod> 
 ; Statement: if $r3 != null goto $r4 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> 
(assert (not (= var429 null-var764))) ; Cond: $r3 != null 
(define-const var1656 var764 (lastMethod/790748385 var3079)) ; Statement: $r4 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> 
(declare-const var1656!1 var764)
(assert (not (= var1656!1 null-var764)))
(assert (= (mv/-1017828445 (cast-from-var764-to-var1828 var1656!1)) (cast-from-var764-to-var1828 var1233!2))) ; Statement: $r4.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> = r0 
(assert true) ; Non Conditional
(declare-const var3079!1 var2415)
(assert (not (= var3079!1 null-var2415)))
(assert (= (lastMethod/790748385 var3079!1) var1233!2)) ; Statement: r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> = r0 
(declare-const var1233!3 var764)
(assert (not (= var1233!3 null-var764)))
(assert (= (cw/-1797295458 var1233!3) var3079!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> = r2 
(declare-const var1233!4 var764)
(assert (not (= var1233!4 null-var764)))
(assert (= (access/-1797295458 var1233!4) var1998)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> = i0 
(define-const var1226 String "<init>") ; Statement: $r6 = "<init>" 
(assert true)
(define-const var1409 Bool (= var1226 var2568)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5) 
(assert (= (ite var1409 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2179 Int (newUTF8/-569522875 var3079!1 var2568)) ; Statement: $i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5) 
(declare-const var1233!5 var764)
(assert (not (= var1233!5 null-var764)))
(assert (= (name/-1797295458 var1233!5) var2179)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int name> = $i1 
(assert true)
(define-const var589 Int (newUTF8/-569522875 var3079!1 var2461)) ; Statement: $i2 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r7) 
(declare-const var1233!6 var764)
(assert (not (= var1233!6 null-var764)))
(assert (= (desc/-1797295458 var1233!6) var589)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int desc> = $i2 
(declare-const var1233!7 var764)
(assert (not (= var1233!7 null-var764)))
(assert (= (descriptor/-1797295458 var1233!7) var2461)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> = r7 
(declare-const var1233!8 var764)
(assert (not (= var1233!8 null-var764)))
(assert (= (signature/-1797295458 var1233!8) var1931)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String signature> = r8 
 ; Statement: if r9 == null goto (branch) 
(assert (= var2962 null-__Array__Int__String__)) ; Cond: r9 == null 
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var2288 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2993 Int 0) ; Statement: $b16 = 0 
 ; Statement: goto [?= r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16] 
(assert true) ; Non Conditional
(declare-const var1233!9 var764)
(assert (not (= var1233!9 null-var764)))
(assert (= (compute/-1797295458 var1233!9) var2993)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16 
 ; Statement: if z2 != 0 goto $r10 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(assert (not (not (= (ite var1340 1 0) 0)))) ; Negate: Cond: z2 != 0  
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var2288 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1261334635=([jdk.internal.org.objectweb.asm.MethodVisitor, int], void), cast-from-var764-to-var1828=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.MethodVisitor), var1780-init=([], jdk.internal.org.objectweb.asm.ByteVector), <init>/-1779032354=([jdk.internal.org.objectweb.asm.ByteVector], void), code/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ByteVector), firstMethod/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.MethodWriter), lastMethod/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.MethodWriter), mv/-1017828445=([jdk.internal.org.objectweb.asm.MethodVisitor], jdk.internal.org.objectweb.asm.MethodVisitor), cw/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ClassWriter), access/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), newUTF8/-569522875=([jdk.internal.org.objectweb.asm.ClassWriter, java.lang.String], int), name/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), desc/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), descriptor/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), signature/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), compute/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int)}
; {var764=jdk.internal.org.objectweb.asm.MethodWriter, var1233=r0, var2415=jdk.internal.org.objectweb.asm.ClassWriter, var3079=r2, var1998=i0, var2568=r5, var2136=null_type, var2461=r7, var1931=r8, var2962=r9, var1340=z2, var2288=z1, var1828=jdk.internal.org.objectweb.asm.MethodVisitor, var3646=327680, var1780=jdk.internal.org.objectweb.asm.ByteVector, var210=$r17, var429=$r3, var1656=$r4, var1226=$r6, var1409=$z0, var2179=$i1, var589=$i2, var2993=$b16}
; {jdk.internal.org.objectweb.asm.MethodWriter=var764, r0=var1233, jdk.internal.org.objectweb.asm.ClassWriter=var2415, r2=var3079, i0=var1998, r5=var2568, null_type=var2136, r7=var2461, r8=var1931, r9=var2962, z2=var1340, z1=var2288, jdk.internal.org.objectweb.asm.MethodVisitor=var1828, 327680=var3646, jdk.internal.org.objectweb.asm.ByteVector=var1780, $r17=var210, $r3=var429, $r4=var1656, $r6=var1226, $z0=var1409, $i1=var2179, $i2=var589, $b16=var2993}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	r2 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	i0 := @parameter1: int;	r5 := @parameter2: java.lang.String;	r7 := @parameter3: java.lang.String;	r8 := @parameter4: java.lang.String;	r9 := @parameter5: java.lang.String[];	z2 := @parameter6: boolean;	z1 := @parameter7: boolean;	specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: void <init>(int)>(327680);	$r17 = new jdk.internal.org.objectweb.asm.ByteVector;	specialinvoke $r17.<jdk.internal.org.objectweb.asm.ByteVector: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector code> = $r17;	$r3 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter firstMethod>;	if $r3 != null goto $r4 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod>;	$r4 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod>;	$r4.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.MethodVisitor mv> = r0;	r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> = r0;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> = r2;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> = i0;	$r6 = "<init>";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5);	$i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5);	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int name> = $i1;	$i2 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r7);	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int desc> = $i2;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> = r7;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String signature> = r8;	if r9 == null goto (branch);	if z1 == 0 goto (branch);	$b16 = 0;	goto [?= r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16];	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16;	if z2 != 0 goto $r10 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	if z1 == 0 goto return;	return
;block_num 9