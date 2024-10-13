(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var2644 0)
(declare-sort var2195 0)
(declare-sort var2651 0)
(declare-sort var126 0)
(declare-sort var3383 0)
(declare-sort var1165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2195-to-var2651 (var2195) var2651)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var126) String)
(declare-fun cast-from-var2651-to-var126 (var2651) var126)
(declare-fun getClass/1258963082 (var3383) ClassObject)
(declare-fun cast-from-var2651-to-var3383 (var2651) var3383)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1165-init () var1165)
(declare-fun getIndex/-2136393185 (var2644) Int)
(declare-fun <init>/1495607482 (var1165 String Int) void)
(declare-fun initCause/2003336360 (var126 var126) var126)
(declare-fun cast-from-var1165-to-var126 (var1165) var126)
(declare-const null-String String)
(declare-const null-var2644 var2644)
(declare-const null-var2195 var2195)
(declare-const var1200 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1200 null-String)))
(declare-const var1832 var2644) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1832 null-var2644)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3005 var2195) ; Statement: $r45 := @caughtexception 
(assert (not (= var3005 null-var2195)))
(define-const var3988 var2651 (cast-from-var2195-to-var2651 var3005)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var1200 null-String))) ; Cond: r1 != null 
(define-const var478 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var478)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var478!1 String)
(assert (= var478!1 ""))
(assert true)
(define-const var1139 String (append/-1166366385 var478!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var478!2 String)
(assert (str.prefixof var478!1 var478!2))
(assert true)
(define-const var1281 String (append/672562846 var1139 var1200)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1139!1 String)
(assert (= var1139!1 (str.++ var1139 var1200)))
(assert true)
(define-const var1898 String (append/-1166366385 var1281 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1281!1 String)
(assert (str.prefixof var1281 var1281!1))
(assert true)
(define-const var2567 String (toString/-2075883882 var1898)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3673 String var2567) ; Statement: r51 = $r50 
(assert true)
(define-const var2967 String (getMessage/849299655 (cast-from-var2651-to-var126 var3988))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3455 String var2967) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var2967 null-String)) ; Cond: $r43 == null 
(define-const var1973 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1973)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1973!1 String)
(assert (= var1973!1 ""))
(assert true)
(define-const var1932 String (append/672562846 var1973!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1973!2 String)
(assert (= var1973!2 (str.++ var1973!1 "(")))
(assert true)
(define-const var1824 ClassObject (getClass/1258963082 (cast-from-var2651-to-var3383 var3988))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3333 String (getName/-1958580599 var1824)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3478 String (append/672562846 var1932 var3333)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1932!1 String)
(assert (= var1932!1 (str.++ var1932 var3333)))
(assert true)
(define-const var2224 String (append/672562846 var3478 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3478!1 String)
(assert (= var3478!1 (str.++ var3478 ")")))
(assert true)
(define-const var3455!1 String (toString/-2075883882 var2224)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3917 var1165 var1165-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var1840 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1840)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1840!1 String)
(assert (= var1840!1 ""))
(assert true)
(define-const var2738 String (append/672562846 var1840!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var1840!2 String)
(assert (= var1840!2 (str.++ var1840!1 "Failed to parse date [")))
(assert true)
(define-const var2268 String (append/672562846 var2738 var3673)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2738!1 String)
(assert (= var2738!1 (str.++ var2738 var3673)))
(assert true)
(define-const var329 String (append/672562846 var2268 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2268!1 String)
(assert (= var2268!1 (str.++ var2268 "]: ")))
(assert true)
(define-const var2606 String (append/672562846 var329 var3455!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var329!1 String)
(assert (= var329!1 (str.++ var329 var3455!1)))
(assert true)
(define-const var1225 String (toString/-2075883882 var2606)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3939 Int (getIndex/-2136393185 var1832)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var3917 var1225 var3939)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var3917!1 var1165)
(declare-const var1225!1 String)
(declare-const var3939!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1165-to-var126 var3917!1) (cast-from-var2651-to-var126 var3988))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var3917!2 var1165)
(declare-const var3988!1 var2651)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2195-to-var2651=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2651-to-var126=([java.lang.RuntimeException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2651-to-var3383=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var1165-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1165-to-var126=([java.text.ParseException], java.lang.Throwable)}
; {var1200=r1, var3558=null_type, var2644=java.text.ParsePosition, var1832=r0, var2195=java.lang.IndexOutOfBoundsException, var3005=$r45, var2651=java.lang.RuntimeException, var3988=r49, var478=$r69, var1139=$r34, var1281=$r35, var1898=$r36, var2567=$r50, var3673=r51, var126=java.lang.Throwable, var2967=$r43, var3455=r52, var1973=$r70, var1932=$r40, var3383=java.lang.Object, var1824=$r38, var3333=$r39, var3478=$r41, var2224=$r42, var1165=java.text.ParseException, var3917=$r72, var1840=$r71, var2738=$r55, var2268=$r56, var329=$r57, var2606=$r58, var1225=$r59, var3939=$i31}
; {r1=var1200, null_type=var3558, java.text.ParsePosition=var2644, r0=var1832, java.lang.IndexOutOfBoundsException=var2195, $r45=var3005, java.lang.RuntimeException=var2651, r49=var3988, $r69=var478, $r34=var1139, $r35=var1281, $r36=var1898, $r50=var2567, r51=var3673, java.lang.Throwable=var126, $r43=var2967, r52=var3455, $r70=var1973, $r40=var1932, java.lang.Object=var3383, $r38=var1824, $r39=var3333, $r41=var3478, $r42=var2224, java.text.ParseException=var1165, $r72=var3917, $r71=var1840, $r55=var2738, $r56=var2268, $r57=var329, $r58=var2606, $r59=var1225, $i31=var3939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7