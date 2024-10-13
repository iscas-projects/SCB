(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var1886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun count/-1315764327 (var3341) Int)
(declare-fun enlarge/-325755803 (var3341 Int) void)
(declare-fun buf/-1315764327 (var3341) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3341 var3341)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2589 var3341) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.ByteStream 
(assert (not (= var2589 null-var3341)))
(declare-const var2885 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2885 null-String)))
(assert true)
(define-const var3327 Int (length/-134980193 var2885)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2318 Int (count/-1315764327 var2589)) ; Statement: i8 = r1.<org.apache.ibatis.javassist.bytecode.ByteStream: int count> 
(define-const var1414 Int (+ var3327 2)) ; Statement: $i1 = i0 + 2 
(assert true)
;(assert (enlarge/-325755803 var2589 var1414)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ByteStream: void enlarge(int)>($i1) 

(declare-const var2589!1 var3341)
(declare-const var1414!1 Int)
(define-const var546 (Array Int Int) (buf/-1315764327 var2589!1)) ; Statement: r2 = r1.<org.apache.ibatis.javassist.bytecode.ByteStream: byte[] buf> 
(define-const var3270 Int (+ var2318 1)) ; Statement: i9 = i8 + 1 
(define-const var3673 Int (div var3327 (to_int (^ 2 8)))) ; Statement: $i2 = i0 >>> 8 
(define-const var1680 Int (cast-from-Int-to-Int var3673)) ; Statement: $b3 = (byte) $i2 
(declare-const var546!1 (Array Int Int))
(assert (not (= var546!1 null-__Array__Int__Int__)))
(assert (= (select var546!1 var2318) var1680)) ; Statement: r2[i8] = $b3 
(define-const var3726 Int (+ var3270 1)) ; Statement: i10 = i9 + 1 
(define-const var1710 Int (cast-from-Int-to-Int var3327)) ; Statement: $b4 = (byte) i0 
(declare-const var546!2 (Array Int Int))
(assert (not (= var546!2 null-__Array__Int__Int__)))
(assert (= (select var546!2 var3270) var1710)) ; Statement: r2[i9] = $b4 
(define-const var609 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
 ; Statement: if i11 >= i0 goto r1.<org.apache.ibatis.javassist.bytecode.ByteStream: int count> = i10 
(assert (>= var609 var3327)) ; Cond: i11 >= i0 
(declare-const var2589!2 var3341)
(assert (not (= var2589!2 null-var3341)))
(assert (= (count/-1315764327 var2589!2) var3726)) ; Statement: r1.<org.apache.ibatis.javassist.bytecode.ByteStream: int count> = i10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), count/-1315764327=([org.apache.ibatis.javassist.bytecode.ByteStream], int), enlarge/-325755803=([org.apache.ibatis.javassist.bytecode.ByteStream, int], void), buf/-1315764327=([org.apache.ibatis.javassist.bytecode.ByteStream], byte[]), cast-from-Int-to-Int=([int], byte)}
; {var3341=org.apache.ibatis.javassist.bytecode.ByteStream, var2589=r1, var2885=r0, var1886=null_type, var3327=i0, var2318=i8, var1414=$i1, var546=r2, var3270=i9, var3673=$i2, var1680=$b3, var3726=i10, var1710=$b4, var609=i11}
; {org.apache.ibatis.javassist.bytecode.ByteStream=var3341, r1=var2589, r0=var2885, null_type=var1886, i0=var3327, i8=var2318, $i1=var1414, r2=var546, i9=var3270, $i2=var3673, $b3=var1680, i10=var3726, $b4=var1710, i11=var609}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.ByteStream;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i8 = r1.<org.apache.ibatis.javassist.bytecode.ByteStream: int count>;	$i1 = i0 + 2;	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.ByteStream: void enlarge(int)>($i1);	r2 = r1.<org.apache.ibatis.javassist.bytecode.ByteStream: byte[] buf>;	i9 = i8 + 1;	$i2 = i0 >>> 8;	$b3 = (byte) $i2;	r2[i8] = $b3;	i10 = i9 + 1;	$b4 = (byte) i0;	r2[i9] = $b4;	i11 = 0;	if i11 >= i0 goto r1.<org.apache.ibatis.javassist.bytecode.ByteStream: int count> = i10;	r1.<org.apache.ibatis.javassist.bytecode.ByteStream: int count> = i10;	return
;block_num 3