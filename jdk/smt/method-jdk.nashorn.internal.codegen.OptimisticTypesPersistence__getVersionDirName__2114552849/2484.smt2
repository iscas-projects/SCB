(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2678 0)
(declare-sort var3067 0)
(declare-sort var2137 0)
(declare-sort var226 0)
(declare-sort var111 0)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2678!class ClassObject)
(declare-fun getResource/413390302 (ClassObject String) var3067)
(declare-fun getProtocol/70454678 (var3067) String)
(declare-fun getFile/10099890 (var3067) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2137-init () var2137)
(declare-fun <init>/-1681595970 (var2137 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var226-init () var226)
(declare-fun <init>/-1862704206 (var226 String) void)
(declare-fun var111-init () var111)
(declare-fun var2678_getLastModifiedClassFile/2126469423 (var2137 Int) Int)
(declare-fun <init>/593337323 (var111 Int) void)
(declare-fun format/215566421 (var3278 var111) String)
(declare-fun cast-from-var226-to-var3278 (var226) var3278)
(define-fun toString/-2075883882 ((s String)) String s)
(define-const var3219 ClassObject var2678!class) ; Statement: $r0 = class "Ljdk/nashorn/internal/codegen/OptimisticTypesPersistence;" 
(assert true)
(define-const var2485 var3067 (getResource/413390302 var3219 "anchor.properties")) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.net.URL getResource(java.lang.String)>("anchor.properties") 
(assert true)
(define-const var2573 String (getProtocol/70454678 var2485)) ; Statement: r2 = virtualinvoke r1.<java.net.URL: java.lang.String getProtocol()>() 
(assert true)
(define-const var3994 Bool (= var2573 "jar")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("jar") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file") 
(assert (= (ite var3994 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1659 Bool (= var2573 "file")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file") 
 ; Statement: if $z1 == 0 goto $r36 = new java.lang.AssertionError 
(assert (not (= (ite var1659 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1031 String (getFile/10099890 var2485)) ; Statement: r28 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>() 
(define-const var2526 ClassObject var2678!class) ; Statement: $r4 = class "Ljdk/nashorn/internal/codegen/OptimisticTypesPersistence;" 
(assert true)
(define-const var1261 String (getName/-1958580599 var2526)) ; Statement: r29 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2035 Int (lastIndexOf/-1292097097 var1261 46)) ; Statement: i6 = virtualinvoke r29.<java.lang.String: int lastIndexOf(int)>(46) 
(assert true)
(define-const var2667 Int (length/-134980193 var1031)) ; Statement: $i0 = virtualinvoke r28.<java.lang.String: int length()>() 
(define-const var2316 Int (- var2667 var2035)) ; Statement: $i1 = $i0 - i6 
(define-const var1483 Int (- var2316 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var1031) var1483) (>= var1483 0))))
(define-const var1740 String (substring/-1240304868 var1031 0 var1483)) ; Statement: r30 = virtualinvoke r28.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(define-const var3576 var2137 var2137-init) ; Statement: $r32 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3576 var1740)) ; Statement: specialinvoke $r32.<java.io.File: void <init>(java.lang.String)>(r30) 

(declare-const var3576!1 var2137)
(declare-const var1740!1 String)
(define-const var1222 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1222)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1222!1 String)
(assert (= var1222!1 ""))
(assert true)
(define-const var2412 String (append/672562846 var1222!1 "dev-")) ; Statement: $r10 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dev-") 
(declare-const var1222!2 String)
(assert (= var1222!2 (str.++ var1222!1 "dev-")))
(define-const var3538 var226 var226-init) ; Statement: $r34 = new java.text.SimpleDateFormat 
(assert true)
;(assert (<init>/-1862704206 var3538 "yyyyMMdd-HHmmss")) ; Statement: specialinvoke $r34.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyyMMdd-HHmmss") 

(declare-const var3538!1 var226)
(declare-const var3866 String)
(define-const var2781 var111 var111-init) ; Statement: $r35 = new java.util.Date 
(define-const var3130 Int (var2678_getLastModifiedClassFile/2126469423 var3576!1 0)) ; Statement: $l3 = staticinvoke <jdk.nashorn.internal.codegen.OptimisticTypesPersistence: long getLastModifiedClassFile(java.io.File,long)>($r32, 0L) 
(assert true)
;(assert (<init>/593337323 var2781 var3130)) ; Statement: specialinvoke $r35.<java.util.Date: void <init>(long)>($l3) 

(declare-const var2781!1 var111)
(declare-const var3130!1 Int)
(assert true)
(define-const var3467 String (format/215566421 (cast-from-var226-to-var3278 var3538!1) var2781!1)) ; Statement: $r9 = virtualinvoke $r34.<java.text.SimpleDateFormat: java.lang.String format(java.util.Date)>($r35) 
(assert true)
(define-const var534 String (append/672562846 var2412 var3467)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 var3467)))
(assert true)
(define-const var2945 String (toString/-2075883882 var534)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), getProtocol/70454678=([java.net.URL], java.lang.String), getFile/10099890=([java.net.URL], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2137-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var226-init=([], java.text.SimpleDateFormat), <init>/-1862704206=([java.text.SimpleDateFormat, java.lang.String], void), var111-init=([], java.util.Date), var2678_getLastModifiedClassFile/2126469423=([java.io.File, long], long), <init>/593337323=([java.util.Date, long], void), format/215566421=([java.text.DateFormat, java.util.Date], java.lang.String), cast-from-var226-to-var3278=([java.text.SimpleDateFormat], java.text.DateFormat), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2678=jdk.nashorn.internal.codegen.OptimisticTypesPersistence, var3219=$r0, var3067=java.net.URL, var2485=r1, var2573=r2, var3994=$z0, var1659=$z1, var1031=r28, var2526=$r4, var1261=r29, var2035=i6, var2667=$i0, var2316=$i1, var1483=$i2, var1740=r30, var2137=java.io.File, var3576=$r32, var1222=$r33, var2412=$r10, var226=java.text.SimpleDateFormat, var3538=$r34, var3866="yyyyMMdd-HHmmss", var111=java.util.Date, var2781=$r35, var3130=$l3, var3278=java.text.DateFormat, var3467=$r9, var534=$r11, var2945=$r12}
; {jdk.nashorn.internal.codegen.OptimisticTypesPersistence=var2678, $r0=var3219, java.net.URL=var3067, r1=var2485, r2=var2573, $z0=var3994, $z1=var1659, r28=var1031, $r4=var2526, r29=var1261, i6=var2035, $i0=var2667, $i1=var2316, $i2=var1483, r30=var1740, java.io.File=var2137, $r32=var3576, $r33=var1222, $r10=var2412, java.text.SimpleDateFormat=var226, $r34=var3538, "yyyyMMdd-HHmmss"=var3866, java.util.Date=var111, $r35=var2781, $l3=var3130, java.text.DateFormat=var3278, $r9=var3467, $r11=var534, $r12=var2945}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = class "Ljdk/nashorn/internal/codegen/OptimisticTypesPersistence;";	r1 = virtualinvoke $r0.<java.lang.Class: java.net.URL getResource(java.lang.String)>("anchor.properties");	r2 = virtualinvoke r1.<java.net.URL: java.lang.String getProtocol()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("jar");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file");	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("file");	if $z1 == 0 goto $r36 = new java.lang.AssertionError;	r28 = virtualinvoke r1.<java.net.URL: java.lang.String getFile()>();	$r4 = class "Ljdk/nashorn/internal/codegen/OptimisticTypesPersistence;";	r29 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	i6 = virtualinvoke r29.<java.lang.String: int lastIndexOf(int)>(46);	$i0 = virtualinvoke r28.<java.lang.String: int length()>();	$i1 = $i0 - i6;	$i2 = $i1 - 1;	r30 = virtualinvoke r28.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r32 = new java.io.File;	specialinvoke $r32.<java.io.File: void <init>(java.lang.String)>(r30);	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("dev-");	$r34 = new java.text.SimpleDateFormat;	specialinvoke $r34.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyyMMdd-HHmmss");	$r35 = new java.util.Date;	$l3 = staticinvoke <jdk.nashorn.internal.codegen.OptimisticTypesPersistence: long getLastModifiedClassFile(java.io.File,long)>($r32, 0L);	specialinvoke $r35.<java.util.Date: void <init>(long)>($l3);	$r9 = virtualinvoke $r34.<java.text.SimpleDateFormat: java.lang.String format(java.util.Date)>($r35);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3