(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1344 0)
(declare-sort var3541 0)
(declare-sort var395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var1344-to-var1344 ((arg var1344)) var1344 arg)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3541-init () var3541)
(declare-fun toString/-522406933 (var395) String)
(declare-fun cast-from-String-to-var395 (String) var395)
(declare-fun <init>/875830710 (var3541 String) void)
(declare-const null-var1344 var1344)
(declare-const null-Int Int)
(declare-const var213 var1344) ; Statement: r0 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var213 null-var1344)))
(declare-const var2354 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2354 null-Int)))
(define-const var1506 var1344 (cast-from-var1344-to-var1344 var213)) ; Statement: $r1 = (okhttp3.OkHttpClient$Builder) r0 
(define-const var331 Int (ite (> var2354 0) 1 (ite (< var2354 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1720 Int (cast-from-Int-to-Int var331)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 < 0 goto $z0 = 0 
(assert (not (< var1720 0))) ; Negate: Cond: $i2 < 0  
(define-const var3316 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0 
(assert (not (not (= (ite var3316 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1413 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1413)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1413!1 String)
(assert (= var1413!1 ""))
(assert true)
(define-const var1830 String (append/672562846 var1413!1 "minWebSocketMessageToCompress must be positive: ")) ; Statement: $r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minWebSocketMessageToCompress must be positive: ") 
(declare-const var1413!2 String)
(assert (= var1413!2 (str.++ var1413!1 "minWebSocketMessageToCompress must be positive: ")))
(assert true)
(define-const var2608 String (append/-901862667 var1830 var2354)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1830!1 String)
(assert (str.prefixof var1830 var1830!1))
(assert true)
(define-const var362 String (toString/-2075883882 var2608)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1052 var3541 var3541-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var787 String (toString/-522406933 (cast-from-String-to-var395 var362))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1052 var787)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1052!1 var3541)
(declare-const var787!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1344-to-var1344=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3541-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var395=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1344=okhttp3.OkHttpClient$Builder, var213=r0, var2354=l0, var1506=$r1, var331=$b1, var1720=$i2, var3316=$z0, var1413=$r9, var1830=$r4, var2608=$r5, var362=$r8, var3541=java.lang.IllegalArgumentException, var1052=$r10, var395=java.lang.Object, var787=$r7}
; {okhttp3.OkHttpClient$Builder=var1344, r0=var213, l0=var2354, $r1=var1506, $b1=var331, $i2=var1720, $z0=var3316, $r9=var1413, $r4=var1830, $r5=var2608, $r8=var362, java.lang.IllegalArgumentException=var3541, $r10=var1052, java.lang.Object=var395, $r7=var787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.OkHttpClient$Builder;	l0 := @parameter0: long;	$r1 = (okhttp3.OkHttpClient$Builder) r0;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r1.<okhttp3.OkHttpClient$Builder: long minWebSocketMessageToCompress> = l0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("minWebSocketMessageToCompress must be positive: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalArgumentException;	$r7 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r10
;block_num 4