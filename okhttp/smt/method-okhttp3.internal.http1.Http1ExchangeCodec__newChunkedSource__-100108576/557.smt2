(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1656 0)
(declare-sort var1415 0)
(declare-sort var2681 0)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var1656) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2681-init () var2681)
(declare-fun toString/-522406933 (var1438) String)
(declare-fun cast-from-String-to-var1438 (String) var1438)
(declare-fun <init>/-1092629202 (var2681 String) void)
(declare-const null-var1656 var1656)
(declare-const null-var1415 var1415)
(declare-const var541 var1656) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var541 null-var1656)))
(declare-const var788 var1415) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var788 null-var1415)))
(define-const var2698 Int (state/970643265 var541)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (= var2698 4))) ; Cond: $i0 != 4 
(define-const var1410 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (not (= (ite var1410 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var582 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var582)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var582!1 String)
(assert (= var582!1 ""))
(assert true)
(define-const var1533 String (append/672562846 var582!1 "state: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var582!2 String)
(assert (= var582!2 (str.++ var582!1 "state: ")))
(define-const var3239 Int (state/970643265 var541)) ; Statement: $i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var3361 String (append/-1001720160 var1533 var3239)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1533!1 String)
(assert (str.prefixof var1533 var1533!1))
(assert true)
(define-const var632 String (toString/-2075883882 var3361)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3026 var2681 var2681-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(assert true)
(define-const var2046 String (toString/-522406933 (cast-from-String-to-var1438 var632))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3026 var2046)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var3026!1 var2681)
(declare-const var2046!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2681-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1438=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1656=okhttp3.internal.http1.Http1ExchangeCodec, var541=r0, var1415=okhttp3.HttpUrl, var788=r2, var2698=$i0, var1410=$z0, var582=$r4, var1533=$r5, var3239=$i1, var3361=$r6, var632=$r9, var2681=java.lang.IllegalStateException, var3026=$r7, var1438=java.lang.Object, var2046=$r8}
; {okhttp3.internal.http1.Http1ExchangeCodec=var1656, r0=var541, okhttp3.HttpUrl=var1415, r2=var788, $i0=var2698, $z0=var1410, $r4=var582, $r5=var1533, $i1=var3239, $r6=var3361, $r9=var632, java.lang.IllegalStateException=var2681, $r7=var3026, java.lang.Object=var1438, $r8=var2046}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	r2 := @parameter0: okhttp3.HttpUrl;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalStateException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4