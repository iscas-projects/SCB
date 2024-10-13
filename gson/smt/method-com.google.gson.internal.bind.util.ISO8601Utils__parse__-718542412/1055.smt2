(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1196 0)
(declare-sort var1577 0)
(declare-sort var3575 0)
(declare-sort var2685 0)
(declare-sort var2831 0)
(declare-sort var1245 0)
(declare-sort var1155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3575-to-var2685 (var3575) var2685)
(declare-fun getMessage/849299655 (var2831) String)
(declare-fun cast-from-var2685-to-var2831 (var2685) var2831)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1245) ClassObject)
(declare-fun cast-from-var2685-to-var1245 (var2685) var1245)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1155-init () var1155)
(declare-fun getIndex/-2136393185 (var1577) Int)
(declare-fun <init>/1495607482 (var1155 String Int) void)
(declare-fun initCause/2003336360 (var2831 var2831) var2831)
(declare-fun cast-from-var1155-to-var2831 (var1155) var2831)
(declare-const null-String String)
(declare-const null-var1577 var1577)
(declare-const null-var3575 var3575)
(declare-const var2251 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2251 null-String)))
(declare-const var777 var1577) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var777 null-var1577)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2860 var3575) ; Statement: $r32 := @caughtexception 
(assert (not (= var2860 null-var3575)))
(define-const var3959 var2685 (cast-from-var3575-to-var2685 var2860)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var2251 null-String)))) ; Negate: Cond: r1 != null  
(define-const var281 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var2540 String var281) ; Statement: r51 = $r50 
(assert true)
(define-const var3730 String (getMessage/849299655 (cast-from-var2685-to-var2831 var3959))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3253 String var3730) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var3730 null-String)) ; Cond: $r43 == null 
(define-const var3230 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3230)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3230!1 String)
(assert (= var3230!1 ""))
(assert true)
(define-const var1655 String (append/672562846 var3230!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3230!2 String)
(assert (= var3230!2 (str.++ var3230!1 "(")))
(assert true)
(define-const var696 ClassObject (getClass/1258963082 (cast-from-var2685-to-var1245 var3959))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3225 String (getName/-1958580599 var696)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var715 String (append/672562846 var1655 var3225)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1655!1 String)
(assert (= var1655!1 (str.++ var1655 var3225)))
(assert true)
(define-const var603 String (append/672562846 var715 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var715!1 String)
(assert (= var715!1 (str.++ var715 ")")))
(assert true)
(define-const var3253!1 String (toString/-2075883882 var603)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2917 var1155 var1155-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var2624 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2624)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2624!1 String)
(assert (= var2624!1 ""))
(assert true)
(define-const var1632 String (append/672562846 var2624!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var2624!2 String)
(assert (= var2624!2 (str.++ var2624!1 "Failed to parse date [")))
(assert true)
(define-const var770 String (append/672562846 var1632 var2540)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var1632!1 String)
(assert (= var1632!1 (str.++ var1632 var2540)))
(assert true)
(define-const var172 String (append/672562846 var770 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var770!1 String)
(assert (= var770!1 (str.++ var770 "]: ")))
(assert true)
(define-const var237 String (append/672562846 var172 var3253!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var172!1 String)
(assert (= var172!1 (str.++ var172 var3253!1)))
(assert true)
(define-const var2102 String (toString/-2075883882 var237)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2924 Int (getIndex/-2136393185 var777)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2917 var2102 var2924)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2917!1 var1155)
(declare-const var2102!1 String)
(declare-const var2924!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1155-to-var2831 var2917!1) (cast-from-var2685-to-var2831 var3959))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2917!2 var1155)
(declare-const var3959!1 var2685)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3575-to-var2685=([java.lang.IllegalArgumentException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2685-to-var2831=([java.lang.RuntimeException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2685-to-var1245=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1155-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1155-to-var2831=([java.text.ParseException], java.lang.Throwable)}
; {var2251=r1, var1196=null_type, var1577=java.text.ParsePosition, var777=r0, var3575=java.lang.IllegalArgumentException, var2860=$r32, var2685=java.lang.RuntimeException, var3959=r49, var281=$r50, var2540=r51, var2831=java.lang.Throwable, var3730=$r43, var3253=r52, var3230=$r70, var1655=$r40, var1245=java.lang.Object, var696=$r38, var3225=$r39, var715=$r41, var603=$r42, var1155=java.text.ParseException, var2917=$r72, var2624=$r71, var1632=$r55, var770=$r56, var172=$r57, var237=$r58, var2102=$r59, var2924=$i31}
; {r1=var2251, null_type=var1196, java.text.ParsePosition=var1577, r0=var777, java.lang.IllegalArgumentException=var3575, $r32=var2860, java.lang.RuntimeException=var2685, r49=var3959, $r50=var281, r51=var2540, java.lang.Throwable=var2831, $r43=var3730, r52=var3253, $r70=var3230, $r40=var1655, java.lang.Object=var1245, $r38=var696, $r39=var3225, $r41=var715, $r42=var603, java.text.ParseException=var1155, $r72=var2917, $r71=var2624, $r55=var1632, $r56=var770, $r57=var172, $r58=var237, $r59=var2102, $i31=var2924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7