(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var947_warn/-2058658223 (String) void)
(declare-const null-Int Int)
(declare-const var2536 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2536 null-Int)))
(define-const var2683 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2683)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2683!1 String)
(assert (= var2683!1 ""))
(assert true)
(define-const var3133 String (append/672562846 var2683!1 "A number (")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A number (") 
(declare-const var2683!2 String)
(assert (= var2683!2 (str.++ var2683!1 "A number (")))
(assert true)
(define-const var3580 String (append/-1001720160 var3133 var2536)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3133!1 String)
(assert (str.prefixof var3133 var3133!1))
(assert true)
(define-const var2744 String (append/672562846 var3580 ") of logging calls during the initialization phase have been intercepted and are")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") of logging calls during the initialization phase have been intercepted and are") 
(declare-const var3580!1 String)
(assert (= var3580!1 (str.++ var3580 ") of logging calls during the initialization phase have been intercepted and are")))
(assert true)
(define-const var3062 String (toString/-2075883882 var2744)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var947_warn/-2058658223 var3062)) ; Statement: staticinvoke <org.slf4j.helpers.Reporter: void warn(java.lang.String)>($r4) 

(declare-const var3062!1 String)
;(assert (var947_warn/-2058658223 "now being replayed. These are subject to the filtering rules of the underlying logging system.")) ; Statement: staticinvoke <org.slf4j.helpers.Reporter: void warn(java.lang.String)>("now being replayed. These are subject to the filtering rules of the underlying logging system.") 

(declare-const var2371 String)
;(assert (var947_warn/-2058658223 "See also https://www.slf4j.org/codes.html#replay")) ; Statement: staticinvoke <org.slf4j.helpers.Reporter: void warn(java.lang.String)>("See also https://www.slf4j.org/codes.html#replay") 

(declare-const var3781 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var947_warn/-2058658223=([java.lang.String], void)}
; {var2536=i0, var2683=$r0, var3133=$r1, var3580=$r2, var2744=$r3, var3062=$r4, var947=org.slf4j.helpers.Reporter, var2371="now being replayed. These are subject to the filtering rules of the underlying logging system.", var3781="See also https://www.slf4j.org/codes.html#replay"}
; {i0=var2536, $r0=var2683, $r1=var3133, $r2=var3580, $r3=var2744, $r4=var3062, org.slf4j.helpers.Reporter=var947, "now being replayed. These are subject to the filtering rules of the underlying logging system."=var2371, "See also https://www.slf4j.org/codes.html#replay"=var3781}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A number (");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") of logging calls during the initialization phase have been intercepted and are");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.slf4j.helpers.Reporter: void warn(java.lang.String)>($r4);	staticinvoke <org.slf4j.helpers.Reporter: void warn(java.lang.String)>("now being replayed. These are subject to the filtering rules of the underlying logging system.");	staticinvoke <org.slf4j.helpers.Reporter: void warn(java.lang.String)>("See also https://www.slf4j.org/codes.html#replay");	return
;block_num 1