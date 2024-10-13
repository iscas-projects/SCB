(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var559 0)
(declare-sort var3107 0)
(declare-sort var1912 0)
(declare-sort var449 0)
(declare-sort var1177 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFile/10099890 (var559) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var449-init () var449)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1177) String)
(declare-fun cast-from-var559-to-var1177 (var559) var1177)
(declare-fun getMessage/849299655 (var3486) String)
(declare-fun cast-from-var1912-to-var3486 (var1912) var3486)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var449 String) void)
(declare-const null-var559 var559)
(declare-const null-String String)
(declare-const null-var1912 var1912)
(declare-const var3054 var559) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var3054 null-var559)))
(declare-const var1354 String) ; Statement: r40 := @parameter1: java.lang.String 
(assert (not (= var1354 null-String)))
(assert true)
(define-const var3132 String (getFile/10099890 var3054)) ; Statement: r41 = virtualinvoke r0.<java.net.URL: java.lang.String getFile()>() 
(assert true)
(define-const var3378 Bool (startsWith/-1785782452 var1354 "/")) ; Statement: $z0 = virtualinvoke r40.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $i1 = virtualinvoke r41.<java.lang.String: int length()>() 
(assert (not (= (ite var3378 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1635 Int (length/-134980193 var3132)) ; Statement: $i1 = virtualinvoke r41.<java.lang.String: int length()>() 
(assert true)
(define-const var409 Int (length/-134980193 var1354)) ; Statement: $i0 = virtualinvoke r40.<java.lang.String: int length()>() 
(define-const var1976 Int (- var1635 var409)) ; Statement: $i2 = $i1 - $i0 
(assert (and true (and (>= 0 0) (>= (str.len var3132) var1976) (>= var1976 0))))
(define-const var3391 String (substring/-1240304868 var3132 0 var1976)) ; Statement: $r29 = virtualinvoke r41.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(define-const var1228 String var3391) ; Statement: r42 = $r29 
(assert true)
(define-const var1907 Bool (endsWith/985337093 var3391 "!")) ; Statement: $z1 = virtualinvoke $r29.<java.lang.String: boolean endsWith(java.lang.String)>("!") 
 ; Statement: if $z1 == 0 goto $r25 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(assert (not (= (ite var1907 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var2913 var1912) ; Statement: $r30 := @caughtexception 
(assert (not (= var2913 null-var1912)))
(define-const var162 var449 var449-init) ; Statement: $r51 = new java.lang.IllegalArgumentException 
(define-const var2789 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2789)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2789!1 String)
(assert (= var2789!1 ""))
(assert true)
(define-const var1116 String (append/672562846 var2789!1 "Unable to determine JAR Url from ")) ; Statement: $r33 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine JAR Url from ") 
(declare-const var2789!2 String)
(assert (= var2789!2 (str.++ var2789!1 "Unable to determine JAR Url from ")))
(assert true)
(define-const var1154 String (append/-1031950772 var1116 (cast-from-var559-to-var1177 var3054))) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1116!1 String)
(assert (str.prefixof var1116 var1116!1))
(assert true)
(define-const var2 String (append/672562846 var1154 ". Cause: ")) ; Statement: $r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ") 
(declare-const var1154!1 String)
(assert (= var1154!1 (str.++ var1154 ". Cause: ")))
(assert true)
(define-const var1616 String (getMessage/849299655 (cast-from-var1912-to-var3486 var2913))) ; Statement: $r35 = virtualinvoke $r30.<java.net.MalformedURLException: java.lang.String getMessage()>() 
(assert true)
(define-const var467 String (append/672562846 var2 var1616)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var2!1 String)
(assert (= var2!1 (str.++ var2 var1616)))
(assert true)
(define-const var2801 String (toString/-2075883882 var467)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var162 var2801)) ; Statement: specialinvoke $r51.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r38) 

(declare-const var162!1 var449)
(declare-const var2801!1 String)
 ; Statement: throw $r51 
(check-sat)
(get-model)
(get-unsat-core)
; {getFile/10099890=([java.net.URL], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var449-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var559-to-var1177=([java.net.URL], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1912-to-var3486=([java.net.MalformedURLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var559=java.net.URL, var3054=r0, var1354=r40, var3107=null_type, var3132=r41, var3378=$z0, var1635=$i1, var409=$i0, var1976=$i2, var3391=$r29, var1228=r42, var1907=$z1, var1912=java.net.MalformedURLException, var2913=$r30, var449=java.lang.IllegalArgumentException, var162=$r51, var2789=$r50, var1116=$r33, var1177=java.lang.Object, var1154=$r34, var2=$r36, var3486=java.lang.Throwable, var1616=$r35, var467=$r37, var2801=$r38}
; {java.net.URL=var559, r0=var3054, r40=var1354, null_type=var3107, r41=var3132, $z0=var3378, $i1=var1635, $i0=var409, $i2=var1976, $r29=var3391, r42=var1228, $z1=var1907, java.net.MalformedURLException=var1912, $r30=var2913, java.lang.IllegalArgumentException=var449, $r51=var162, $r50=var2789, $r33=var1116, java.lang.Object=var1177, $r34=var1154, $r36=var2, java.lang.Throwable=var3486, $r35=var1616, $r37=var467, $r38=var2801}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URL;	r40 := @parameter1: java.lang.String;	r41 = virtualinvoke r0.<java.net.URL: java.lang.String getFile()>();	$z0 = virtualinvoke r40.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 != 0 goto $i1 = virtualinvoke r41.<java.lang.String: int length()>();	$i1 = virtualinvoke r41.<java.lang.String: int length()>();	$i0 = virtualinvoke r40.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r29 = virtualinvoke r41.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	r42 = $r29;	$z1 = virtualinvoke $r29.<java.lang.String: boolean endsWith(java.lang.String)>("!");	if $z1 == 0 goto $r25 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$r30 := @caughtexception;	$r51 = new java.lang.IllegalArgumentException;	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to determine JAR Url from ");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r36 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ");	$r35 = virtualinvoke $r30.<java.net.MalformedURLException: java.lang.String getMessage()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r51.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r38);	throw $r51
;block_num 3