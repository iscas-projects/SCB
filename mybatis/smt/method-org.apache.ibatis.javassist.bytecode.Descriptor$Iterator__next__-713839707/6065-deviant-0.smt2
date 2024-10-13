(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/1665060946 (var2080) Int)
(declare-fun desc/1665060946 (var2080) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curPos/1665060946 (var2080) Int)
(declare-const null-var2080 var2080)
(declare-const var2830 var2080) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator 
(assert (not (= var2830 null-var2080)))
(define-const var2325 Int (index/1665060946 var2830)) ; Statement: i7 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(define-const var3425 String (desc/1665060946 var2830)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(assert (not (and true (and (> (str.len var3425) var2325) (<= 0 var2325)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int), desc/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), curPos/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int)}
; {var2080=org.apache.ibatis.javassist.bytecode.Descriptor$Iterator, var2830=r0, var2325=i7, var3425=$r1, var3873=c8, var3624=$i10, var14=$i11, var176=$i12, var2744=$i13, var1756=i9, var3551=$i0, var3949=$i1}
; {org.apache.ibatis.javassist.bytecode.Descriptor$Iterator=var2080, r0=var2830, i7=var2325, $r1=var3425, c8=var3873, $i10=var3624, $i11=var14, $i12=var176, $i13=var2744, i9=var1756, $i0=var3551, $i1=var3949}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator;	i7 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	c8 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i7);	$i10 = (int) c8;	if $i10 != 40 goto $i11 = (int) c8;	$i11 = (int) c8;	if $i11 != 41 goto $i12 = (int) c8;	$i12 = (int) c8;	if $i12 != 91 goto $i13 = (int) c8;	$i13 = (int) c8;	if $i13 != 76 goto i9 = i7 + 1;	i9 = i7 + 1;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos> = $i0;	r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> = i9;	$i1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos>;	return $i1
;block_num 6