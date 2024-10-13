(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun b/-1028183306 (var3349) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3349 var3349)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var558 var3349) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.ClassReader 
(assert (not (= var558 null-var3349)))
(declare-const var2969 Int) ; Statement: i15 := @parameter0: int 
(assert (not (= var2969 null-Int)))
(declare-const var1461 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1461 null-Int)))
(declare-const var3811 (Array Int Int)) ; Statement: r3 := @parameter2: char[] 
(assert (not (= var3811 null-__Array__Int__Int__)))
(define-const var2290 Int (+ var2969 var1461)) ; Statement: i1 = i15 + i0 
(define-const var588 (Array Int Int) (b/-1028183306 var558)) ; Statement: r1 = r0.<com.alibaba.fastjson2.internal.asm.ClassReader: byte[] b> 
(define-const var3760 Int 0) ; Statement: i16 = 0 
(define-const var3466 Int 0) ; Statement: b17 = 0 
(define-const var3073 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i1 goto $r4 = new java.lang.String 
(assert (>= var2969 var2290)) ; Cond: i15 >= i1 
(define-const var1219 String String-init) ; Statement: $r4 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1219 var3811 0 var3760)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>(r3, 0, i16) 

(declare-const var1219!1 String)
(declare-const var3811!1 (Array Int Int))
(declare-const var2544 Int)
(declare-const var3760!1 Int)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {b/-1028183306=([com.alibaba.fastjson2.internal.asm.ClassReader], byte[]), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3349=com.alibaba.fastjson2.internal.asm.ClassReader, var558=r0, var2969=i15, var1461=i0, var3811=r3, var2290=i1, var588=r1, var3760=i16, var3466=b17, var3073=i18, var1219=$r4, var2544=0}
; {com.alibaba.fastjson2.internal.asm.ClassReader=var3349, r0=var558, i15=var2969, i0=var1461, r3=var3811, i1=var2290, r1=var588, i16=var3760, b17=var3466, i18=var3073, $r4=var1219, 0=var2544}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.ClassReader;	i15 := @parameter0: int;	i0 := @parameter1: int;	r3 := @parameter2: char[];	i1 = i15 + i0;	r1 = r0.<com.alibaba.fastjson2.internal.asm.ClassReader: byte[] b>;	i16 = 0;	b17 = 0;	i18 = 0;	if i15 >= i1 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	specialinvoke $r4.<java.lang.String: void <init>(char[],int,int)>(r3, 0, i16);	return $r4
;block_num 3