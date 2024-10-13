(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2346 0)
(declare-sort var161 0)
(declare-sort var266 0)
(declare-sort var45 0)
(declare-sort var880 0)
(declare-sort var1961 0)
(declare-sort var1950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var266-to-var45 (var266) var45)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var880) String)
(declare-fun cast-from-var45-to-var880 (var45) var880)
(declare-fun getClass/1258963082 (var1961) ClassObject)
(declare-fun cast-from-var45-to-var1961 (var45) var1961)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1950-init () var1950)
(declare-fun getIndex/-2136393185 (var161) Int)
(declare-fun <init>/1495607482 (var1950 String Int) void)
(declare-fun initCause/2003336360 (var880 var880) var880)
(declare-fun cast-from-var1950-to-var880 (var1950) var880)
(declare-const null-String String)
(declare-const null-var161 var161)
(declare-const null-var266 var266)
(declare-const var788 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var788 null-String)))
(declare-const var335 var161) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var335 null-var161)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var260 var266) ; Statement: $r45 := @caughtexception 
(assert (not (= var260 null-var266)))
(define-const var2816 var45 (cast-from-var266-to-var45 var260)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var788 null-String))) ; Cond: r1 != null 
(define-const var2974 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2974)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2974!1 String)
(assert (= var2974!1 ""))
(assert true)
(define-const var3932 String (append/-1166366385 var2974!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2974!2 String)
(assert (str.prefixof var2974!1 var2974!2))
(assert true)
(define-const var1210 String (append/672562846 var3932 var788)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3932!1 String)
(assert (= var3932!1 (str.++ var3932 var788)))
(assert true)
(define-const var1038 String (append/-1166366385 var1210 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1210!1 String)
(assert (str.prefixof var1210 var1210!1))
(assert true)
(define-const var1665 String (toString/-2075883882 var1038)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1138 String var1665) ; Statement: r51 = $r50 
(assert true)
(define-const var2958 String (getMessage/849299655 (cast-from-var45-to-var880 var2816))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var2504 String var2958) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var2958 null-String)) ; Cond: $r43 == null 
(define-const var878 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var3089 String (append/672562846 var878!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "(")))
(assert true)
(define-const var2485 ClassObject (getClass/1258963082 (cast-from-var45-to-var1961 var2816))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3251 String (getName/-1958580599 var2485)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2951 String (append/672562846 var3089 var3251)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var3089!1 String)
(assert (= var3089!1 (str.++ var3089 var3251)))
(assert true)
(define-const var3548 String (append/672562846 var2951 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2951!1 String)
(assert (= var2951!1 (str.++ var2951 ")")))
(assert true)
(define-const var2504!1 String (toString/-2075883882 var3548)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1390 var1950 var1950-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var205 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var205)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var205!1 String)
(assert (= var205!1 ""))
(assert true)
(define-const var2991 String (append/672562846 var205!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var205!2 String)
(assert (= var205!2 (str.++ var205!1 "Failed to parse date [")))
(assert true)
(define-const var920 String (append/672562846 var2991 var1138)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2991!1 String)
(assert (= var2991!1 (str.++ var2991 var1138)))
(assert true)
(define-const var798 String (append/672562846 var920 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 "]: ")))
(assert true)
(define-const var2827 String (append/672562846 var798 var2504!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 var2504!1)))
(assert true)
(define-const var2362 String (toString/-2075883882 var2827)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1135 Int (getIndex/-2136393185 var335)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1390 var2362 var1135)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1390!1 var1950)
(declare-const var2362!1 String)
(declare-const var1135!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1950-to-var880 var1390!1) (cast-from-var45-to-var880 var2816))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1390!2 var1950)
(declare-const var2816!1 var45)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var266-to-var45=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var45-to-var880=([java.lang.RuntimeException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var45-to-var1961=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var1950-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1950-to-var880=([java.text.ParseException], java.lang.Throwable)}
; {var788=r1, var2346=null_type, var161=java.text.ParsePosition, var335=r0, var266=java.lang.IndexOutOfBoundsException, var260=$r45, var45=java.lang.RuntimeException, var2816=r49, var2974=$r69, var3932=$r34, var1210=$r35, var1038=$r36, var1665=$r50, var1138=r51, var880=java.lang.Throwable, var2958=$r43, var2504=r52, var878=$r70, var3089=$r40, var1961=java.lang.Object, var2485=$r38, var3251=$r39, var2951=$r41, var3548=$r42, var1950=java.text.ParseException, var1390=$r72, var205=$r71, var2991=$r55, var920=$r56, var798=$r57, var2827=$r58, var2362=$r59, var1135=$i31}
; {r1=var788, null_type=var2346, java.text.ParsePosition=var161, r0=var335, java.lang.IndexOutOfBoundsException=var266, $r45=var260, java.lang.RuntimeException=var45, r49=var2816, $r69=var2974, $r34=var3932, $r35=var1210, $r36=var1038, $r50=var1665, r51=var1138, java.lang.Throwable=var880, $r43=var2958, r52=var2504, $r70=var878, $r40=var3089, java.lang.Object=var1961, $r38=var2485, $r39=var3251, $r41=var2951, $r42=var3548, java.text.ParseException=var1950, $r72=var1390, $r71=var205, $r55=var2991, $r56=var920, $r57=var798, $r58=var2827, $r59=var2362, $i31=var1135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7