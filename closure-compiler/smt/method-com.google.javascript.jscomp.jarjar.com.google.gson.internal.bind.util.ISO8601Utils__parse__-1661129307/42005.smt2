(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1691 0)
(declare-sort var3990 0)
(declare-sort var2253 0)
(declare-sort var824 0)
(declare-sort var1972 0)
(declare-sort var2945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2253-to-var824 (var2253) var824)
(declare-fun getMessage/849299655 (var1972) String)
(declare-fun cast-from-var824-to-var1972 (var824) var1972)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2945-init () var2945)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIndex/-2136393185 (var3990) Int)
(declare-fun <init>/1495607482 (var2945 String Int) void)
(declare-fun initCause/2003336360 (var1972 var1972) var1972)
(declare-fun cast-from-var2945-to-var1972 (var2945) var1972)
(declare-const null-String String)
(declare-const null-var3990 var3990)
(declare-const null-var2253 var2253)
(declare-const var3682 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3682 null-String)))
(declare-const var2678 var3990) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2678 null-var3990)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2371 var2253) ; Statement: $r45 := @caughtexception 
(assert (not (= var2371 null-var2253)))
(define-const var2492 var824 (cast-from-var2253-to-var824 var2371)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var3682 null-String)))) ; Negate: Cond: r1 != null  
(define-const var312 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var323 String var312) ; Statement: r51 = $r50 
(assert true)
(define-const var409 String (getMessage/849299655 (cast-from-var824-to-var1972 var2492))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3558 String var409) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var409 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var2443 Bool (isEmpty/-1285796103 var409)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var2443 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1533 var2945 var2945-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3361 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3361)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3361!1 String)
(assert (= var3361!1 ""))
(assert true)
(define-const var3782 String (append/672562846 var3361!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3361!2 String)
(assert (= var3361!2 (str.++ var3361!1 "Failed to parse date [")))
(assert true)
(define-const var771 String (append/672562846 var3782 var323)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var3782!1 String)
(assert (= var3782!1 (str.++ var3782 var323)))
(assert true)
(define-const var2484 String (append/672562846 var771 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var771!1 String)
(assert (= var771!1 (str.++ var771 "]: ")))
(assert true)
(define-const var1550 String (append/672562846 var2484 var3558)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var2484!1 String)
(assert (= var2484!1 (str.++ var2484 var3558)))
(assert true)
(define-const var2124 String (toString/-2075883882 var1550)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3439 Int (getIndex/-2136393185 var2678)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1533 var2124 var3439)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1533!1 var2945)
(declare-const var2124!1 String)
(declare-const var3439!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2945-to-var1972 var1533!1) (cast-from-var824-to-var1972 var2492))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1533!2 var2945)
(declare-const var2492!1 var824)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2253-to-var824=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var824-to-var1972=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var2945-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2945-to-var1972=([java.text.ParseException], java.lang.Throwable)}
; {var3682=r1, var1691=null_type, var3990=java.text.ParsePosition, var2678=r0, var2253=java.lang.IndexOutOfBoundsException, var2371=$r45, var824=java.lang.RuntimeException, var2492=r49, var312=$r50, var323=r51, var1972=java.lang.Throwable, var409=$r43, var3558=r52, var2443=$z9, var2945=java.text.ParseException, var1533=$r72, var3361=$r71, var3782=$r55, var771=$r56, var2484=$r57, var1550=$r58, var2124=$r59, var3439=$i31}
; {r1=var3682, null_type=var1691, java.text.ParsePosition=var3990, r0=var2678, java.lang.IndexOutOfBoundsException=var2253, $r45=var2371, java.lang.RuntimeException=var824, r49=var2492, $r50=var312, r51=var323, java.lang.Throwable=var1972, $r43=var409, r52=var3558, $z9=var2443, java.text.ParseException=var2945, $r72=var1533, $r71=var3361, $r55=var3782, $r56=var771, $r57=var2484, $r58=var1550, $r59=var2124, $i31=var3439}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7