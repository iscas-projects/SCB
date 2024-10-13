(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort var3049 0)
(declare-sort var2239 0)
(declare-sort var3983 0)
(declare-sort var969 0)
(declare-sort var3430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2239-to-var3983 (var2239) var3983)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var969) String)
(declare-fun cast-from-var3983-to-var969 (var3983) var969)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3430-init () var3430)
(declare-fun getIndex/-2136393185 (var3049) Int)
(declare-fun <init>/1495607482 (var3430 String Int) void)
(declare-fun initCause/2003336360 (var969 var969) var969)
(declare-fun cast-from-var3430-to-var969 (var3430) var969)
(declare-const null-String String)
(declare-const null-var3049 var3049)
(declare-const null-var2239 var2239)
(declare-const var57 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var57 null-String)))
(declare-const var2615 var3049) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2615 null-var3049)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3876 var2239) ; Statement: $r45 := @caughtexception 
(assert (not (= var3876 null-var2239)))
(define-const var2725 var3983 (cast-from-var2239-to-var3983 var3876)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var57 null-String))) ; Cond: r1 != null 
(define-const var3569 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3569)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3569!1 String)
(assert (= var3569!1 ""))
(assert true)
(define-const var174 String (append/-1166366385 var3569!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3569!2 String)
(assert (str.prefixof var3569!1 var3569!2))
(assert true)
(define-const var1701 String (append/672562846 var174 var57)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var174!1 String)
(assert (= var174!1 (str.++ var174 var57)))
(assert true)
(define-const var2006 String (append/-1166366385 var1701 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1701!1 String)
(assert (str.prefixof var1701 var1701!1))
(assert true)
(define-const var2082 String (toString/-2075883882 var2006)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2022 String var2082) ; Statement: r51 = $r50 
(assert true)
(define-const var1747 String (getMessage/849299655 (cast-from-var3983-to-var969 var2725))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var1750 String var1747) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var1747 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var3344 Bool (isEmpty/-1285796103 var1747)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var3344 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1010 var3430 var3430-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3616 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3616)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3616!1 String)
(assert (= var3616!1 ""))
(assert true)
(define-const var3251 String (append/672562846 var3616!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3616!2 String)
(assert (= var3616!2 (str.++ var3616!1 "Failed to parse date [")))
(assert true)
(define-const var3311 String (append/672562846 var3251 var2022)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var3251!1 String)
(assert (= var3251!1 (str.++ var3251 var2022)))
(assert true)
(define-const var1291 String (append/672562846 var3311 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3311!1 String)
(assert (= var3311!1 (str.++ var3311 "]: ")))
(assert true)
(define-const var3768 String (append/672562846 var1291 var1750)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var1291!1 String)
(assert (= var1291!1 (str.++ var1291 var1750)))
(assert true)
(define-const var3031 String (toString/-2075883882 var3768)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1292 Int (getIndex/-2136393185 var2615)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1010 var3031 var1292)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1010!1 var3430)
(declare-const var3031!1 String)
(declare-const var1292!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3430-to-var969 var1010!1) (cast-from-var3983-to-var969 var2725))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1010!2 var3430)
(declare-const var2725!1 var3983)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2239-to-var3983=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3983-to-var969=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var3430-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3430-to-var969=([java.text.ParseException], java.lang.Throwable)}
; {var57=r1, var2627=null_type, var3049=java.text.ParsePosition, var2615=r0, var2239=java.lang.IndexOutOfBoundsException, var3876=$r45, var3983=java.lang.RuntimeException, var2725=r49, var3569=$r69, var174=$r34, var1701=$r35, var2006=$r36, var2082=$r50, var2022=r51, var969=java.lang.Throwable, var1747=$r43, var1750=r52, var3344=$z9, var3430=java.text.ParseException, var1010=$r72, var3616=$r71, var3251=$r55, var3311=$r56, var1291=$r57, var3768=$r58, var3031=$r59, var1292=$i31}
; {r1=var57, null_type=var2627, java.text.ParsePosition=var3049, r0=var2615, java.lang.IndexOutOfBoundsException=var2239, $r45=var3876, java.lang.RuntimeException=var3983, r49=var2725, $r69=var3569, $r34=var174, $r35=var1701, $r36=var2006, $r50=var2082, r51=var2022, java.lang.Throwable=var969, $r43=var1747, r52=var1750, $z9=var3344, java.text.ParseException=var3430, $r72=var1010, $r71=var3616, $r55=var3251, $r56=var3311, $r57=var1291, $r58=var3768, $r59=var3031, $i31=var1292}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7