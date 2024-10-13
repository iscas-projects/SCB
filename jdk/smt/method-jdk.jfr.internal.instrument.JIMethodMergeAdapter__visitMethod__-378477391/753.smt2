(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3253 0)
(declare-sort var1263 0)
(declare-sort var3177 0)
(declare-sort var2332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun methodInFilter/802350035 (var3253 String String) Bool)
(declare-fun visitMethod/-733040681 (var2332 Int String String String (Array Int String)) var3177)
(declare-fun cast-from-var3253-to-var2332 (var3253) var2332)
(declare-const null-var3253 var3253)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2618 var3253) ; Statement: r0 := @this: jdk.jfr.internal.instrument.JIMethodMergeAdapter 
(assert (not (= var2618 null-var3253)))
(declare-const var267 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var267 null-Int)))
(declare-const var644 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var644 null-String)))
(declare-const var3782 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3782 null-String)))
(declare-const var1761 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var1761 null-String)))
(declare-const var2232 (Array Int String)) ; Statement: r4 := @parameter4: java.lang.String[] 
(assert (not (= var2232 null-__Array__Int__String__)))
(assert true)
(define-const var3946 Bool (methodInFilter/802350035 var2618 var644 var3782)) ; Statement: $z0 = specialinvoke r0.<jdk.jfr.internal.instrument.JIMethodMergeAdapter: boolean methodInFilter(java.lang.String,java.lang.String)>(r1, r2) 
 ; Statement: if $z0 == 0 goto $r5 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r2, r3, r4) 
(assert (= (ite var3946 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2345 var3177 (visitMethod/-733040681 (cast-from-var3253-to-var2332 var2618) var267 var644 var3782 var1761 var2232)) ; Statement: $r5 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r2, r3, r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {methodInFilter/802350035=([jdk.jfr.internal.instrument.JIMethodMergeAdapter, java.lang.String, java.lang.String], boolean), visitMethod/-733040681=([jdk.internal.org.objectweb.asm.ClassVisitor, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]], jdk.internal.org.objectweb.asm.MethodVisitor), cast-from-var3253-to-var2332=([jdk.jfr.internal.instrument.JIMethodMergeAdapter], jdk.internal.org.objectweb.asm.ClassVisitor)}
; {var3253=jdk.jfr.internal.instrument.JIMethodMergeAdapter, var2618=r0, var267=i0, var644=r1, var1263=null_type, var3782=r2, var1761=r3, var2232=r4, var3946=$z0, var3177=jdk.internal.org.objectweb.asm.MethodVisitor, var2332=jdk.internal.org.objectweb.asm.ClassVisitor, var2345=$r5}
; {jdk.jfr.internal.instrument.JIMethodMergeAdapter=var3253, r0=var2618, i0=var267, r1=var644, null_type=var1263, r2=var3782, r3=var1761, r4=var2232, $z0=var3946, jdk.internal.org.objectweb.asm.MethodVisitor=var3177, jdk.internal.org.objectweb.asm.ClassVisitor=var2332, $r5=var2345}
;seq 
;cnt {}
;stmts r0 := @this: jdk.jfr.internal.instrument.JIMethodMergeAdapter;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String[];	$z0 = specialinvoke r0.<jdk.jfr.internal.instrument.JIMethodMergeAdapter: boolean methodInFilter(java.lang.String,java.lang.String)>(r1, r2);	if $z0 == 0 goto $r5 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r2, r3, r4);	$r5 = specialinvoke r0.<jdk.internal.org.objectweb.asm.ClassVisitor: jdk.internal.org.objectweb.asm.MethodVisitor visitMethod(int,java.lang.String,java.lang.String,java.lang.String,java.lang.String[])>(i0, r1, r2, r3, r4);	return $r5
;block_num 2