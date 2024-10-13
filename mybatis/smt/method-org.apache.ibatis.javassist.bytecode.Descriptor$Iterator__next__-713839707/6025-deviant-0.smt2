(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1489 0)
(declare-sort var285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/1665060946 (var1489) Int)
(declare-fun desc/1665060946 (var1489) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun var285-init () var285)
(declare-fun <init>/1107025377 (var285 String) void)
(declare-const null-var1489 var1489)
(declare-const var1255 var1489) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator 
(assert (not (= var1255 null-var1489)))
(define-const var491 Int (index/1665060946 var1255)) ; Statement: i7 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index> 
(define-const var3822 String (desc/1665060946 var1255)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc> 
(assert (not (and true (and (> (str.len var3822) var491) (<= 0 var491)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], int), desc/1665060946=([org.apache.ibatis.javassist.bytecode.Descriptor$Iterator], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), var285-init=([], java.lang.IndexOutOfBoundsException), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var1489=org.apache.ibatis.javassist.bytecode.Descriptor$Iterator, var1255=r0, var491=i7, var3822=$r1, var2677=c8, var2555=$i10, var2659=$i11, var444=$i12, var466=$i13, var2316=$r2, var3385=$i2, var2370=i9, var285=java.lang.IndexOutOfBoundsException, var2336=$r7, var1702="bad descriptor"}
; {org.apache.ibatis.javassist.bytecode.Descriptor$Iterator=var1489, r0=var1255, i7=var491, $r1=var3822, c8=var2677, $i10=var2555, $i11=var2659, $i12=var444, $i13=var466, $r2=var2316, $i2=var3385, i9=var2370, java.lang.IndexOutOfBoundsException=var285, $r7=var2336, "bad descriptor"=var1702}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.Descriptor$Iterator;	i7 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	c8 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i7);	$i10 = (int) c8;	if $i10 != 40 goto $i11 = (int) c8;	$i11 = (int) c8;	if $i11 != 41 goto $i12 = (int) c8;	$i12 = (int) c8;	if $i12 != 91 goto $i13 = (int) c8;	$i13 = (int) c8;	if $i13 != 76 goto i9 = i7 + 1;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: java.lang.String desc>;	$i2 = virtualinvoke $r2.<java.lang.String: int indexOf(int,int)>(59, i7);	i9 = $i2 + 1;	if i9 > 0 goto $i0 = r0.<org.apache.ibatis.javassist.bytecode.Descriptor$Iterator: int index>;	$r7 = new java.lang.IndexOutOfBoundsException;	specialinvoke $r7.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>("bad descriptor");	throw $r7
;block_num 6