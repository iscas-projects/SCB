(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3762 0)
(declare-sort var398 0)
(declare-sort var2534 0)
(declare-sort var2315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cv/1902119360 (var2534) var2534)
(declare-fun cast-from-var3762-to-var2534 (var3762) var2534)
(declare-fun visitMethod/-733040681 (var2534 Int String String String (Array Int String)) var2315)
(declare-const null-var3762 var3762)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3132 var3762) ; Statement: r2 := @this: jdk.internal.org.objectweb.asm.commons.StaticInitMerger 
(assert (not (= var3132 null-var3762)))
(declare-const var2053 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2053 null-Int)))
(declare-const var2749 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2749 null-String)))
(declare-const var3512 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3512 null-String)))
(declare-const var954 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var954 null-String)))
(declare-const var1356 (Array Int String)) ; Statement: r5 := @parameter4: java.lang.String[] 
(assert (not (= var1356 null-__Array__Int__String__)))
(define-const var3422 String "<clinit>") ; Statement: $r1 = "<clinit>" 
(assert true)
(define-const var3091 Bool (= var3422 var2749)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r6 = r2.<jdk.internal.org.objectweb.asm.commons.StaticInitMerger: jdk.internal.org.objectweb.asm.ClassVisitor cv> 
(assert (= (ite var3091 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3723 var2534 (cv/1902119360 (cast-from-var3762-to-var2534 var3132))) ; Statement: $r6 = r2.<jdk.internal.org.objectweb.asm.commons.StaticInitMerger: jdk.internal.org.objectweb.asm.ClassVisitor cv> 
(assert true)
(define-const var2892 var2315 (visitMethod/-733040681 var3723 var2053 var2749 var3512 var954 var1356)) ; Statement: r18 = virtualinvoke $r6.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r0, r3, r4, r5) 
(assert true) ; Non Conditional
 ; Statement: return r18 
(check-sat)
(get-model)
(get-unsat-core)
; {cv/1902119360=([jdk.internal.org.objectweb.asm.ClassVisitor], jdk.internal.org.objectweb.asm.ClassVisitor), cast-from-var3762-to-var2534=([jdk.internal.org.objectweb.asm.commons.StaticInitMerger], jdk.internal.org.objectweb.asm.ClassVisitor), visitMethod/-733040681=([jdk.internal.org.objectweb.asm.ClassVisitor, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]], jdk.internal.org.objectweb.asm.MethodVisitor)}
; {var3762=jdk.internal.org.objectweb.asm.commons.StaticInitMerger, var3132=r2, var2053=i0, var2749=r0, var398=null_type, var3512=r3, var954=r4, var1356=r5, var3422=$r1, var3091=$z0, var2534=jdk.internal.org.objectweb.asm.ClassVisitor, var3723=$r6, var2315=jdk.internal.org.objectweb.asm.MethodVisitor, var2892=r18}
; {jdk.internal.org.objectweb.asm.commons.StaticInitMerger=var3762, r2=var3132, i0=var2053, r0=var2749, null_type=var398, r3=var3512, r4=var954, r5=var1356, $r1=var3422, $z0=var3091, jdk.internal.org.objectweb.asm.ClassVisitor=var2534, $r6=var3723, jdk.internal.org.objectweb.asm.MethodVisitor=var2315, r18=var2892}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.internal.org.objectweb.asm.commons.StaticInitMerger;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String[];	$r1 = "<clinit>";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r6 = r2.<jdk.internal.org.objectweb.asm.commons.StaticInitMerger: jdk.internal.org.objectweb.asm.ClassVisitor cv>;	$r6 = r2.<jdk.internal.org.objectweb.asm.commons.StaticInitMerger: jdk.internal.org.objectweb.asm.ClassVisitor cv>;	r18 = virtualinvoke $r6.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r0, r3, r4, r5);	return r18
;block_num 3