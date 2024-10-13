(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2060 0)
(declare-sort var622 0)
(declare-sort var1361 0)
(declare-sort var2210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2060) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1361-init () var1361)
(declare-fun toString/-522406933 (var2210) String)
(declare-fun cast-from-String-to-var2210 (String) var2210)
(declare-fun <init>/-1092629202 (var1361 String) void)
(declare-const null-var2060 var2060)
(declare-const null-var622 var622)
(declare-const var3886 var2060) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var3886 null-var2060)))
(declare-const var1431 var622) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var1431 null-var622)))
(define-const var111 Int (state/970643265 var3886)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (not (= var111 4)))) ; Negate: Cond: $i0 != 4  
(define-const var800 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (not (= (ite var800 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1193 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1193)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1193!1 String)
(assert (= var1193!1 ""))
(assert true)
(define-const var3412 String (append/672562846 var1193!1 "state: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var1193!2 String)
(assert (= var1193!2 (str.++ var1193!1 "state: ")))
(define-const var1840 Int (state/970643265 var3886)) ; Statement: $i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var1914 String (append/-1001720160 var3412 var1840)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3412!1 String)
(assert (str.prefixof var3412 var3412!1))
(assert true)
(define-const var2232 String (toString/-2075883882 var1914)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1152 var1361 var1361-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(assert true)
(define-const var177 String (toString/-522406933 (cast-from-String-to-var2210 var2232))) ; Statement: $r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1152 var177)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8) 

(declare-const var1152!1 var1361)
(declare-const var177!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1361-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2210=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2060=okhttp3.internal.http1.Http1ExchangeCodec, var3886=r0, var622=okhttp3.HttpUrl, var1431=r2, var111=$i0, var800=$z0, var1193=$r4, var3412=$r5, var1840=$i1, var1914=$r6, var2232=$r9, var1361=java.lang.IllegalStateException, var1152=$r7, var2210=java.lang.Object, var177=$r8}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2060, r0=var3886, okhttp3.HttpUrl=var622, r2=var1431, $i0=var111, $z0=var800, $r4=var1193, $r5=var3412, $i1=var1840, $r6=var1914, $r9=var2232, java.lang.IllegalStateException=var1361, $r7=var1152, java.lang.Object=var2210, $r8=var177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	r2 := @parameter0: okhttp3.HttpUrl;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i1 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.IllegalStateException;	$r8 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r8);	throw $r7
;block_num 4