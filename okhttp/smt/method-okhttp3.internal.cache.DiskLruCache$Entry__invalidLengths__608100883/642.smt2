(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2138 0)
(declare-sort var3734 0)
(declare-sort var2091 0)
(declare-sort var1113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2091-init () var2091)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1113) String)
(declare-fun cast-from-var3734-to-var1113 (var3734) var1113)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2091 String) void)
(declare-const null-var2138 var2138)
(declare-const null-var3734 var3734)
(declare-const var14 var2138) ; Statement: r6 := @this: okhttp3.internal.cache.DiskLruCache$Entry 
(assert (not (= var14 null-var2138)))
(declare-const var438 var3734) ; Statement: r2 := @parameter0: java.util.List 
(assert (not (= var438 null-var3734)))
(define-const var2526 var2091 var2091-init) ; Statement: $r0 = new java.io.IOException 
(define-const var3901 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3901)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3901!1 String)
(assert (= var3901!1 ""))
(assert true)
(define-const var2421 String (append/672562846 var3901!1 "unexpected journal line: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected journal line: ") 
(declare-const var3901!2 String)
(assert (= var3901!2 (str.++ var3901!1 "unexpected journal line: ")))
(assert true)
(define-const var3067 String (append/-1031950772 var2421 (cast-from-var3734-to-var1113 var438))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2421!1 String)
(assert (str.prefixof var2421 var2421!1))
(assert true)
(define-const var500 String (toString/-2075883882 var3067)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2526 var500)) ; Statement: specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var2526!1 var2091)
(declare-const var500!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2091-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3734-to-var1113=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2138=okhttp3.internal.cache.DiskLruCache$Entry, var14=r6, var3734=java.util.List, var438=r2, var2091=java.io.IOException, var2526=$r0, var3901=$r1, var2421=$r3, var1113=java.lang.Object, var3067=$r4, var500=$r5}
; {okhttp3.internal.cache.DiskLruCache$Entry=var2138, r6=var14, java.util.List=var3734, r2=var438, java.io.IOException=var2091, $r0=var2526, $r1=var3901, $r3=var2421, java.lang.Object=var1113, $r4=var3067, $r5=var500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: okhttp3.internal.cache.DiskLruCache$Entry;	r2 := @parameter0: java.util.List;	$r0 = new java.io.IOException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unexpected journal line: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r0
;block_num 1