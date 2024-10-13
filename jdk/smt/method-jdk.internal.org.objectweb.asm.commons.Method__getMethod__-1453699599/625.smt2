(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2400 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var985-init () var985)
(declare-fun <init>/750527633 (var985) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2696 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2696 null-String)))
(declare-const var294 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var294 null-Bool)))
(assert true)
(define-const var2526 Int (indexOf/-1037706067 var2696 32)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(32) 
(assert true)
(define-const var317 Int (indexOf/1426977840 var2696 40 var2526)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(40, i0) 
(define-const var17 Int (+ var317 1)) ; Statement: i6 = $i1 + 1 
(assert true)
(define-const var3461 Int (indexOf/1426977840 var2696 41 var17)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(41, i6) 
(define-const var1603 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i0 == $i8 goto $r14 = new java.lang.IllegalArgumentException 
(assert (= var2526 var1603)) ; Cond: i0 == $i8 
(define-const var3864 var985 var985-init) ; Statement: $r14 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/750527633 var3864)) ; Statement: specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>()>() 

(declare-const var3864!1 var985)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), indexOf/1426977840=([java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), var985-init=([], java.lang.IllegalArgumentException), <init>/750527633=([java.lang.IllegalArgumentException], void)}
; {var2696=r0, var2400=null_type, var294=z0, var2526=i0, var317=$i1, var17=i6, var3461=i2, var1603=$i8, var985=java.lang.IllegalArgumentException, var3864=$r14}
; {r0=var2696, null_type=var2400, z0=var294, i0=var2526, $i1=var317, i6=var17, i2=var3461, $i8=var1603, java.lang.IllegalArgumentException=var985, $r14=var3864}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(32);	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(40, i0);	i6 = $i1 + 1;	i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(41, i6);	$i8 = (int) -1;	if i0 == $i8 goto $r14 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.IllegalArgumentException;	specialinvoke $r14.<java.lang.IllegalArgumentException: void <init>()>();	throw $r14
;block_num 2