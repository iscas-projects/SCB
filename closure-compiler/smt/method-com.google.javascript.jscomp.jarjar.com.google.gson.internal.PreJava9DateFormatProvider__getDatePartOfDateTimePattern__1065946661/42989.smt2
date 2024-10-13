(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2312-init () var2312)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2312 String) void)
(declare-const null-Int Int)
(declare-const var2064 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2064 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, yyyy";     case 1: goto return "MMMM d, yyyy";     case 2: goto return "MMM d, yyyy";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2064 3)) (and (not (= var2064 2)) (and (not (= var2064 1)) (and (not (= var2064 0)) true))))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional    
(define-const var1239 var2312 var2312-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var2862 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2862)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2862!1 String)
(assert (= var2862!1 ""))
(assert true)
(define-const var1831 String (append/672562846 var2862!1 "Unknown DateFormat style: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ") 
(declare-const var2862!2 String)
(assert (= var2862!2 (str.++ var2862!1 "Unknown DateFormat style: ")))
(assert true)
(define-const var1820 String (append/-1001720160 var1831 var2064)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1831!1 String)
(assert (str.prefixof var1831 var1831!1))
(assert true)
(define-const var3915 String (toString/-2075883882 var1820)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1239 var3915)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var1239!1 var2312)
(declare-const var3915!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2312-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2064=i0, var2312=java.lang.IllegalArgumentException, var1239=$r0, var2862=$r1, var1831=$r2, var1820=$r3, var3915=$r4}
; {i0=var2064, java.lang.IllegalArgumentException=var2312, $r0=var1239, $r1=var2862, $r2=var1831, $r3=var1820, $r4=var3915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, yyyy";     case 1: goto return "MMMM d, yyyy";     case 2: goto return "MMM d, yyyy";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; };	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2