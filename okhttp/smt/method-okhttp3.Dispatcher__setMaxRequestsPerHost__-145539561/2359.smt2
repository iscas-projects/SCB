(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1909 0)
(declare-sort var1639 0)
(declare-sort var1327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1639-init () var1639)
(declare-fun toString/-522406933 (var1327) String)
(declare-fun cast-from-String-to-var1327 (String) var1327)
(declare-fun <init>/875830710 (var1639 String) void)
(declare-const null-var1909 var1909)
(declare-const null-Int Int)
(declare-const var1136 var1909) ; Statement: r0 := @this: okhttp3.Dispatcher 
(assert (not (= var1136 null-var1909)))
(declare-const var2869 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2869 null-Int)))
 ; Statement: if i0 < 1 goto $z0 = 0 
(assert (not (< var2869 1))) ; Negate: Cond: i0 < 1  
(define-const var3383 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto entermonitor r0 
(assert (not (not (= (ite var3383 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3637 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3637)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3637!1 String)
(assert (= var3637!1 ""))
(assert true)
(define-const var1467 String (append/672562846 var3637!1 "max < 1: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ") 
(declare-const var3637!2 String)
(assert (= var3637!2 (str.++ var3637!1 "max < 1: ")))
(assert true)
(define-const var594 String (append/-1001720160 var1467 var2869)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1467!1 String)
(assert (str.prefixof var1467 var1467!1))
(assert true)
(define-const var2316 String (toString/-2075883882 var594)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2133 var1639 var1639-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3593 String (toString/-522406933 (cast-from-String-to-var1327 var2316))) ; Statement: $r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2133 var3593)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2133!1 var1639)
(declare-const var3593!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1639-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1327=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1909=okhttp3.Dispatcher, var1136=r0, var2869=i0, var3383=$z0, var3637=$r1, var1467=$r2, var594=$r3, var2316=$r7, var1639=java.lang.IllegalArgumentException, var2133=$r4, var1327=java.lang.Object, var3593=$r5}
; {okhttp3.Dispatcher=var1909, r0=var1136, i0=var2869, $z0=var3383, $r1=var3637, $r2=var1467, $r3=var594, $r7=var2316, java.lang.IllegalArgumentException=var1639, $r4=var2133, java.lang.Object=var1327, $r5=var3593}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Dispatcher;	i0 := @parameter0: int;	if i0 < 1 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto entermonitor r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.lang.IllegalArgumentException;	$r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 4