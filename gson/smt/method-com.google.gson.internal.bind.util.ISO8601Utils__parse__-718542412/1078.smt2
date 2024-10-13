(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3910 0)
(declare-sort var1022 0)
(declare-sort var1296 0)
(declare-sort var2670 0)
(declare-sort var1297 0)
(declare-sort var1651 0)
(declare-sort var2864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1296-to-var2670 (var1296) var2670)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var1297) String)
(declare-fun cast-from-var2670-to-var1297 (var2670) var1297)
(declare-fun getClass/1258963082 (var1651) ClassObject)
(declare-fun cast-from-var2670-to-var1651 (var2670) var1651)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2864-init () var2864)
(declare-fun getIndex/-2136393185 (var1022) Int)
(declare-fun <init>/1495607482 (var2864 String Int) void)
(declare-fun initCause/2003336360 (var1297 var1297) var1297)
(declare-fun cast-from-var2864-to-var1297 (var2864) var1297)
(declare-const null-String String)
(declare-const null-var1022 var1022)
(declare-const null-var1296 var1296)
(declare-const var2429 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2429 null-String)))
(declare-const var3040 var1022) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3040 null-var1022)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1432 var1296) ; Statement: $r32 := @caughtexception 
(assert (not (= var1432 null-var1296)))
(define-const var2172 var2670 (cast-from-var1296-to-var2670 var1432)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var2429 null-String))) ; Cond: r1 != null 
(define-const var1088 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1088)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1088!1 String)
(assert (= var1088!1 ""))
(assert true)
(define-const var3561 String (append/-1166366385 var1088!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1088!2 String)
(assert (str.prefixof var1088!1 var1088!2))
(assert true)
(define-const var1344 String (append/672562846 var3561 var2429)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3561!1 String)
(assert (= var3561!1 (str.++ var3561 var2429)))
(assert true)
(define-const var152 String (append/-1166366385 var1344 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1344!1 String)
(assert (str.prefixof var1344 var1344!1))
(assert true)
(define-const var3488 String (toString/-2075883882 var152)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3350 String var3488) ; Statement: r51 = $r50 
(assert true)
(define-const var816 String (getMessage/849299655 (cast-from-var2670-to-var1297 var2172))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var830 String var816) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var816 null-String)) ; Cond: $r43 == null 
(define-const var166 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var166)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var166!1 String)
(assert (= var166!1 ""))
(assert true)
(define-const var3472 String (append/672562846 var166!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var166!2 String)
(assert (= var166!2 (str.++ var166!1 "(")))
(assert true)
(define-const var415 ClassObject (getClass/1258963082 (cast-from-var2670-to-var1651 var2172))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2119 String (getName/-1958580599 var415)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3211 String (append/672562846 var3472 var2119)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var3472!1 String)
(assert (= var3472!1 (str.++ var3472 var2119)))
(assert true)
(define-const var1319 String (append/672562846 var3211 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3211!1 String)
(assert (= var3211!1 (str.++ var3211 ")")))
(assert true)
(define-const var830!1 String (toString/-2075883882 var1319)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2967 var2864 var2864-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var1908 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1908)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1908!1 String)
(assert (= var1908!1 ""))
(assert true)
(define-const var3957 String (append/672562846 var1908!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var1908!2 String)
(assert (= var1908!2 (str.++ var1908!1 "Failed to parse date [")))
(assert true)
(define-const var2313 String (append/672562846 var3957 var3350)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var3957!1 String)
(assert (= var3957!1 (str.++ var3957 var3350)))
(assert true)
(define-const var3080 String (append/672562846 var2313 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2313!1 String)
(assert (= var2313!1 (str.++ var2313 "]: ")))
(assert true)
(define-const var3884 String (append/672562846 var3080 var830!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var3080!1 String)
(assert (= var3080!1 (str.++ var3080 var830!1)))
(assert true)
(define-const var934 String (toString/-2075883882 var3884)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2480 Int (getIndex/-2136393185 var3040)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2967 var934 var2480)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2967!1 var2864)
(declare-const var934!1 String)
(declare-const var2480!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2864-to-var1297 var2967!1) (cast-from-var2670-to-var1297 var2172))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2967!2 var2864)
(declare-const var2172!1 var2670)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1296-to-var2670=([java.lang.IllegalArgumentException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2670-to-var1297=([java.lang.RuntimeException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2670-to-var1651=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var2864-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2864-to-var1297=([java.text.ParseException], java.lang.Throwable)}
; {var2429=r1, var3910=null_type, var1022=java.text.ParsePosition, var3040=r0, var1296=java.lang.IllegalArgumentException, var1432=$r32, var2670=java.lang.RuntimeException, var2172=r49, var1088=$r69, var3561=$r34, var1344=$r35, var152=$r36, var3488=$r50, var3350=r51, var1297=java.lang.Throwable, var816=$r43, var830=r52, var166=$r70, var3472=$r40, var1651=java.lang.Object, var415=$r38, var2119=$r39, var3211=$r41, var1319=$r42, var2864=java.text.ParseException, var2967=$r72, var1908=$r71, var3957=$r55, var2313=$r56, var3080=$r57, var3884=$r58, var934=$r59, var2480=$i31}
; {r1=var2429, null_type=var3910, java.text.ParsePosition=var1022, r0=var3040, java.lang.IllegalArgumentException=var1296, $r32=var1432, java.lang.RuntimeException=var2670, r49=var2172, $r69=var1088, $r34=var3561, $r35=var1344, $r36=var152, $r50=var3488, r51=var3350, java.lang.Throwable=var1297, $r43=var816, r52=var830, $r70=var166, $r40=var3472, java.lang.Object=var1651, $r38=var415, $r39=var2119, $r41=var3211, $r42=var1319, java.text.ParseException=var2864, $r72=var2967, $r71=var1908, $r55=var3957, $r56=var2313, $r57=var3080, $r58=var3884, $r59=var934, $i31=var2480}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7