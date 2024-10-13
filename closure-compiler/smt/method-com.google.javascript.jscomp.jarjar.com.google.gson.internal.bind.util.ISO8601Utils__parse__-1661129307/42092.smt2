(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3754 0)
(declare-sort var2824 0)
(declare-sort var2937 0)
(declare-sort var2751 0)
(declare-sort var1765 0)
(declare-sort var47 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2937-to-var2751 (var2937) var2751)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var1765) String)
(declare-fun cast-from-var2751-to-var1765 (var2751) var1765)
(declare-fun getClass/1258963082 (var47) ClassObject)
(declare-fun cast-from-var2751-to-var47 (var2751) var47)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var213-init () var213)
(declare-fun getIndex/-2136393185 (var2824) Int)
(declare-fun <init>/1495607482 (var213 String Int) void)
(declare-fun initCause/2003336360 (var1765 var1765) var1765)
(declare-fun cast-from-var213-to-var1765 (var213) var1765)
(declare-const null-String String)
(declare-const null-var2824 var2824)
(declare-const null-var2937 var2937)
(declare-const var2204 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2204 null-String)))
(declare-const var3429 var2824) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3429 null-var2824)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3764 var2937) ; Statement: $r44 := @caughtexception 
(assert (not (= var3764 null-var2937)))
(define-const var1085 var2751 (cast-from-var2937-to-var2751 var3764)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var2204 null-String))) ; Cond: r1 != null 
(define-const var2885 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2885)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2885!1 String)
(assert (= var2885!1 ""))
(assert true)
(define-const var3847 String (append/-1166366385 var2885!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2885!2 String)
(assert (str.prefixof var2885!1 var2885!2))
(assert true)
(define-const var3410 String (append/672562846 var3847 var2204)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 var2204)))
(assert true)
(define-const var616 String (append/-1166366385 var3410 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3410!1 String)
(assert (str.prefixof var3410 var3410!1))
(assert true)
(define-const var2117 String (toString/-2075883882 var616)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3173 String var2117) ; Statement: r51 = $r50 
(assert true)
(define-const var2388 String (getMessage/849299655 (cast-from-var2751-to-var1765 var1085))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var1319 String var2388) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var2388 null-String)) ; Cond: $r43 == null 
(define-const var1154 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1154)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1154!1 String)
(assert (= var1154!1 ""))
(assert true)
(define-const var2132 String (append/672562846 var1154!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1154!2 String)
(assert (= var1154!2 (str.++ var1154!1 "(")))
(assert true)
(define-const var3880 ClassObject (getClass/1258963082 (cast-from-var2751-to-var47 var1085))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2856 String (getName/-1958580599 var3880)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2843 String (append/672562846 var2132 var2856)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var2132!1 String)
(assert (= var2132!1 (str.++ var2132 var2856)))
(assert true)
(define-const var3388 String (append/672562846 var2843 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2843!1 String)
(assert (= var2843!1 (str.++ var2843 ")")))
(assert true)
(define-const var1319!1 String (toString/-2075883882 var3388)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2532 var213 var213-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var2618 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2618)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2618!1 String)
(assert (= var2618!1 ""))
(assert true)
(define-const var1235 String (append/672562846 var2618!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var2618!2 String)
(assert (= var2618!2 (str.++ var2618!1 "Failed to parse date [")))
(assert true)
(define-const var507 String (append/672562846 var1235 var3173)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var1235!1 String)
(assert (= var1235!1 (str.++ var1235 var3173)))
(assert true)
(define-const var2467 String (append/672562846 var507 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var507!1 String)
(assert (= var507!1 (str.++ var507 "]: ")))
(assert true)
(define-const var694 String (append/672562846 var2467 var1319!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var2467!1 String)
(assert (= var2467!1 (str.++ var2467 var1319!1)))
(assert true)
(define-const var2355 String (toString/-2075883882 var694)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2798 Int (getIndex/-2136393185 var3429)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2532 var2355 var2798)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2532!1 var213)
(declare-const var2355!1 String)
(declare-const var2798!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var213-to-var1765 var2532!1) (cast-from-var2751-to-var1765 var1085))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2532!2 var213)
(declare-const var1085!1 var2751)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2937-to-var2751=([java.lang.NumberFormatException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2751-to-var1765=([java.lang.RuntimeException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2751-to-var47=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var213-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var213-to-var1765=([java.text.ParseException], java.lang.Throwable)}
; {var2204=r1, var3754=null_type, var2824=java.text.ParsePosition, var3429=r0, var2937=java.lang.NumberFormatException, var3764=$r44, var2751=java.lang.RuntimeException, var1085=r49, var2885=$r69, var3847=$r34, var3410=$r35, var616=$r36, var2117=$r50, var3173=r51, var1765=java.lang.Throwable, var2388=$r43, var1319=r52, var1154=$r70, var2132=$r40, var47=java.lang.Object, var3880=$r38, var2856=$r39, var2843=$r41, var3388=$r42, var213=java.text.ParseException, var2532=$r72, var2618=$r71, var1235=$r55, var507=$r56, var2467=$r57, var694=$r58, var2355=$r59, var2798=$i31}
; {r1=var2204, null_type=var3754, java.text.ParsePosition=var2824, r0=var3429, java.lang.NumberFormatException=var2937, $r44=var3764, java.lang.RuntimeException=var2751, r49=var1085, $r69=var2885, $r34=var3847, $r35=var3410, $r36=var616, $r50=var2117, r51=var3173, java.lang.Throwable=var1765, $r43=var2388, r52=var1319, $r70=var1154, $r40=var2132, java.lang.Object=var47, $r38=var3880, $r39=var2856, $r41=var2843, $r42=var3388, java.text.ParseException=var213, $r72=var2532, $r71=var2618, $r55=var1235, $r56=var507, $r57=var2467, $r58=var694, $r59=var2355, $i31=var2798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7