(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1193 0)
(declare-sort var1254 0)
(declare-sort var1511 0)
(declare-sort var1485 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1254-init () var1254)
(declare-fun String-init () String)
(declare-fun var1485-init () var1485)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1485 String var378) void)
(declare-fun cast-from-var1511-to-var378 (var1511) var378)
(declare-const null-String String)
(declare-const null-var1511 var1511)
(declare-const var1324 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1324 null-String)))
(define-const var3205 var1254 var1254-init) ; Statement: $r0 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1502 var1511) ; Statement: $r8 := @caughtexception 
(assert (not (= var1502 null-var1511)))
(define-const var2690 var1254 var1254-init) ; Statement: $r9 = new java.net.URL 
(define-const var3008 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3148 var1511) ; Statement: $r2 := @caughtexception 
(assert (not (= var3148 null-var1511)))
(define-const var123 var1485 var1485-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2769 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2769)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2769!1 String)
(assert (= var2769!1 ""))
(assert true)
(define-const var1975 String (append/672562846 var2769!1 "Unable to find jar:")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find jar:") 
(declare-const var2769!2 String)
(assert (= var2769!2 (str.++ var2769!1 "Unable to find jar:")))
(assert true)
(define-const var2898 String (append/672562846 var1975 var1324)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1975!1 String)
(assert (= var1975!1 (str.++ var1975 var1324)))
(assert true)
(define-const var1966 String (toString/-2075883882 var2898)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var123 var1966 (cast-from-var1511-to-var378 var3148))) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r2) 

(declare-const var123!1 var1485)
(declare-const var1966!1 String)
(declare-const var3148!1 var1511)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1254-init=([], java.net.URL), String-init=([], java.lang.StringBuilder), var1485-init=([], java.lang.IllegalArgumentException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1511-to-var378=([java.net.MalformedURLException], java.lang.Throwable)}
; {var1324=r1, var1193=null_type, var1254=java.net.URL, var3205=$r0, var1511=java.net.MalformedURLException, var1502=$r8, var2690=$r9, var3008=$r10, var3148=$r2, var1485=java.lang.IllegalArgumentException, var123=$r3, var2769=$r4, var1975=$r5, var2898=$r6, var1966=$r7, var378=java.lang.Throwable}
; {r1=var1324, null_type=var1193, java.net.URL=var1254, $r0=var3205, java.net.MalformedURLException=var1511, $r8=var1502, $r9=var2690, $r10=var3008, $r2=var3148, java.lang.IllegalArgumentException=var1485, $r3=var123, $r4=var2769, $r5=var1975, $r6=var2898, $r7=var1966, java.lang.Throwable=var378}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.net.URL;	$r8 := @caughtexception;	$r9 = new java.net.URL;	$r10 = new java.lang.StringBuilder;	$r2 := @caughtexception;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find jar:");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r2);	throw $r3
;block_num 3