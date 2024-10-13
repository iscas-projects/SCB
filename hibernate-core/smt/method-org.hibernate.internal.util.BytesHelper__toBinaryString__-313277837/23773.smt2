(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toBinaryString/-636917533 (Int) String)
(declare-fun String-init () String)
(declare-fun var2335_repeat/-97481534 (Int Int) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1238 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1238 null-Int)))
(define-const var3919 String (Int_toBinaryString/-636917533 var1238)) ; Statement: r0 = staticinvoke <java.lang.Long: java.lang.String toBinaryString(long)>(l0) 
(define-const var3004 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var2664 String (var2335_repeat/-97481534 48 64)) ; Statement: $r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(48, 64) 
(assert true)
;(assert (<init>/-1061048412 var3004 var2664)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3004!1 String)
(assert (= var3004!1 var2664))
(assert true)
(define-const var909 Int (length/-134980193 var3919)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3556 Int (- 64 var909)) ; Statement: $i2 = 64 - $i1 
(assert true)
;(assert (replace/-994417198 var3004!1 var3556 64 var3919)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 64, r0) 

(declare-const var3004!2 String)
(declare-const var3556!1 Int)
(declare-const var8 Int)
(declare-const var3919!1 String)
(assert true)
(define-const var3162 String (toString/-2075883882 var3004!2)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toBinaryString/-636917533=([long], java.lang.String), String-init=([], java.lang.StringBuilder), var2335_repeat/-97481534=([char, int], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1238=l0, var3919=r0, var3004=$r1, var2335=org.hibernate.internal.util.StringHelper, var2664=$r2, var909=$i1, var3556=$i2, var8=64, var3162=$r3}
; {l0=var1238, r0=var3919, $r1=var3004, org.hibernate.internal.util.StringHelper=var2335, $r2=var2664, $i1=var909, $i2=var3556, 64=var8, $r3=var3162}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	r0 = staticinvoke <java.lang.Long: java.lang.String toBinaryString(long)>(l0);	$r1 = new java.lang.StringBuilder;	$r2 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(48, 64);	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = 64 - $i1;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 64, r0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1