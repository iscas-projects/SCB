(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3691 0)
(declare-sort var393 0)
(declare-sort var400 0)
(declare-sort var237 0)
(declare-sort var3419 0)
(declare-sort var2580 0)
(declare-sort var3223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var400-to-var237 (var400) var237)
(declare-fun getMessage/849299655 (var3419) String)
(declare-fun cast-from-var237-to-var3419 (var237) var3419)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2580) ClassObject)
(declare-fun cast-from-var237-to-var2580 (var237) var2580)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3223-init () var3223)
(declare-fun getIndex/-2136393185 (var393) Int)
(declare-fun <init>/1495607482 (var3223 String Int) void)
(declare-fun initCause/2003336360 (var3419 var3419) var3419)
(declare-fun cast-from-var3223-to-var3419 (var3223) var3419)
(declare-const null-String String)
(declare-const null-var393 var393)
(declare-const null-var400 var400)
(declare-const var151 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var151 null-String)))
(declare-const var885 var393) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var885 null-var393)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2834 var400) ; Statement: $r45 := @caughtexception 
(assert (not (= var2834 null-var400)))
(define-const var1313 var237 (cast-from-var400-to-var237 var2834)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var151 null-String)))) ; Negate: Cond: r1 != null  
(define-const var3948 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var3636 String var3948) ; Statement: r51 = $r50 
(assert true)
(define-const var1597 String (getMessage/849299655 (cast-from-var237-to-var3419 var1313))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3453 String var1597) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var1597 null-String)) ; Cond: $r43 == null 
(define-const var3735 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3735)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3735!1 String)
(assert (= var3735!1 ""))
(assert true)
(define-const var3031 String (append/672562846 var3735!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3735!2 String)
(assert (= var3735!2 (str.++ var3735!1 "(")))
(assert true)
(define-const var874 ClassObject (getClass/1258963082 (cast-from-var237-to-var2580 var1313))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3390 String (getName/-1958580599 var874)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var116 String (append/672562846 var3031 var3390)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var3031!1 String)
(assert (= var3031!1 (str.++ var3031 var3390)))
(assert true)
(define-const var3273 String (append/672562846 var116 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var116!1 String)
(assert (= var116!1 (str.++ var116 ")")))
(assert true)
(define-const var3453!1 String (toString/-2075883882 var3273)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3673 var3223 var3223-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var2923 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2923)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2923!1 String)
(assert (= var2923!1 ""))
(assert true)
(define-const var265 String (append/672562846 var2923!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var2923!2 String)
(assert (= var2923!2 (str.++ var2923!1 "Failed to parse date [")))
(assert true)
(define-const var2066 String (append/672562846 var265 var3636)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var265!1 String)
(assert (= var265!1 (str.++ var265 var3636)))
(assert true)
(define-const var1841 String (append/672562846 var2066 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2066!1 String)
(assert (= var2066!1 (str.++ var2066 "]: ")))
(assert true)
(define-const var3792 String (append/672562846 var1841 var3453!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var1841!1 String)
(assert (= var1841!1 (str.++ var1841 var3453!1)))
(assert true)
(define-const var114 String (toString/-2075883882 var3792)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3476 Int (getIndex/-2136393185 var885)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var3673 var114 var3476)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var3673!1 var3223)
(declare-const var114!1 String)
(declare-const var3476!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3223-to-var3419 var3673!1) (cast-from-var237-to-var3419 var1313))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var3673!2 var3223)
(declare-const var1313!1 var237)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var400-to-var237=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var237-to-var3419=([java.lang.RuntimeException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var237-to-var2580=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3223-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3223-to-var3419=([java.text.ParseException], java.lang.Throwable)}
; {var151=r1, var3691=null_type, var393=java.text.ParsePosition, var885=r0, var400=java.lang.IndexOutOfBoundsException, var2834=$r45, var237=java.lang.RuntimeException, var1313=r49, var3948=$r50, var3636=r51, var3419=java.lang.Throwable, var1597=$r43, var3453=r52, var3735=$r70, var3031=$r40, var2580=java.lang.Object, var874=$r38, var3390=$r39, var116=$r41, var3273=$r42, var3223=java.text.ParseException, var3673=$r72, var2923=$r71, var265=$r55, var2066=$r56, var1841=$r57, var3792=$r58, var114=$r59, var3476=$i31}
; {r1=var151, null_type=var3691, java.text.ParsePosition=var393, r0=var885, java.lang.IndexOutOfBoundsException=var400, $r45=var2834, java.lang.RuntimeException=var237, r49=var1313, $r50=var3948, r51=var3636, java.lang.Throwable=var3419, $r43=var1597, r52=var3453, $r70=var3735, $r40=var3031, java.lang.Object=var2580, $r38=var874, $r39=var3390, $r41=var116, $r42=var3273, java.text.ParseException=var3223, $r72=var3673, $r71=var2923, $r55=var265, $r56=var2066, $r57=var1841, $r58=var3792, $r59=var114, $i31=var3476}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7