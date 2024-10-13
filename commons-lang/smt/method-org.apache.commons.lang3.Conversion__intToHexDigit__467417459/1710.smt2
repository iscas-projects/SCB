(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var3669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1323_forDigit/-2032867890 (Int Int) Int)
(declare-fun var3669-init () var3669)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3669 String) void)
(declare-const null-Int Int)
(declare-const var1447 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1447 null-Int)))
(define-const var3555 Int (var1323_forDigit/-2032867890 var1447 16)) ; Statement: c1 = staticinvoke <java.lang.Character: char forDigit(int,int)>(i0, 16) 
 ; Statement: if c1 != 0 goto return c1 
(assert (not (not (= var3555 0)))) ; Negate: Cond: c1 != 0  
(define-const var168 var3669 var3669-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3840 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3840)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3840!1 String)
(assert (= var3840!1 ""))
(assert true)
(define-const var1844 String (append/672562846 var3840!1 "nibble value not between 0 and 15: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nibble value not between 0 and 15: ") 
(declare-const var3840!2 String)
(assert (= var3840!2 (str.++ var3840!1 "nibble value not between 0 and 15: ")))
(assert true)
(define-const var1409 String (append/-1001720160 var1844 var1447)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1844!1 String)
(assert (str.prefixof var1844 var1844!1))
(assert true)
(define-const var2250 String (toString/-2075883882 var1409)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var168 var2250)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var168!1 var3669)
(declare-const var2250!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1323_forDigit/-2032867890=([int, int], char), var3669-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1447=i0, var1323=java.lang.Character, var3555=c1, var3669=java.lang.IllegalArgumentException, var168=$r0, var3840=$r1, var1844=$r2, var1409=$r3, var2250=$r4}
; {i0=var1447, java.lang.Character=var1323, c1=var3555, java.lang.IllegalArgumentException=var3669, $r0=var168, $r1=var3840, $r2=var1844, $r3=var1409, $r4=var2250}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	c1 = staticinvoke <java.lang.Character: char forDigit(int,int)>(i0, 16);	if c1 != 0 goto return c1;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nibble value not between 0 and 15: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2