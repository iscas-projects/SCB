(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var12 0)
(declare-sort var575 0)
(declare-sort var179 0)
(declare-sort var1729 0)
(declare-sort var423 0)
(declare-sort var210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var179-to-var1729 (var179) var1729)
(declare-fun getMessage/849299655 (var423) String)
(declare-fun cast-from-var1729-to-var423 (var1729) var423)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var210-init () var210)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIndex/-2136393185 (var575) Int)
(declare-fun <init>/1495607482 (var210 String Int) void)
(declare-fun initCause/2003336360 (var423 var423) var423)
(declare-fun cast-from-var210-to-var423 (var210) var423)
(declare-const null-String String)
(declare-const null-var575 var575)
(declare-const null-var179 var179)
(declare-const var857 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var857 null-String)))
(declare-const var2604 var575) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2604 null-var575)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var965 var179) ; Statement: $r32 := @caughtexception 
(assert (not (= var965 null-var179)))
(define-const var2703 var1729 (cast-from-var179-to-var1729 var965)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var857 null-String)))) ; Negate: Cond: r1 != null  
(define-const var3524 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var2735 String var3524) ; Statement: r51 = $r50 
(assert true)
(define-const var1343 String (getMessage/849299655 (cast-from-var1729-to-var423 var2703))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var1361 String var1343) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var1343 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var3551 Bool (isEmpty/-1285796103 var1343)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var3551 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1224 var210 var210-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var667 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var667)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var667!1 String)
(assert (= var667!1 ""))
(assert true)
(define-const var2217 String (append/672562846 var667!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var667!2 String)
(assert (= var667!2 (str.++ var667!1 "Failed to parse date [")))
(assert true)
(define-const var260 String (append/672562846 var2217 var2735)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2217!1 String)
(assert (= var2217!1 (str.++ var2217 var2735)))
(assert true)
(define-const var435 String (append/672562846 var260 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var260!1 String)
(assert (= var260!1 (str.++ var260 "]: ")))
(assert true)
(define-const var2514 String (append/672562846 var435 var1361)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var435!1 String)
(assert (= var435!1 (str.++ var435 var1361)))
(assert true)
(define-const var1440 String (toString/-2075883882 var2514)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2297 Int (getIndex/-2136393185 var2604)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1224 var1440 var2297)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1224!1 var210)
(declare-const var1440!1 String)
(declare-const var2297!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var210-to-var423 var1224!1) (cast-from-var1729-to-var423 var2703))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1224!2 var210)
(declare-const var2703!1 var1729)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var179-to-var1729=([java.lang.IllegalArgumentException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1729-to-var423=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var210-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var210-to-var423=([java.text.ParseException], java.lang.Throwable)}
; {var857=r1, var12=null_type, var575=java.text.ParsePosition, var2604=r0, var179=java.lang.IllegalArgumentException, var965=$r32, var1729=java.lang.RuntimeException, var2703=r49, var3524=$r50, var2735=r51, var423=java.lang.Throwable, var1343=$r43, var1361=r52, var3551=$z9, var210=java.text.ParseException, var1224=$r72, var667=$r71, var2217=$r55, var260=$r56, var435=$r57, var2514=$r58, var1440=$r59, var2297=$i31}
; {r1=var857, null_type=var12, java.text.ParsePosition=var575, r0=var2604, java.lang.IllegalArgumentException=var179, $r32=var965, java.lang.RuntimeException=var1729, r49=var2703, $r50=var3524, r51=var2735, java.lang.Throwable=var423, $r43=var1343, r52=var1361, $z9=var3551, java.text.ParseException=var210, $r72=var1224, $r71=var667, $r55=var2217, $r56=var260, $r57=var435, $r58=var2514, $r59=var1440, $i31=var2297}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7