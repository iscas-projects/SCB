(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var1732 0)
(declare-sort var1006 0)
(declare-sort var141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var141_toPrimitiveClass/-1875738372 (Int) var1006)
(declare-const null-var3134 var3134)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1006__ (Array Int var1006))
(declare-const null-var1006 var1006)
(declare-const var1624 var3134) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1624 null-var3134)))
(declare-const var125 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var125 null-String)))
(declare-const var2267 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2267 null-Int)))
(declare-const var2712 (Array Int var1006)) ; Statement: r1 := @parameter3: org.apache.ibatis.javassist.CtClass[] 
(assert (not (= var2712 null-__Array__Int__var1006__)))
(declare-const var1072 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var1072 null-Int)))
(define-const var1560 Int 0) ; Statement: i3 = 0 
(assert (and true (and (> (str.len var125) var2267) (<= 0 var2267))))
(define-const var1238 Int (charAt/698050440 var125 var2267)) ; Statement: c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i2) 
(assert true) ; Non Conditional
(define-const var2807 Int (cast-from-Int-to-Int var1238)) ; Statement: $i8 = (int) c4 
 ; Statement: if $i8 != 91 goto $i9 = (int) c4 
(assert (not (= var2807 91))) ; Cond: $i8 != 91 
(define-const var2430 Int (cast-from-Int-to-Int var1238)) ; Statement: $i9 = (int) c4 
 ; Statement: if $i9 != 76 goto r7 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toPrimitiveClass(char)>(c4) 
(assert (not (= var2430 76))) ; Cond: $i9 != 76 
(define-const var3526 var1006 (var141_toPrimitiveClass/-1875738372 var1238)) ; Statement: r7 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toPrimitiveClass(char)>(c4) 
 ; Statement: if r7 != null goto i7 = i2 + 1 
(assert (not (not (= var3526 null-var1006)))) ; Negate: Cond: r7 != null  
(define-const var3991 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: return $i11 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var141_toPrimitiveClass/-1875738372=([char], org.apache.ibatis.javassist.CtClass)}
; {var3134=org.apache.ibatis.javassist.ClassPool, var1624=r2, var125=r0, var1732=null_type, var2267=i2, var1006=org.apache.ibatis.javassist.CtClass, var2712=r1, var1072=i0, var1560=i3, var1238=c4, var2807=$i8, var2430=$i9, var141=org.apache.ibatis.javassist.bytecode.Descriptor, var3526=r7, var3991=$i11}
; {org.apache.ibatis.javassist.ClassPool=var3134, r2=var1624, r0=var125, null_type=var1732, i2=var2267, org.apache.ibatis.javassist.CtClass=var1006, r1=var2712, i0=var1072, i3=var1560, c4=var1238, $i8=var2807, $i9=var2430, org.apache.ibatis.javassist.bytecode.Descriptor=var141, r7=var3526, $i11=var3991}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.javassist.ClassPool;	r0 := @parameter1: java.lang.String;	i2 := @parameter2: int;	r1 := @parameter3: org.apache.ibatis.javassist.CtClass[];	i0 := @parameter4: int;	i3 = 0;	c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i2);	$i8 = (int) c4;	if $i8 != 91 goto $i9 = (int) c4;	$i9 = (int) c4;	if $i9 != 76 goto r7 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toPrimitiveClass(char)>(c4);	r7 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toPrimitiveClass(char)>(c4);	if r7 != null goto i7 = i2 + 1;	$i11 = (int) -1;	return $i11
;block_num 5