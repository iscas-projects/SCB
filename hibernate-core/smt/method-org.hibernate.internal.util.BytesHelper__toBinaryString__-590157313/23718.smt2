(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toBinaryString/601056528 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var1679 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1679 null-Int)))
(define-const var1511 Int (cast-from-Int-to-Int var1679)) ; Statement: $i6 = (int) b0 
(define-const var2446 String (Int_toBinaryString/601056528 var1511)) ; Statement: r2 = staticinvoke <java.lang.Integer: java.lang.String toBinaryString(int)>($i6) 
(assert true)
(define-const var121 Int (length/-134980193 var2446)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 8 goto $r3 = new java.lang.StringBuilder 
(assert (<= var121 8)) ; Cond: $i1 <= 8 
(define-const var1923 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1923 "00000000")) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("00000000") 
(declare-const var1923!1 String)
(assert (= var1923!1 "00000000"))
(assert true)
(define-const var1080 Int (length/-134980193 var2446)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3578 Int (- 8 var1080)) ; Statement: $i3 = 8 - $i2 
(assert true)
;(assert (replace/-994417198 var1923!1 var3578 8 var2446)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i3, 8, r2) 

(declare-const var1923!2 String)
(declare-const var3578!1 Int)
(declare-const var3327 Int)
(declare-const var2446!1 String)
(assert true)
(define-const var3458 String (toString/-2075883882 var1923!2)) ; Statement: $r1 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), Int_toBinaryString/601056528=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1679=b0, var1511=$i6, var2446=r2, var121=$i1, var1923=$r3, var1080=$i2, var3578=$i3, var3327=8, var3458=$r1}
; {b0=var1679, $i6=var1511, r2=var2446, $i1=var121, $r3=var1923, $i2=var1080, $i3=var3578, 8=var3327, $r1=var3458}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts b0 := @parameter0: byte;	$i6 = (int) b0;	r2 = staticinvoke <java.lang.Integer: java.lang.String toBinaryString(int)>($i6);	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	if $i1 <= 8 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("00000000");	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = 8 - $i2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i3, 8, r2);	$r1 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 2