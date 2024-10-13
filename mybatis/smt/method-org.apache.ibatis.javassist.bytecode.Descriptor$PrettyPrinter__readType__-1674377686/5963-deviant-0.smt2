(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1029 0)
(declare-sort var1703 0)
(declare-sort var2468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2468_toPrimitiveClass/-1875738372 (Int) var1703)
(declare-fun getName/1611768686 (var1703) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3500 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3500 null-String)))
(declare-const var815 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var815 null-Int)))
(declare-const var1188 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1188 null-String)))
(assert (not (and true (and (> (str.len var1188) var815) (<= 0 var815)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2468_toPrimitiveClass/-1875738372=([char], org.apache.ibatis.javassist.CtClass), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3500=r2, var815=i2, var1188=r0, var1029=null_type, var3496=c3, var195=i4, var3828=$i7, var1878=$i8, var1703=org.apache.ibatis.javassist.CtClass, var2468=org.apache.ibatis.javassist.bytecode.Descriptor, var53=r1, var2515=$r3, var1075=$i6, var1517=$i12, var1046=$i0}
; {r2=var3500, i2=var815, r0=var1188, null_type=var1029, c3=var3496, i4=var195, $i7=var3828, $i8=var1878, org.apache.ibatis.javassist.CtClass=var1703, org.apache.ibatis.javassist.bytecode.Descriptor=var2468, r1=var53, $r3=var2515, $i6=var1075, $i12=var1517, $i0=var1046}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.StringBuilder;	i2 := @parameter1: int;	r0 := @parameter2: java.lang.String;	c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i2);	i4 = 0;	$i7 = (int) c3;	if $i7 != 91 goto $i8 = (int) c3;	$i8 = (int) c3;	if $i8 != 76 goto r1 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toPrimitiveClass(char)>(c3);	r1 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: org.apache.ibatis.javassist.CtClass toPrimitiveClass(char)>(c3);	$r3 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$i6 = i4;	$i12 = (int) -1;	i4 = i4 + $i12;	if $i6 <= 0 goto $i0 = i2 + 1;	$i0 = i2 + 1;	return $i0
;block_num 6