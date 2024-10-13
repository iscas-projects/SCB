(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var953 0)
(declare-sort var3487 0)
(declare-sort var2829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3487-init () var3487)
(declare-fun toString/-522406933 (var2829) String)
(declare-fun cast-from-String-to-var2829 (String) var2829)
(declare-fun <init>/875830710 (var3487 String) void)
(declare-const null-var953 var953)
(declare-const null-Int Int)
(declare-const var2202 var953) ; Statement: r0 := @this: okhttp3.Dispatcher 
(assert (not (= var2202 null-var953)))
(declare-const var357 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var357 null-Int)))
 ; Statement: if i0 < 1 goto $z0 = 0 
(assert (not (< var357 1))) ; Negate: Cond: i0 < 1  
(define-const var282 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto entermonitor r0 
(assert (not (not (= (ite var282 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1968 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1968)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1968!1 String)
(assert (= var1968!1 ""))
(assert true)
(define-const var3138 String (append/672562846 var1968!1 "max < 1: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ") 
(declare-const var1968!2 String)
(assert (= var1968!2 (str.++ var1968!1 "max < 1: ")))
(assert true)
(define-const var3786 String (append/-1001720160 var3138 var357)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3138!1 String)
(assert (str.prefixof var3138 var3138!1))
(assert true)
(define-const var1958 String (toString/-2075883882 var3786)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3558 var3487 var3487-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1261 String (toString/-522406933 (cast-from-String-to-var2829 var1958))) ; Statement: $r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3558 var1261)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3558!1 var3487)
(declare-const var1261!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3487-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2829=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var953=okhttp3.Dispatcher, var2202=r0, var357=i0, var282=$z0, var1968=$r1, var3138=$r2, var3786=$r3, var1958=$r7, var3487=java.lang.IllegalArgumentException, var3558=$r4, var2829=java.lang.Object, var1261=$r5}
; {okhttp3.Dispatcher=var953, r0=var2202, i0=var357, $z0=var282, $r1=var1968, $r2=var3138, $r3=var3786, $r7=var1958, java.lang.IllegalArgumentException=var3487, $r4=var3558, java.lang.Object=var2829, $r5=var1261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Dispatcher;	i0 := @parameter0: int;	if i0 < 1 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto entermonitor r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.lang.IllegalArgumentException;	$r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 4