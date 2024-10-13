(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var711-init () var711)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var711 String) void)
(declare-const null-Int Int)
(declare-const var3456 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3456 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, y";     case 1: goto return "MMMM d, y";     case 2: goto return "MMM d, y";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3456 3)) (and (not (= var3456 2)) (and (not (= var3456 1)) (and (not (= var3456 0)) true))))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional    
(define-const var690 var711 var711-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var753 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var753)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var753!1 String)
(assert (= var753!1 ""))
(assert true)
(define-const var3586 String (append/672562846 var753!1 "Unknown DateFormat style: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ") 
(declare-const var753!2 String)
(assert (= var753!2 (str.++ var753!1 "Unknown DateFormat style: ")))
(assert true)
(define-const var3721 String (append/-1001720160 var3586 var3456)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3586!1 String)
(assert (str.prefixof var3586 var3586!1))
(assert true)
(define-const var1592 String (toString/-2075883882 var3721)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var690 var1592)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var690!1 var711)
(declare-const var1592!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var711-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3456=i0, var711=java.lang.IllegalArgumentException, var690=$r0, var753=$r1, var3586=$r2, var3721=$r3, var1592=$r4}
; {i0=var3456, java.lang.IllegalArgumentException=var711, $r0=var690, $r1=var753, $r2=var3586, $r3=var3721, $r4=var1592}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 0: goto return "EEEE, MMMM d, y";     case 1: goto return "MMMM d, y";     case 2: goto return "MMM d, y";     case 3: goto return "M/d/yy";     default: goto $r0 = new java.lang.IllegalArgumentException; };	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown DateFormat style: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2