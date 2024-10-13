(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var909 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var909 null-Int)))
(declare-const var2259 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2259 null-Int)))
(declare-const var3307 (Array Int Int)) ; Statement: r2 := @parameter2: byte[] 
(assert (not (= var3307 null-__Array__Int__Int__)))
(define-const var44 Int (+ var909 var2259)) ; Statement: i2 = i0 + i1 
(define-const var3343 Int (* var2259 2)) ; Statement: $i3 = i1 * 2 
(define-const var313 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[$i3] 
(define-const var608 Int 0) ; Statement: i17 = 0 
(define-const var2215 Int 0) ; Statement: b18 = 0 
(define-const var1082 Int 0) ; Statement: i19 = 0 
(define-const var1226 Int var909) ; Statement: i20 = i0 
(assert true) ; Non Conditional
 ; Statement: if i20 >= i2 goto $r3 = new java.lang.String 
(assert (>= var1226 var44)) ; Cond: i20 >= i2 
(define-const var2001 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2001 var313 0 var608)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>(r0, 0, i17) 

(declare-const var2001!1 String)
(declare-const var313!1 (Array Int Int))
(declare-const var720 Int)
(declare-const var608!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var909=i0, var2259=i1, var3307=r2, var44=i2, var3343=$i3, var313=r0, var608=i17, var2215=b18, var1082=i19, var1226=i20, var2001=$r3, var720=0}
; {i0=var909, i1=var2259, r2=var3307, i2=var44, $i3=var3343, r0=var313, i17=var608, b18=var2215, i19=var1082, i20=var1226, $r3=var2001, 0=var720}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	r2 := @parameter2: byte[];	i2 = i0 + i1;	$i3 = i1 * 2;	r0 = newarray (char)[$i3];	i17 = 0;	b18 = 0;	i19 = 0;	i20 = i0;	if i20 >= i2 goto $r3 = new java.lang.String;	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>(r0, 0, i17);	return $r3
;block_num 3