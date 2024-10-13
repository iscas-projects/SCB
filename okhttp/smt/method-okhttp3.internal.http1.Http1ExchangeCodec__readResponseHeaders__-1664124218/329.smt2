(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort var2610 0)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var3236) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2610-init () var2610)
(declare-fun toString/-522406933 (var1649) String)
(declare-fun cast-from-String-to-var1649 (String) var1649)
(declare-fun <init>/-1092629202 (var2610 String) void)
(declare-const null-var3236 var3236)
(declare-const null-Bool Bool)
(declare-const var3912 var3236) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var3912 null-var3236)))
(declare-const var1014 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1014 null-Bool)))
(define-const var1268 Int (state/970643265 var3912)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 == 1 goto $z1 = 1 
(assert (= var1268 1)) ; Cond: $i0 == 1 
(define-const var2064 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r2 = <okhttp3.internal.http.StatusLine: okhttp3.internal.http.StatusLine$Companion Companion> 
(assert (not (not (= (ite var2064 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1513 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1513)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1513!1 String)
(assert (= var1513!1 ""))
(assert true)
(define-const var2498 String (append/672562846 var1513!1 "state: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var1513!2 String)
(assert (= var1513!2 (str.++ var1513!1 "state: ")))
(define-const var52 Int (state/970643265 var3912)) ; Statement: $i5 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var1381 String (append/-1001720160 var2498 var52)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var2498!1 String)
(assert (str.prefixof var2498 var2498!1))
(assert true)
(define-const var67 String (toString/-2075883882 var1381)) ; Statement: $r28 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1432 var2610 var2610-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(assert true)
(define-const var239 String (toString/-522406933 (cast-from-String-to-var1649 var67))) ; Statement: $r16 = virtualinvoke $r28.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1432 var239)) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var1432!1 var2610)
(declare-const var239!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2610-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1649=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3236=okhttp3.internal.http1.Http1ExchangeCodec, var3912=r0, var1014=z0, var1268=$i0, var2064=$z1, var1513=$r12, var2498=$r13, var52=$i5, var1381=$r14, var67=$r28, var2610=java.lang.IllegalStateException, var1432=$r15, var1649=java.lang.Object, var239=$r16}
; {okhttp3.internal.http1.Http1ExchangeCodec=var3236, r0=var3912, z0=var1014, $i0=var1268, $z1=var2064, $r12=var1513, $r13=var2498, $i5=var52, $r14=var1381, $r28=var67, java.lang.IllegalStateException=var2610, $r15=var1432, java.lang.Object=var1649, $r16=var239}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	z0 := @parameter0: boolean;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 == 1 goto $z1 = 1;	$z1 = 1;	goto [?= (branch)];	if $z1 != 0 goto $r2 = <okhttp3.internal.http.StatusLine: okhttp3.internal.http.StatusLine$Companion Companion>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i5 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r28 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalStateException;	$r16 = virtualinvoke $r28.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r15
;block_num 4