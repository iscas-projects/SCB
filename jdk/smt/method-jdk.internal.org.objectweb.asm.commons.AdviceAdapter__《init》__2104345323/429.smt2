(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3575 0)
(declare-sort var3030 0)
(declare-sort var775 0)
(declare-sort var2890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/219329368 (var2890 Int var3030 Int String String) void)
(declare-fun cast-from-var3575-to-var2890 (var3575) var2890)
(declare-fun methodAccess/-350226169 (var3575) Int)
(declare-fun methodDesc/-350226169 (var3575) String)
(declare-fun constructor/-350226169 (var3575) Bool)
(declare-const null-var3575 var3575)
(declare-const null-Int Int)
(declare-const null-var3030 var3030)
(declare-const null-String String)
(declare-const var70 var3575) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.AdviceAdapter 
(assert (not (= var70 null-var3575)))
(declare-const var3728 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3728 null-Int)))
(declare-const var1846 var3030) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.MethodVisitor 
(assert (not (= var1846 null-var3030)))
(declare-const var502 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var502 null-Int)))
(declare-const var2850 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var2850 null-String)))
(declare-const var2716 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var2716 null-String)))
(assert true)
;(assert (<init>/219329368 (cast-from-var3575-to-var2890 var70) var3728 var1846 var502 var2850 var2716)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void <init>(int,jdk.internal.org.objectweb.asm.MethodVisitor,int,java.lang.String,java.lang.String)>(i0, r1, i1, r2, r3) 

(declare-const var70!1 var3575)
(declare-const var3728!1 Int)
(declare-const var1846!1 var3030)
(declare-const var502!1 Int)
(declare-const var2850!1 String)
(declare-const var2716!1 String)
(declare-const var70!2 var3575)
(assert (not (= var70!2 null-var3575)))
(assert (= (methodAccess/-350226169 var70!2) var502!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.AdviceAdapter: int methodAccess> = i1 
(declare-const var70!3 var3575)
(assert (not (= var70!3 null-var3575)))
(assert (= (methodDesc/-350226169 var70!3) var2716!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.AdviceAdapter: java.lang.String methodDesc> = r3 
(define-const var2755 String "<init>") ; Statement: $r4 = "<init>" 
(assert true)
(define-const var3163 Bool (= var2755 var2850!1)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(declare-const var70!4 var3575)
(assert (not (= var70!4 null-var3575)))
(assert (= (constructor/-350226169 var70!4) var3163)) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.AdviceAdapter: boolean constructor> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/219329368=([jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, int, jdk.internal.org.objectweb.asm.MethodVisitor, int, java.lang.String, java.lang.String], void), cast-from-var3575-to-var2890=([jdk.internal.org.objectweb.asm.commons.AdviceAdapter], jdk.internal.org.objectweb.asm.commons.GeneratorAdapter), methodAccess/-350226169=([jdk.internal.org.objectweb.asm.commons.AdviceAdapter], int), methodDesc/-350226169=([jdk.internal.org.objectweb.asm.commons.AdviceAdapter], java.lang.String), constructor/-350226169=([jdk.internal.org.objectweb.asm.commons.AdviceAdapter], boolean)}
; {var3575=jdk.internal.org.objectweb.asm.commons.AdviceAdapter, var70=r0, var3728=i0, var3030=jdk.internal.org.objectweb.asm.MethodVisitor, var1846=r1, var502=i1, var2850=r2, var775=null_type, var2716=r3, var2890=jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, var2755=$r4, var3163=$z0}
; {jdk.internal.org.objectweb.asm.commons.AdviceAdapter=var3575, r0=var70, i0=var3728, jdk.internal.org.objectweb.asm.MethodVisitor=var3030, r1=var1846, i1=var502, r2=var2850, null_type=var775, r3=var2716, jdk.internal.org.objectweb.asm.commons.GeneratorAdapter=var2890, $r4=var2755, $z0=var3163}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.AdviceAdapter;	i0 := @parameter0: int;	r1 := @parameter1: jdk.internal.org.objectweb.asm.MethodVisitor;	i1 := @parameter2: int;	r2 := @parameter3: java.lang.String;	r3 := @parameter4: java.lang.String;	specialinvoke r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void <init>(int,jdk.internal.org.objectweb.asm.MethodVisitor,int,java.lang.String,java.lang.String)>(i0, r1, i1, r2, r3);	r0.<jdk.internal.org.objectweb.asm.commons.AdviceAdapter: int methodAccess> = i1;	r0.<jdk.internal.org.objectweb.asm.commons.AdviceAdapter: java.lang.String methodDesc> = r3;	$r4 = "<init>";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2);	r0.<jdk.internal.org.objectweb.asm.commons.AdviceAdapter: boolean constructor> = $z0;	return
;block_num 1