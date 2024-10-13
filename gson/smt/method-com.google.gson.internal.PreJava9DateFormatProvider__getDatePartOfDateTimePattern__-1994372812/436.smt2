(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1125-init () var1125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1125 String) void)
(declare-const null-Int Int)
(declare-const var3616 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3616 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, yyyy";     case 1: goto return "MMMM d, yyyy";     case 2: goto return "MMM d, yyyy";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3616 3)) (and (not (= var3616 2)) (and (not (= var3616 1)) (and (not (= var3616 0)) true))))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional    
(define-const var664 var1125 var1125-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var472 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var472)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var472!1 String)
(assert (= var472!1 ""))
(assert true)
(define-const var627 String (append/672562846 var472!1 "Unknown DateFormat style: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ") 
(declare-const var472!2 String)
(assert (= var472!2 (str.++ var472!1 "Unknown DateFormat style: ")))
(assert true)
(define-const var3444 String (append/-1001720160 var627 var3616)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var627!1 String)
(assert (str.prefixof var627 var627!1))
(assert true)
(define-const var2477 String (toString/-2075883882 var3444)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var664 var2477)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var664!1 var1125)
(declare-const var2477!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1125-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3616=i0, var1125=java.lang.IllegalArgumentException, var664=$r0, var472=$r1, var627=$r2, var3444=$r3, var2477=$r4}
; {i0=var3616, java.lang.IllegalArgumentException=var1125, $r0=var664, $r1=var472, $r2=var627, $r3=var3444, $r4=var2477}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, yyyy";     case 1: goto return "MMMM d, yyyy";     case 2: goto return "MMM d, yyyy";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; };	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2