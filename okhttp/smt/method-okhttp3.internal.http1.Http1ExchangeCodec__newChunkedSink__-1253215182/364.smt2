(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var3696 0)
(declare-sort var2024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var1287) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3696-init () var3696)
(declare-fun toString/-522406933 (var2024) String)
(declare-fun cast-from-String-to-var2024 (String) var2024)
(declare-fun <init>/-1092629202 (var3696 String) void)
(declare-const null-var1287 var1287)
(declare-const var2356 var1287) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2356 null-var1287)))
(define-const var3986 Int (state/970643265 var2356)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 1 goto $z0 = 0 
(assert (not (not (= var3986 1)))) ; Negate: Cond: $i0 != 1  
(define-const var3238 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(assert (not (not (= (ite var3238 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1651 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1651)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1651!1 String)
(assert (= var1651!1 ""))
(assert true)
(define-const var1657 String (append/672562846 var1651!1 "state: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var1651!2 String)
(assert (= var1651!2 (str.++ var1651!1 "state: ")))
(define-const var726 Int (state/970643265 var2356)) ; Statement: $i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var3769 String (append/-1001720160 var1657 var726)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1657!1 String)
(assert (str.prefixof var1657 var1657!1))
(assert true)
(define-const var3016 String (toString/-2075883882 var3769)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var885 var3696 var3696-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(assert true)
(define-const var3835 String (toString/-522406933 (cast-from-String-to-var2024 var3016))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var885 var3835)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7) 

(declare-const var885!1 var3696)
(declare-const var3835!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3696-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2024=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1287=okhttp3.internal.http1.Http1ExchangeCodec, var2356=r0, var3986=$i0, var3238=$z0, var1651=$r3, var1657=$r4, var726=$i1, var3769=$r5, var3016=$r8, var3696=java.lang.IllegalStateException, var885=$r6, var2024=java.lang.Object, var3835=$r7}
; {okhttp3.internal.http1.Http1ExchangeCodec=var1287, r0=var2356, $i0=var3986, $z0=var3238, $r3=var1651, $r4=var1657, $i1=var726, $r5=var3769, $r8=var3016, java.lang.IllegalStateException=var3696, $r6=var885, java.lang.Object=var2024, $r7=var3835}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 1 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.lang.IllegalStateException;	$r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 4