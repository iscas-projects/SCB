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
(assert (and true (and (> (str.len var270) var2275) (<= 0 var2275))))
(define-const var2984 Int (charAt/698050440 var270 var2275)) ; Statement: c8 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i7) 
(define-const var21 Int (cast-from-Int-to-Int var2984)) ; Statement: $i10 = (int) c8 
 ; Statement: if $i10 != 40 goto $i11 = (int) c8 
(assert (not (= var21 40))) ; Cond: $i10 != 40 
(define-const var276 Int (cast-from-Int-to-Int var2984)) ; Statement: $i11 = (int) c8 
 ; Statement: if $i11 != 41 goto $i12 = (int) c8 
(assert (not (= var276 41))) ; Cond: $i11 != 41 
(define-const var2206 Int (cast-from-Int-to-Int var2984)) ; Statement: $i12 = (int) c8 
 ; Statement: if $i12 != 91 goto $i13 = (int) c8 
(assert (not (= var2206 91))) ; Cond: $i12 != 91 
(define-const var3047 Int (cast-from-Int-to-Int var2984)) ; Statement: $i13 = (int) c8 
 ; Statement: if $i13 != 76 goto i9 = i7 + 1 
(assert (not (not (= var3047 76)))) ; Negate: Cond: $i13 != 76  
(define-const var506 String (desc/1665060946 var2212)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(assert true)
(define-const var19 Int (indexOf/1426977840 var506 59 var2275)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.String: int indexOf(int,int)>(59, i7) 
(define-const var1576 Int (+ var19 1)) ; Statement: i9 = $i2 + 1 
 ; Statement: if i9 > 0 goto $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(assert (> var1576 0)) ; Cond: i9 > 0 
(define-const var1883 Int (index/1665060946 var2212)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(declare-const var2212!1 var3841)
(assert (not (= var2212!1 null-var3841)))
(assert (= (curPos/1665060946 var2212!1) var1883)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos> = $i0 
(declare-const var2212!2 var3841)
(assert (not (= var2212!2 null-var3841)))
(assert (= (index/1665060946 var2212!2) var1576)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> = i9 
(define-const var2846 Int (curPos/1665060946 var2212!2)) ; Statement: $i1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int curPos> 
 ; Statement: return $i1 
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