(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort var339 0)
(declare-sort var2704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var339-init () var339)
(declare-fun toString/-522406933 (var2704) String)
(declare-fun cast-from-String-to-var2704 (String) var2704)
(declare-fun <init>/875830710 (var339 String) void)
(declare-const null-var1704 var1704)
(declare-const null-Int Int)
(declare-const var2391 var1704) ; Statement: r0 := @this: okhttp3.Dispatcher 
(assert (not (= var2391 null-var1704)))
(declare-const var268 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var268 null-Int)))
 ; Statement: if i0 < 1 goto $z0 = 0 
(assert (< var268 1)) ; Cond: i0 < 1 
(define-const var633 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto entermonitor r0 
(assert (not (not (= (ite var633 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1658 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1658)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1658!1 String)
(assert (= var1658!1 ""))
(assert true)
(define-const var3282 String (append/672562846 var1658!1 "max < 1: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ") 
(declare-const var1658!2 String)
(assert (= var1658!2 (str.++ var1658!1 "max < 1: ")))
(assert true)
(define-const var3659 String (append/-1001720160 var3282 var268)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3282!1 String)
(assert (str.prefixof var3282 var3282!1))
(assert true)
(define-const var210 String (toString/-2075883882 var3659)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var320 var339 var339-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var3363 String (toString/-522406933 (cast-from-String-to-var2704 var210))) ; Statement: $r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var320 var3363)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var320!1 var339)
(declare-const var3363!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var339-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2704=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1704=okhttp3.Dispatcher, var2391=r0, var268=i0, var633=$z0, var1658=$r1, var3282=$r2, var3659=$r3, var210=$r7, var339=java.lang.IllegalArgumentException, var320=$r4, var2704=java.lang.Object, var3363=$r5}
; {okhttp3.Dispatcher=var1704, r0=var2391, i0=var268, $z0=var633, $r1=var1658, $r2=var3282, $r3=var3659, $r7=var210, java.lang.IllegalArgumentException=var339, $r4=var320, java.lang.Object=var2704, $r5=var3363}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Dispatcher;	i0 := @parameter0: int;	if i0 < 1 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto entermonitor r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max < 1: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = new java.lang.IllegalArgumentException;	$r5 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r4
;block_num 4