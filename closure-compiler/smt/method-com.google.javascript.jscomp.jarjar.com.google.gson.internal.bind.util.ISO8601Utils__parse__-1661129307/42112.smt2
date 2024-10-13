(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2184 0)
(declare-sort var3905 0)
(declare-sort var3858 0)
(declare-sort var2195 0)
(declare-sort var734 0)
(declare-sort var3034 0)
(declare-sort var3148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3858-to-var2195 (var3858) var2195)
(declare-fun getMessage/849299655 (var734) String)
(declare-fun cast-from-var2195-to-var734 (var2195) var734)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3034) ClassObject)
(declare-fun cast-from-var2195-to-var3034 (var2195) var3034)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3148-init () var3148)
(declare-fun getIndex/-2136393185 (var3905) Int)
(declare-fun <init>/1495607482 (var3148 String Int) void)
(declare-fun initCause/2003336360 (var734 var734) var734)
(declare-fun cast-from-var3148-to-var734 (var3148) var734)
(declare-const null-String String)
(declare-const null-var3905 var3905)
(declare-const null-var3858 var3858)
(declare-const var3964 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3964 null-String)))
(declare-const var3606 var3905) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3606 null-var3905)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1397 var3858) ; Statement: $r32 := @caughtexception 
(assert (not (= var1397 null-var3858)))
(define-const var958 var2195 (cast-from-var3858-to-var2195 var1397)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var3964 null-String)))) ; Negate: Cond: r1 != null  
(define-const var3079 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var459 String var3079) ; Statement: r51 = $r50 
(assert true)
(define-const var709 String (getMessage/849299655 (cast-from-var2195-to-var734 var958))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var2643 String var709) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var709 null-String)) ; Cond: $r43 == null 
(define-const var3302 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3302)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3302!1 String)
(assert (= var3302!1 ""))
(assert true)
(define-const var2167 String (append/672562846 var3302!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3302!2 String)
(assert (= var3302!2 (str.++ var3302!1 "(")))
(assert true)
(define-const var3470 ClassObject (getClass/1258963082 (cast-from-var2195-to-var3034 var958))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3277 String (getName/-1958580599 var3470)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3497 String (append/672562846 var2167 var3277)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var2167!1 String)
(assert (= var2167!1 (str.++ var2167 var3277)))
(assert true)
(define-const var184 String (append/672562846 var3497 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3497!1 String)
(assert (= var3497!1 (str.++ var3497 ")")))
(assert true)
(define-const var2643!1 String (toString/-2075883882 var184)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2900 var3148 var3148-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var241 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var241)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var241!1 String)
(assert (= var241!1 ""))
(assert true)
(define-const var2269 String (append/672562846 var241!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var241!2 String)
(assert (= var241!2 (str.++ var241!1 "Failed to parse date [")))
(assert true)
(define-const var2637 String (append/672562846 var2269 var459)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2269!1 String)
(assert (= var2269!1 (str.++ var2269 var459)))
(assert true)
(define-const var522 String (append/672562846 var2637 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2637!1 String)
(assert (= var2637!1 (str.++ var2637 "]: ")))
(assert true)
(define-const var638 String (append/672562846 var522 var2643!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var522!1 String)
(assert (= var522!1 (str.++ var522 var2643!1)))
(assert true)
(define-const var90 String (toString/-2075883882 var638)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1767 Int (getIndex/-2136393185 var3606)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2900 var90 var1767)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2900!1 var3148)
(declare-const var90!1 String)
(declare-const var1767!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3148-to-var734 var2900!1) (cast-from-var2195-to-var734 var958))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2900!2 var3148)
(declare-const var958!1 var2195)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3858-to-var2195=([java.lang.IllegalArgumentException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2195-to-var734=([java.lang.RuntimeException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2195-to-var3034=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3148-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3148-to-var734=([java.text.ParseException], java.lang.Throwable)}
; {var3964=r1, var2184=null_type, var3905=java.text.ParsePosition, var3606=r0, var3858=java.lang.IllegalArgumentException, var1397=$r32, var2195=java.lang.RuntimeException, var958=r49, var3079=$r50, var459=r51, var734=java.lang.Throwable, var709=$r43, var2643=r52, var3302=$r70, var2167=$r40, var3034=java.lang.Object, var3470=$r38, var3277=$r39, var3497=$r41, var184=$r42, var3148=java.text.ParseException, var2900=$r72, var241=$r71, var2269=$r55, var2637=$r56, var522=$r57, var638=$r58, var90=$r59, var1767=$i31}
; {r1=var3964, null_type=var2184, java.text.ParsePosition=var3905, r0=var3606, java.lang.IllegalArgumentException=var3858, $r32=var1397, java.lang.RuntimeException=var2195, r49=var958, $r50=var3079, r51=var459, java.lang.Throwable=var734, $r43=var709, r52=var2643, $r70=var3302, $r40=var2167, java.lang.Object=var3034, $r38=var3470, $r39=var3277, $r41=var3497, $r42=var184, java.text.ParseException=var3148, $r72=var2900, $r71=var241, $r55=var2269, $r56=var2637, $r57=var522, $r58=var638, $r59=var90, $i31=var1767}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7