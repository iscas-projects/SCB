(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/1665060946 (var3841) Int)
(declare-fun desc/1665060946 (var3841) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun curPos/1665060946 (var3841) Int)
(declare-const null-var3841 var3841)
(declare-const var2212 var3841) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator 
(assert (not (= var2212 null-var3841)))
(define-const var2275 Int (index/1665060946 var2212)) ; Statement: i7 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(define-const var270 String (desc/1665060946 var2212)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(assert (not (and true (and (> (str.len var270) var2275) (<= 0 var2275)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int), desc/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), curPos/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int)}
; {var3841=org.apache.ibatis.javassist.bytecode.Descriptor$Iterator, var2212=r0, var2275=i7, var270=$r1, var2984=c8, var21=$i10, var276=$i11, var2206=$i12, var3047=$i13, var506=$r2, var19=$i2, var1576=i9, var1883=$i0, var2846=$i1}
; {org.apache.ibatis.javassist.bytecode.Descriptor$Iterator=var3841, r0=var2212, i7=var2275, $r1=var270, c8=var2984, $i10=var21, $i11=var276, $i12=var2206, $i13=var3047, $r2=var506, $i2=var19, i9=var1576, $i0=var1883, $i1=var2846}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator;	i7 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	c8 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i7);	$i10 = (int) c8;	if $i10 != 40 goto $i11 = (int) c8;	$i11 = (int) c8;	if $i11 != 41 goto $i12 = (int) c8;	$i12 = (int) c8;	if $i12 != 91 goto $i13 = (int) c8;	$i13 = (int) c8;	if $i13 != 76 goto i9 = i7 + 1;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	$i2 = virtualinvoke $r2.<java.lang.String: int indexOf(int,int)>(59, i7);	i9 = $i2 + 1;	if i9 > 0 goto $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos> = $i0;	r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> = i9;	$i1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos>;	return $i1
;block_num 6