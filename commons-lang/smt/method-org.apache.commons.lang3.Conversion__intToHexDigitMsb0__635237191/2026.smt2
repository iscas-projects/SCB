(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2468-init () var2468)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2468 String) void)
(declare-const null-Int Int)
(declare-const var1637 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1637 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return 48;     case 1: goto return 56;     case 2: goto return 52;     case 3: goto return 99;     case 4: goto return 50;     case 5: goto return 97;     case 6: goto return 54;     case 7: goto return 101;     case 8: goto return 49;     case 9: goto return 57;     case 10: goto return 53;     case 11: goto return 100;     case 12: goto return 51;     case 13: goto return 98;     case 14: goto return 55;     case 15: goto return 102;     default: goto $r0 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1637 15)) (and (not (= var1637 14)) (and (not (= var1637 13)) (and (not (= var1637 12)) (and (not (= var1637 11)) (and (not (= var1637 10)) (and (not (= var1637 9)) (and (not (= var1637 8)) (and (not (= var1637 7)) (and (not (= var1637 6)) (and (not (= var1637 5)) (and (not (= var1637 4)) (and (not (= var1637 3)) (and (not (= var1637 2)) (and (not (= var1637 1)) (and (not (= var1637 0)) true))))))))))))))))) ; Intersect: Negate: Cond: i0 == 15   and Intersect: Negate: Cond: i0 == 14   and Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional                
(define-const var521 var2468 var2468-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var2597 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2597)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2597!1 String)
(assert (= var2597!1 ""))
(assert true)
(define-const var3461 String (append/672562846 var2597!1 "nibble value not between 0 and 15: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nibble value not between 0 and 15: ") 
(declare-const var2597!2 String)
(assert (= var2597!2 (str.++ var2597!1 "nibble value not between 0 and 15: ")))
(assert true)
(define-const var3057 String (append/-1001720160 var3461 var1637)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3461!1 String)
(assert (str.prefixof var3461 var3461!1))
(assert true)
(define-const var445 String (toString/-2075883882 var3057)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var521 var445)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var521!1 var2468)
(declare-const var445!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2468-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1637=i0, var2468=java.lang.IllegalArgumentException, var521=$r0, var2597=$r1, var3461=$r2, var3057=$r3, var445=$r4}
; {i0=var1637, java.lang.IllegalArgumentException=var2468, $r0=var521, $r1=var2597, $r2=var3461, $r3=var3057, $r4=var445}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return 48;     case 1: goto return 56;     case 2: goto return 52;     case 3: goto return 99;     case 4: goto return 50;     case 5: goto return 97;     case 6: goto return 54;     case 7: goto return 101;     case 8: goto return 49;     case 9: goto return 57;     case 10: goto return 53;     case 11: goto return 100;     case 12: goto return 51;     case 13: goto return 98;     case 14: goto return 55;     case 15: goto return 102;     default: goto $r0 = new java.lang.IllegalArgumentException; };	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nibble value not between 0 and 15: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2