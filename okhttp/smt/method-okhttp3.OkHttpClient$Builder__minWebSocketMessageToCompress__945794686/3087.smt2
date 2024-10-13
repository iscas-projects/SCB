(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2439 0)
(declare-sort var2648 0)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var2439-to-var2439 ((arg var2439)) var2439 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2648-init () var2648)
(declare-fun toString/-522406933 (var2414) String)
(declare-fun cast-from-String-to-var2414 (String) var2414)
(declare-fun <init>/875830710 (var2648 String) void)
(declare-const null-var2439 var2439)
(declare-const null-Int Int)
(declare-const var834 var2439) ; Statement: r0 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var834 null-var2439)))
(declare-const var3831 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3831 null-Int)))
(define-const var3462 var2439 (cast-from-var2439-to-var2439 var834)) ; Statement: $r1 = (okhttp3.OkHttpClient$Builder) r0 
(define-const var2578 Int (ite (> var3831 0) 1 (ite (< var3831 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1120 Int (cast-from-Int-to-Int var2578)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 < 0 goto $z0 = 0 
(assert (< var1120 0)) ; Cond: $i2 < 0 
(define-const var2192 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0 
(assert (not (not (= (ite var2192 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var60 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var907 String (append/672562846 var60!1 "minWebSocketMessageToCompress must be positive: ")) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minWebSocketMessageToCompress must be positive: ") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "minWebSocketMessageToCompress must be positive: ")))
(assert true)
(define-const var3791 String (append/-901862667 var907 var3831)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var907!1 String)
(assert (str.prefixof var907 var907!1))
(assert true)
(define-const var2003 String (toString/-2075883882 var3791)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3590 var2648 var2648-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var2678 String (toString/-522406933 (cast-from-String-to-var2414 var2003))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3590 var2678)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3590!1 var2648)
(declare-const var2678!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2439-to-var2439=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2648-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2414=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2439=okhttp3.OkHttpClient$Builder, var834=r0, var3831=l0, var3462=$r1, var2578=$b1, var1120=$i2, var2192=$z0, var60=$r9, var907=$r4, var3791=$r5, var2003=$r8, var2648=java.lang.IllegalArgumentException, var3590=$r10, var2414=java.lang.Object, var2678=$r7}
; {okhttp3.OkHttpClient$Builder=var2439, r0=var834, l0=var3831, $r1=var3462, $b1=var2578, $i2=var1120, $z0=var2192, $r9=var60, $r4=var907, $r5=var3791, $r8=var2003, java.lang.IllegalArgumentException=var2648, $r10=var3590, java.lang.Object=var2414, $r7=var2678}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.OkHttpClient$Builder;	l0 := @parameter0: long;	$r1 = (okhttp3.OkHttpClient$Builder) r0;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minWebSocketMessageToCompress must be positive: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalArgumentException;	$r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r10
;block_num 4