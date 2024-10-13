(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1245 0)
(declare-sort var1525 0)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var1245) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1525-init () var1525)
(declare-fun toString/-522406933 (var1555) String)
(declare-fun cast-from-String-to-var1555 (String) var1555)
(declare-fun <init>/-1092629202 (var1525 String) void)
(declare-const null-var1245 var1245)
(declare-const null-Int Int)
(declare-const var1898 var1245) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var1898 null-var1245)))
(declare-const var3999 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var3999 null-Int)))
(define-const var620 Int (state/970643265 var1898)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (= var620 4))) ; Cond: $i0 != 4 
(define-const var1143 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (not (= (ite var1143 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var372 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var372)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var372!1 String)
(assert (= var372!1 ""))
(assert true)
(define-const var2745 String (append/672562846 var372!1 "state: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var372!2 String)
(assert (= var372!2 (str.++ var372!1 "state: ")))
(define-const var3610 Int (state/970643265 var1898)) ; Statement: $i2 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var613 String (append/-1001720160 var2745 var3610)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2745!1 String)
(assert (str.prefixof var2745 var2745!1))
(assert true)
(define-const var2896 String (toString/-2075883882 var613)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3475 var1525 var1525-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(assert true)
(define-const var1869 String (toString/-522406933 (cast-from-String-to-var1555 var2896))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3475 var1869)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7) 

(declare-const var3475!1 var1525)
(declare-const var1869!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1525-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1555=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1245=okhttp3.internal.http1.Http1ExchangeCodec, var1898=r0, var3999=l1, var620=$i0, var1143=$z0, var372=$r3, var2745=$r4, var3610=$i2, var613=$r5, var2896=$r8, var1525=java.lang.IllegalStateException, var3475=$r6, var1555=java.lang.Object, var1869=$r7}
; {okhttp3.internal.http1.Http1ExchangeCodec=var1245, r0=var1898, l1=var3999, $i0=var620, $z0=var1143, $r3=var372, $r4=var2745, $i2=var3610, $r5=var613, $r8=var2896, java.lang.IllegalStateException=var1525, $r6=var3475, java.lang.Object=var1555, $r7=var1869}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	l1 := @parameter0: long;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i2 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.lang.IllegalStateException;	$r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 4