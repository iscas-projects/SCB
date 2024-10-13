(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3218 0)
(declare-sort var1439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun var1439-init () var1439)
(declare-fun <init>/1107025377 (var1439 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3801 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3801 null-String)))
(declare-const var1466 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var1466 null-Int)))
(declare-const var2075 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2075 null-Int)))
(declare-const var2472 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var2472 null-Int)))
(define-const var2712 Int var2075) ; Statement: i10 = i0 
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var3801) var2712) (<= 0 var2712))))
(define-const var1067 Int (charAt/698050440 var3801 var2712)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10) 
(define-const var1063 Int (cast-from-Int-to-Int var1067)) ; Statement: $i11 = (int) $c1 
 ; Statement: if $i11 != 91 goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10) 
(assert (not (= var1063 91))) ; Cond: $i11 != 91 
(assert (not (and true (and (> (str.len var3801) var2712) (<= 0 var2712)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), var1439-init=([], java.lang.IndexOutOfBoundsException), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3801=r0, var3218=null_type, var1466=i5, var2075=i0, var2472=i6, var2712=i10, var1067=$c1, var1063=$i11, var147=$c2, var3914=$i12, var1439=java.lang.IndexOutOfBoundsException, var3055=$r9, var737="bad descriptor"}
; {r0=var3801, null_type=var3218, i5=var1466, i0=var2075, i6=var2472, i10=var2712, $c1=var1067, $i11=var1063, $c2=var147, $i12=var3914, java.lang.IndexOutOfBoundsException=var1439, $r9=var3055, "bad descriptor"=var737}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 := @parameter1: int;	i0 := @parameter2: int;	i6 := @parameter3: int;	i10 = i0;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10);	$i11 = (int) $c1;	if $i11 != 91 goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10);	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i10);	$i12 = (int) $c2;	if $i12 != 76 goto $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	i10 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(59, i10);	if i10 >= 0 goto $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$r9 = new java.lang.IndexOutOfBoundsException;	specialinvoke $r9.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>("bad descriptor");	throw $r9
;block_num 5