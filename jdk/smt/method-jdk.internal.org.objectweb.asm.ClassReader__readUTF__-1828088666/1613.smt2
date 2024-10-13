(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun b/635343153 (var1758) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1758 var1758)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2272 var1758) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.ClassReader 
(assert (not (= var2272 null-var1758)))
(declare-const var562 Int) ; Statement: i15 := @parameter0: int 
(assert (not (= var562 null-Int)))
(declare-const var1824 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1824 null-Int)))
(declare-const var1794 (Array Int Int)) ; Statement: r3 := @parameter2: char[] 
(assert (not (= var1794 null-__Array__Int__Int__)))
(define-const var384 Int (+ var562 var1824)) ; Statement: i1 = i15 + i0 
(define-const var2929 (Array Int Int) (b/635343153 var2272)) ; Statement: r1 = r0.<jdk.internal.org.objectweb.asm.ClassReader: byte[] b> 
(define-const var249 Int 0) ; Statement: i16 = 0 
(define-const var3811 Int 0) ; Statement: b17 = 0 
(define-const var3553 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i1 goto $r4 = new java.lang.String 
(assert (>= var562 var384)) ; Cond: i15 >= i1 
(define-const var2875 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2875 var1794 0 var249)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>(r3, 0, i16) 

(declare-const var2875!1 String)
(declare-const var1794!1 (Array Int Int))
(declare-const var274 Int)
(declare-const var249!1 Int)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {b/635343153=([jdk.internal.org.objectweb.asm.ClassReader], byte[]), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1758=jdk.internal.org.objectweb.asm.ClassReader, var2272=r0, var562=i15, var1824=i0, var1794=r3, var384=i1, var2929=r1, var249=i16, var3811=b17, var3553=i18, var2875=$r4, var274=0}
; {jdk.internal.org.objectweb.asm.ClassReader=var1758, r0=var2272, i15=var562, i0=var1824, r3=var1794, i1=var384, r1=var2929, i16=var249, b17=var3811, i18=var3553, $r4=var2875, 0=var274}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.ClassReader;	i15 := @parameter0: int;	i0 := @parameter1: int;	r3 := @parameter2: char[];	i1 = i15 + i0;	r1 = r0.<jdk.internal.org.objectweb.asm.ClassReader: byte[] b>;	i16 = 0;	b17 = 0;	i18 = 0;	if i15 >= i1 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>(r3, 0, i16);	return $r4
;block_num 3