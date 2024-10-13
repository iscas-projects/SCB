(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2126 0)
(declare-sort var772 0)
(declare-sort var501 0)
(declare-sort var722 0)
(declare-sort var3104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1261334635 (var722 Int) void)
(declare-fun cast-from-var2126-to-var722 (var2126) var722)
(declare-fun var3104-init () var3104)
(declare-fun <init>/-1779032354 (var3104) void)
(declare-fun code/-1797295458 (var2126) var3104)
(declare-fun firstMethod/790748385 (var772) var2126)
(declare-fun lastMethod/790748385 (var772) var2126)
(declare-fun cw/-1797295458 (var2126) var772)
(declare-fun access/-1797295458 (var2126) Int)
(declare-fun newUTF8/-569522875 (var772 String) Int)
(declare-fun name/-1797295458 (var2126) Int)
(declare-fun desc/-1797295458 (var2126) Int)
(declare-fun descriptor/-1797295458 (var2126) String)
(declare-fun signature/-1797295458 (var2126) String)
(declare-fun compute/-1797295458 (var2126) Int)
(declare-const null-var2126 var2126)
(declare-const null-var772 var772)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var242 var2126) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter 
(assert (not (= var242 null-var2126)))
(declare-const var815 var772) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter 
(assert (not (= var815 null-var772)))
(declare-const var3516 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3516 null-Int)))
(declare-const var1320 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1320 null-String)))
(declare-const var944 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var944 null-String)))
(declare-const var1293 String) ; Statement: r8 := @parameter4: java.lang.String 
(assert (not (= var1293 null-String)))
(declare-const var14 (Array Int String)) ; Statement: r9 := @parameter5: java.lang.String[] 
(assert (not (= var14 null-__Array__Int__String__)))
(declare-const var2449 Bool) ; Statement: z2 := @parameter6: boolean 
(assert (not (= var2449 null-Bool)))
(declare-const var290 Bool) ; Statement: z1 := @parameter7: boolean 
(assert (not (= var290 null-Bool)))
(assert true)
;(assert (<init>/-1261334635 (cast-from-var2126-to-var722 var242) 327680)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: void <init>(int)>(327680) 

(declare-const var242!1 var2126)
(declare-const var2417 Int)
(define-const var2066 var3104 var3104-init) ; Statement: $r17 = new jdk.internal.org.objectweb.asm.ByteVector 
(assert true)
;(assert (<init>/-1779032354 var2066)) ; Statement: specialinvoke $r17.<jdk.internal.org.objectweb.asm.ByteVector: void <init>()>() 

(declare-const var2066!1 var3104)
(declare-const var242!2 var2126)
(assert (not (= var242!2 null-var2126)))
(assert (= (code/-1797295458 var242!2) var2066!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector code> = $r17 
(define-const var272 var2126 (firstMethod/790748385 var815)) ; Statement: $r3 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter firstMethod> 
 ; Statement: if $r3 != null goto $r4 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> 
(assert (not (not (= var272 null-var2126)))) ; Negate: Cond: $r3 != null  
(declare-const var815!1 var772)
(assert (not (= var815!1 null-var772)))
(assert (= (firstMethod/790748385 var815!1) var242!2)) ; Statement: r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter firstMethod> = r0 
 ; Statement: goto [?= r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> = r0] 
(assert true) ; Non Conditional
(declare-const var815!2 var772)
(assert (not (= var815!2 null-var772)))
(assert (= (lastMethod/790748385 var815!2) var242!2)) ; Statement: r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> = r0 
(declare-const var242!3 var2126)
(assert (not (= var242!3 null-var2126)))
(assert (= (cw/-1797295458 var242!3) var815!2)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> = r2 
(declare-const var242!4 var2126)
(assert (not (= var242!4 null-var2126)))
(assert (= (access/-1797295458 var242!4) var3516)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> = i0 
(define-const var984 String "<init>") ; Statement: $r6 = "<init>" 
(assert true)
(define-const var2216 Bool (= var984 var1320)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5) 
(assert (= (ite var2216 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3929 Int (newUTF8/-569522875 var815!2 var1320)) ; Statement: $i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5) 
(declare-const var242!5 var2126)
(assert (not (= var242!5 null-var2126)))
(assert (= (name/-1797295458 var242!5) var3929)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int name> = $i1 
(assert true)
(define-const var469 Int (newUTF8/-569522875 var815!2 var944)) ; Statement: $i2 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r7) 
(declare-const var242!6 var2126)
(assert (not (= var242!6 null-var2126)))
(assert (= (desc/-1797295458 var242!6) var469)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int desc> = $i2 
(declare-const var242!7 var2126)
(assert (not (= var242!7 null-var2126)))
(assert (= (descriptor/-1797295458 var242!7) var944)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> = r7 
(declare-const var242!8 var2126)
(assert (not (= var242!8 null-var2126)))
(assert (= (signature/-1797295458 var242!8) var1293)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String signature> = r8 
 ; Statement: if r9 == null goto (branch) 
(assert (= var14 null-__Array__Int__String__)) ; Cond: r9 == null 
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var290 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3867 Int 0) ; Statement: $b16 = 0 
 ; Statement: goto [?= r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16] 
(assert true) ; Non Conditional
(declare-const var242!9 var2126)
(assert (not (= var242!9 null-var2126)))
(assert (= (compute/-1797295458 var242!9) var3867)) ; Statement: r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16 
 ; Statement: if z2 != 0 goto $r10 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> 
(assert (not (not (= (ite var2449 1 0) 0)))) ; Negate: Cond: z2 != 0  
 ; Statement: if z1 == 0 goto return 
(assert (= (ite var290 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1261334635=([jdk.internal.org.objectweb.asm.MethodVisitor, int], void), cast-from-var2126-to-var722=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.MethodVisitor), var3104-init=([], jdk.internal.org.objectweb.asm.ByteVector), <init>/-1779032354=([jdk.internal.org.objectweb.asm.ByteVector], void), code/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ByteVector), firstMethod/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.MethodWriter), lastMethod/790748385=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.MethodWriter), cw/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], jdk.internal.org.objectweb.asm.ClassWriter), access/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), newUTF8/-569522875=([jdk.internal.org.objectweb.asm.ClassWriter, java.lang.String], int), name/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), desc/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int), descriptor/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), signature/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], java.lang.String), compute/-1797295458=([jdk.internal.org.objectweb.asm.MethodWriter], int)}
; {var2126=jdk.internal.org.objectweb.asm.MethodWriter, var242=r0, var772=jdk.internal.org.objectweb.asm.ClassWriter, var815=r2, var3516=i0, var1320=r5, var501=null_type, var944=r7, var1293=r8, var14=r9, var2449=z2, var290=z1, var722=jdk.internal.org.objectweb.asm.MethodVisitor, var2417=327680, var3104=jdk.internal.org.objectweb.asm.ByteVector, var2066=$r17, var272=$r3, var984=$r6, var2216=$z0, var3929=$i1, var469=$i2, var3867=$b16}
; {jdk.internal.org.objectweb.asm.MethodWriter=var2126, r0=var242, jdk.internal.org.objectweb.asm.ClassWriter=var772, r2=var815, i0=var3516, r5=var1320, null_type=var501, r7=var944, r8=var1293, r9=var14, z2=var2449, z1=var290, jdk.internal.org.objectweb.asm.MethodVisitor=var722, 327680=var2417, jdk.internal.org.objectweb.asm.ByteVector=var3104, $r17=var2066, $r3=var272, $r6=var984, $z0=var2216, $i1=var3929, $i2=var469, $b16=var3867}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.MethodWriter;	r2 := @parameter0: jdk.internal.org.objectweb.asm.ClassWriter;	i0 := @parameter1: int;	r5 := @parameter2: java.lang.String;	r7 := @parameter3: java.lang.String;	r8 := @parameter4: java.lang.String;	r9 := @parameter5: java.lang.String[];	z2 := @parameter6: boolean;	z1 := @parameter7: boolean;	specialinvoke r0.<jdk.internal.org.objectweb.asm.MethodVisitor: void <init>(int)>(327680);	$r17 = new jdk.internal.org.objectweb.asm.ByteVector;	specialinvoke $r17.<jdk.internal.org.objectweb.asm.ByteVector: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ByteVector code> = $r17;	$r3 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter firstMethod>;	if $r3 != null goto $r4 = r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod>;	r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter firstMethod> = r0;	goto [?= r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> = r0];	r2.<jdk.internal.org.objectweb.asm.ClassWriter: jdk.internal.org.objectweb.asm.MethodWriter lastMethod> = r0;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: jdk.internal.org.objectweb.asm.ClassWriter cw> = r2;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int access> = i0;	$r6 = "<init>";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5);	$i1 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r5);	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int name> = $i1;	$i2 = virtualinvoke r2.<jdk.internal.org.objectweb.asm.ClassWriter: int newUTF8(java.lang.String)>(r7);	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int desc> = $i2;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor> = r7;	r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String signature> = r8;	if r9 == null goto (branch);	if z1 == 0 goto (branch);	$b16 = 0;	goto [?= r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16];	r0.<jdk.internal.org.objectweb.asm.MethodWriter: int compute> = $b16;	if z2 != 0 goto $r10 = r0.<jdk.internal.org.objectweb.asm.MethodWriter: java.lang.String descriptor>;	if z1 == 0 goto return;	return
;block_num 9