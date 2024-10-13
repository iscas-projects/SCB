(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var477 0)
(declare-sort var595 0)
(declare-sort var3291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var477) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var595-init () var595)
(declare-fun toString/-522406933 (var3291) String)
(declare-fun cast-from-String-to-var3291 (String) var3291)
(declare-fun <init>/-1092629202 (var595 String) void)
(declare-const null-var477 var477)
(declare-const null-Int Int)
(declare-const var2220 var477) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2220 null-var477)))
(declare-const var1826 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var1826 null-Int)))
(define-const var1524 Int (state/970643265 var2220)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (not (= var1524 4)))) ; Negate: Cond: $i0 != 4  
(define-const var1905 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (not (= (ite var1905 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3813 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3813)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3813!1 String)
(assert (= var3813!1 ""))
(assert true)
(define-const var1806 String (append/672562846 var3813!1 "state: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var3813!2 String)
(assert (= var3813!2 (str.++ var3813!1 "state: ")))
(define-const var2746 Int (state/970643265 var2220)) ; Statement: $i2 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var1936 String (append/-1001720160 var1806 var2746)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1806!1 String)
(assert (str.prefixof var1806 var1806!1))
(assert true)
(define-const var1900 String (toString/-2075883882 var1936)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var220 var595 var595-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(assert true)
(define-const var1409 String (toString/-522406933 (cast-from-String-to-var3291 var1900))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var220 var1409)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7) 

(declare-const var220!1 var595)
(declare-const var1409!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var595-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3291=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var477=okhttp3.internal.http1.Http1ExchangeCodec, var2220=r0, var1826=l1, var1524=$i0, var1905=$z0, var3813=$r3, var1806=$r4, var2746=$i2, var1936=$r5, var1900=$r8, var595=java.lang.IllegalStateException, var220=$r6, var3291=java.lang.Object, var1409=$r7}
; {okhttp3.internal.http1.Http1ExchangeCodec=var477, r0=var2220, l1=var1826, $i0=var1524, $z0=var1905, $r3=var3813, $r4=var1806, $i2=var2746, $r5=var1936, $r8=var1900, java.lang.IllegalStateException=var595, $r6=var220, java.lang.Object=var3291, $r7=var1409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	l1 := @parameter0: long;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i2 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.lang.IllegalStateException;	$r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 4