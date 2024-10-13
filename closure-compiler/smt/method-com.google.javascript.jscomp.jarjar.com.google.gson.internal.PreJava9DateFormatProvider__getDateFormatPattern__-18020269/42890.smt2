(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var704-init () var704)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var704 String) void)
(declare-const null-Int Int)
(declare-const var1512 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1512 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, y";     case 1: goto return "MMMM d, y";     case 2: goto return "MMM d, y";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1512 3)) (and (not (= var1512 2)) (and (not (= var1512 1)) (and (not (= var1512 0)) true))))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional    
(define-const var197 var704 var704-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1551 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1551)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1551!1 String)
(assert (= var1551!1 ""))
(assert true)
(define-const var3995 String (append/672562846 var1551!1 "Unknown DateFormat style: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ") 
(declare-const var1551!2 String)
(assert (= var1551!2 (str.++ var1551!1 "Unknown DateFormat style: ")))
(assert true)
(define-const var70 String (append/-1001720160 var3995 var1512)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3995!1 String)
(assert (str.prefixof var3995 var3995!1))
(assert true)
(define-const var2880 String (toString/-2075883882 var70)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var197 var2880)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var197!1 var704)
(declare-const var2880!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var704-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1512=i0, var704=java.lang.IllegalArgumentException, var197=$r0, var1551=$r1, var3995=$r2, var70=$r3, var2880=$r4}
; {i0=var1512, java.lang.IllegalArgumentException=var704, $r0=var197, $r1=var1551, $r2=var3995, $r3=var70, $r4=var2880}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, y";     case 1: goto return "MMMM d, y";     case 2: goto return "MMM d, y";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; };	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2