(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2239 0)
(declare-sort var3250 0)
(declare-sort var805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2239) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3250-init () var3250)
(declare-fun toString/-522406933 (var805) String)
(declare-fun cast-from-String-to-var805 (String) var805)
(declare-fun <init>/-1092629202 (var3250 String) void)
(declare-const null-var2239 var2239)
(declare-const var2037 var2239) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2037 null-var2239)))
(define-const var2662 Int (state/970643265 var2037)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (not (= var2662 4)))) ; Negate: Cond: $i0 != 4  
(define-const var2300 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (not (= (ite var2300 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1837 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1837)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1837!1 String)
(assert (= var1837!1 ""))
(assert true)
(define-const var3204 String (append/672562846 var1837!1 "state: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var1837!2 String)
(assert (= var1837!2 (str.++ var1837!1 "state: ")))
(define-const var2592 Int (state/970643265 var2037)) ; Statement: $i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var3632 String (append/-1001720160 var3204 var2592)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3204!1 String)
(assert (str.prefixof var3204 var3204!1))
(assert true)
(define-const var2688 String (toString/-2075883882 var3632)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3567 var3250 var3250-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(assert true)
(define-const var814 String (toString/-522406933 (cast-from-String-to-var805 var2688))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3567 var814)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3567!1 var3250)
(declare-const var814!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3250-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var805=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2239=okhttp3.internal.http1.Http1ExchangeCodec, var2037=r0, var2662=$i0, var2300=$z0, var1837=$r4, var3204=$r5, var2592=$i1, var3632=$r6, var2688=$r9, var3250=java.lang.IllegalStateException, var3567=$r7, var805=java.lang.Object, var814=$r8}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2239, r0=var2037, $i0=var2662, $z0=var2300, $r4=var1837, $r5=var3204, $i1=var2592, $r6=var3632, $r9=var2688, java.lang.IllegalStateException=var3250, $r7=var3567, java.lang.Object=var805, $r8=var814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalStateException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4