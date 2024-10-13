(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1400 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1400 null-Int)))
(define-const var1533 String (Int_toHexString/1865784998 var1400)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(define-const var1207 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1207 "00000000")) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>("00000000") 
(declare-const var1207!1 String)
(assert (= var1207!1 "00000000"))
(assert true)
(define-const var1164 Int (length/-134980193 var1533)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var565 Int (- 8 var1164)) ; Statement: $i2 = 8 - $i1 
(assert true)
;(assert (replace/-994417198 var1207!1 var565 8 var1533)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 8, r0) 

(declare-const var1207!2 String)
(declare-const var565!1 Int)
(declare-const var1579 Int)
(declare-const var1533!1 String)
(assert true)
(define-const var3520 String (toString/-2075883882 var1207!2)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toHexString/1865784998=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1400=i0, var1533=r0, var1207=$r1, var1164=$i1, var565=$i2, var1579=8, var3520=$r2}
; {i0=var1400, r0=var1533, $r1=var1207, $i1=var1164, $i2=var565, 8=var1579, $r2=var3520}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>("00000000");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = 8 - $i1;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 8, r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1