(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3523 0)
(declare-sort var3025 0)
(declare-sort var633 0)
(declare-sort var2985 0)
(declare-sort var2678 0)
(declare-sort var1719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var633-to-var2985 (var633) var2985)
(declare-fun getMessage/849299655 (var2678) String)
(declare-fun cast-from-var2985-to-var2678 (var2985) var2678)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1719-init () var1719)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIndex/-2136393185 (var3025) Int)
(declare-fun <init>/1495607482 (var1719 String Int) void)
(declare-fun initCause/2003336360 (var2678 var2678) var2678)
(declare-fun cast-from-var1719-to-var2678 (var1719) var2678)
(declare-const null-String String)
(declare-const null-var3025 var3025)
(declare-const null-var633 var633)
(declare-const var2031 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2031 null-String)))
(declare-const var443 var3025) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var443 null-var3025)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1153 var633) ; Statement: $r44 := @caughtexception 
(assert (not (= var1153 null-var633)))
(define-const var1098 var2985 (cast-from-var633-to-var2985 var1153)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var2031 null-String)))) ; Negate: Cond: r1 != null  
(define-const var3245 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var2353 String var3245) ; Statement: r51 = $r50 
(assert true)
(define-const var3332 String (getMessage/849299655 (cast-from-var2985-to-var2678 var1098))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3340 String var3332) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var3332 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var3397 Bool (isEmpty/-1285796103 var3332)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var3397 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1684 var1719 var1719-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3697 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3697)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3697!1 String)
(assert (= var3697!1 ""))
(assert true)
(define-const var3277 String (append/672562846 var3697!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3697!2 String)
(assert (= var3697!2 (str.++ var3697!1 "Failed to parse date [")))
(assert true)
(define-const var3939 String (append/672562846 var3277 var2353)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var3277!1 String)
(assert (= var3277!1 (str.++ var3277 var2353)))
(assert true)
(define-const var541 String (append/672562846 var3939 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3939!1 String)
(assert (= var3939!1 (str.++ var3939 "]: ")))
(assert true)
(define-const var2569 String (append/672562846 var541 var3340)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var541!1 String)
(assert (= var541!1 (str.++ var541 var3340)))
(assert true)
(define-const var637 String (toString/-2075883882 var2569)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var824 Int (getIndex/-2136393185 var443)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1684 var637 var824)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1684!1 var1719)
(declare-const var637!1 String)
(declare-const var824!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1719-to-var2678 var1684!1) (cast-from-var2985-to-var2678 var1098))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1684!2 var1719)
(declare-const var1098!1 var2985)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var633-to-var2985=([java.lang.NumberFormatException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2985-to-var2678=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var1719-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1719-to-var2678=([java.text.ParseException], java.lang.Throwable)}
; {var2031=r1, var3523=null_type, var3025=java.text.ParsePosition, var443=r0, var633=java.lang.NumberFormatException, var1153=$r44, var2985=java.lang.RuntimeException, var1098=r49, var3245=$r50, var2353=r51, var2678=java.lang.Throwable, var3332=$r43, var3340=r52, var3397=$z9, var1719=java.text.ParseException, var1684=$r72, var3697=$r71, var3277=$r55, var3939=$r56, var541=$r57, var2569=$r58, var637=$r59, var824=$i31}
; {r1=var2031, null_type=var3523, java.text.ParsePosition=var3025, r0=var443, java.lang.NumberFormatException=var633, $r44=var1153, java.lang.RuntimeException=var2985, r49=var1098, $r50=var3245, r51=var2353, java.lang.Throwable=var2678, $r43=var3332, r52=var3340, $z9=var3397, java.text.ParseException=var1719, $r72=var1684, $r71=var3697, $r55=var3277, $r56=var3939, $r57=var541, $r58=var2569, $r59=var637, $i31=var824}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7