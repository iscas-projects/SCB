(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3700 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var3700 null-Int)))
(define-const var1592 Int (cast-from-Int-to-Int var3700)) ; Statement: $i3 = (int) s0 
(define-const var631 String (Int_toHexString/1865784998 var1592)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3) 
(define-const var3197 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3197 "0000")) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("0000") 
(declare-const var3197!1 String)
(assert (= var3197!1 "0000"))
(assert true)
(define-const var3383 Int (length/-134980193 var631)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2775 Int (- 4 var3383)) ; Statement: $i2 = 4 - $i1 
(assert true)
;(assert (replace/-994417198 var3197!1 var2775 4 var631)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 4, r0) 

(declare-const var3197!2 String)
(declare-const var2775!1 Int)
(declare-const var3430 Int)
(declare-const var631!1 String)
(assert true)
(define-const var915 String (toString/-2075883882 var3197!2)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), Int_toHexString/1865784998=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3700=s0, var1592=$i3, var631=r0, var3197=$r3, var3383=$i1, var2775=$i2, var3430=4, var915=$r2}
; {s0=var3700, $i3=var1592, r0=var631, $r3=var3197, $i1=var3383, $i2=var2775, 4=var3430, $r2=var915}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts s0 := @parameter0: short;	$i3 = (int) s0;	r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("0000");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = 4 - $i1;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 4, r0);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1