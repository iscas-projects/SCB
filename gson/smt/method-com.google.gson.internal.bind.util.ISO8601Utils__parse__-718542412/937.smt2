(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3774 0)
(declare-sort var3437 0)
(declare-sort var1624 0)
(declare-sort var1514 0)
(declare-sort var2631 0)
(declare-sort var3598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1624-to-var1514 (var1624) var1514)
(declare-fun getMessage/849299655 (var2631) String)
(declare-fun cast-from-var1514-to-var2631 (var1514) var2631)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3598-init () var3598)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIndex/-2136393185 (var3437) Int)
(declare-fun <init>/1495607482 (var3598 String Int) void)
(declare-fun initCause/2003336360 (var2631 var2631) var2631)
(declare-fun cast-from-var3598-to-var2631 (var3598) var2631)
(declare-const null-String String)
(declare-const null-var3437 var3437)
(declare-const null-var1624 var1624)
(declare-const var2987 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2987 null-String)))
(declare-const var1763 var3437) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1763 null-var3437)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1415 var1624) ; Statement: $r45 := @caughtexception 
(assert (not (= var1415 null-var1624)))
(define-const var1972 var1514 (cast-from-var1624-to-var1514 var1415)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var2987 null-String)))) ; Negate: Cond: r1 != null  
(define-const var1760 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var243 String var1760) ; Statement: r51 = $r50 
(assert true)
(define-const var2996 String (getMessage/849299655 (cast-from-var1514-to-var2631 var1972))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3780 String var2996) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var2996 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var1388 Bool (isEmpty/-1285796103 var2996)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var1388 1 0) 0)) ; Cond: $z9 == 0 
(define-const var1437 var3598 var3598-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3390 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var1173 String (append/672562846 var3390!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "Failed to parse date [")))
(assert true)
(define-const var572 String (append/672562846 var1173 var243)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var1173!1 String)
(assert (= var1173!1 (str.++ var1173 var243)))
(assert true)
(define-const var3309 String (append/672562846 var572 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var572!1 String)
(assert (= var572!1 (str.++ var572 "]: ")))
(assert true)
(define-const var2588 String (append/672562846 var3309 var3780)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var3309!1 String)
(assert (= var3309!1 (str.++ var3309 var3780)))
(assert true)
(define-const var1285 String (toString/-2075883882 var2588)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3798 Int (getIndex/-2136393185 var1763)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var1437 var1285 var3798)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var1437!1 var3598)
(declare-const var1285!1 String)
(declare-const var3798!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3598-to-var2631 var1437!1) (cast-from-var1514-to-var2631 var1972))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var1437!2 var3598)
(declare-const var1972!1 var1514)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1624-to-var1514=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1514-to-var2631=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var3598-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3598-to-var2631=([java.text.ParseException], java.lang.Throwable)}
; {var2987=r1, var3774=null_type, var3437=java.text.ParsePosition, var1763=r0, var1624=java.lang.IndexOutOfBoundsException, var1415=$r45, var1514=java.lang.RuntimeException, var1972=r49, var1760=$r50, var243=r51, var2631=java.lang.Throwable, var2996=$r43, var3780=r52, var1388=$z9, var3598=java.text.ParseException, var1437=$r72, var3390=$r71, var1173=$r55, var572=$r56, var3309=$r57, var2588=$r58, var1285=$r59, var3798=$i31}
; {r1=var2987, null_type=var3774, java.text.ParsePosition=var3437, r0=var1763, java.lang.IndexOutOfBoundsException=var1624, $r45=var1415, java.lang.RuntimeException=var1514, r49=var1972, $r50=var1760, r51=var243, java.lang.Throwable=var2631, $r43=var2996, r52=var3780, $z9=var1388, java.text.ParseException=var3598, $r72=var1437, $r71=var3390, $r55=var1173, $r56=var572, $r57=var3309, $r58=var2588, $r59=var1285, $i31=var3798}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7