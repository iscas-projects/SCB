(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-Int Int)
(declare-const var2349-START_RADIX Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2466 Int) ; Statement: i15 := @parameter0: int 
(assert (not (= var2466 null-Int)))
(define-const var1110 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[6] 
(define-const var1399 Int (cast-from-Int-to-Int var2466)) ; Statement: $l0 = (long) i15 
(define-const var3754 Int (- var1399 (- 2147483648))) ; Statement: l1 = $l0 - -2147483648L 
(define-const var1449 Int 1) ; Statement: i16 = 1 
(define-const var842 String "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") ; Statement: $r1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" 
(define-const var498 Int var2349-START_RADIX) ; Statement: $i2 = <com.google.javascript.jscomp.Xid: int START_RADIX> 
(define-const var2253 Int (cast-from-Int-to-Int var498)) ; Statement: $l3 = (long) $i2 
(define-const var56 Int (mod var3754 var2253)) ; Statement: $l4 = l1 % $l3 
(define-const var3510 Int (cast-from-Int-to-Int var56)) ; Statement: $i5 = (int) $l4 
(assert (not (and true (and (> (str.len var842) var3510) (<= 0 var3510)))))
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), cast-from-Int-to-Int=([int], long), charAt/698050440=([java.lang.String, int], char), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2466=i15, var1110=r0, var1399=$l0, var3754=l1, var1449=i16, var842=$r1, var2349=com.google.javascript.jscomp.Xid, var498=$i2, var2253=$l3, var56=$l4, var3510=$i5, var3078=$c6, var2507=$i7, var1830=$l8, var3929=$l9, var2766=i17, var2839=$r2, var3599=0}
; {i15=var2466, r0=var1110, $l0=var1399, l1=var3754, i16=var1449, $r1=var842, com.google.javascript.jscomp.Xid=var2349, $i2=var498, $l3=var2253, $l4=var56, $i5=var3510, $c6=var3078, $i7=var2507, $l8=var1830, $l9=var3929, i17=var2766, $r2=var2839, 0=var3599}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts i15 := @parameter0: int;	r0 = newarray (char)[6];	$l0 = (long) i15;	l1 = $l0 - -2147483648L;	i16 = 1;	$r1 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";	$i2 = <com.google.javascript.jscomp.Xid: int START_RADIX>;	$l3 = (long) $i2;	$l4 = l1 % $l3;	$i5 = (int) $l4;	$c6 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i5);	r0[0] = $c6;	$i7 = <com.google.javascript.jscomp.Xid: int START_RADIX>;	$l8 = (long) $i7;	$l9 = l1 / $l8;	i17 = (int) $l9;	if i17 <= 0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r0, 0, i16);	return $r2
;block_num 3