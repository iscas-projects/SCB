(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toBinaryString/-636917533 (Int) String)
(declare-fun String-init () String)
(declare-fun var3501_repeat/-97481534 (Int Int) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var661 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var661 null-Int)))
(define-const var3141 Int (cast-from-Int-to-Int var661)) ; Statement: $l1 = (long) i0 
(define-const var3320 String (Int_toBinaryString/-636917533 var3141)) ; Statement: r0 = staticinvoke <java.lang.Long: java.lang.String toBinaryString(long)>($l1) 
(define-const var3637 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var1429 String (var3501_repeat/-97481534 48 32)) ; Statement: $r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(48, 32) 
(assert true)
;(assert (<init>/-1061048412 var3637 var1429)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3637!1 String)
(assert (= var3637!1 var1429))
(assert true)
(define-const var3502 Int (length/-134980193 var3320)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2910 Int (- 64 var3502)) ; Statement: $i3 = 64 - $i2 
(assert true)
;(assert (replace/-994417198 var3637!1 var2910 64 var3320)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i3, 64, r0) 

(declare-const var3637!2 String)
(declare-const var2910!1 Int)
(declare-const var1850 Int)
(declare-const var3320!1 String)
(assert true)
(define-const var3976 String (toString/-2075883882 var3637!2)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], long), Int_toBinaryString/-636917533=([long], java.lang.String), String-init=([], java.lang.StringBuilder), var3501_repeat/-97481534=([char, int], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var661=i0, var3141=$l1, var3320=r0, var3637=$r1, var3501=org.hibernate.internal.util.StringHelper, var1429=$r2, var3502=$i2, var2910=$i3, var1850=64, var3976=$r3}
; {i0=var661, $l1=var3141, r0=var3320, $r1=var3637, org.hibernate.internal.util.StringHelper=var3501, $r2=var1429, $i2=var3502, $i3=var2910, 64=var1850, $r3=var3976}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$l1 = (long) i0;	r0 = staticinvoke <java.lang.Long: java.lang.String toBinaryString(long)>($l1);	$r1 = new java.lang.StringBuilder;	$r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(48, 32);	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = 64 - $i2;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i3, 64, r0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1