(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var1433 0)
(declare-sort var138 0)
(declare-sort var1565 0)
(declare-sort var2922 0)
(declare-sort var3787 0)
(declare-sort var1899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var138-to-var1565 (var138) var1565)
(declare-fun getMessage/849299655 (var2922) String)
(declare-fun cast-from-var1565-to-var2922 (var1565) var2922)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3787) ClassObject)
(declare-fun cast-from-var1565-to-var3787 (var1565) var3787)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1899-init () var1899)
(declare-fun getIndex/-2136393185 (var1433) Int)
(declare-fun <init>/1495607482 (var1899 String Int) void)
(declare-fun initCause/2003336360 (var2922 var2922) var2922)
(declare-fun cast-from-var1899-to-var2922 (var1899) var2922)
(declare-const null-String String)
(declare-const null-var1433 var1433)
(declare-const null-var138 var138)
(declare-const var2824 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2824 null-String)))
(declare-const var932 var1433) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var932 null-var1433)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1824 var138) ; Statement: $r45 := @caughtexception 
(assert (not (= var1824 null-var138)))
(define-const var509 var1565 (cast-from-var138-to-var1565 var1824)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var2824 null-String)))) ; Negate: Cond: r1 != null  
(define-const var497 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var711 String var497) ; Statement: r51 = $r50 
(assert true)
(define-const var1278 String (getMessage/849299655 (cast-from-var1565-to-var2922 var509))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3245 String var1278) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var1278 null-String)) ; Cond: $r43 == null 
(define-const var3213 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3213)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3213!1 String)
(assert (= var3213!1 ""))
(assert true)
(define-const var1451 String (append/672562846 var3213!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3213!2 String)
(assert (= var3213!2 (str.++ var3213!1 "(")))
(assert true)
(define-const var2959 ClassObject (getClass/1258963082 (cast-from-var1565-to-var3787 var509))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var187 String (getName/-1958580599 var2959)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2663 String (append/672562846 var1451 var187)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1451!1 String)
(assert (= var1451!1 (str.++ var1451 var187)))
(assert true)
(define-const var2022 String (append/672562846 var2663 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2663!1 String)
(assert (= var2663!1 (str.++ var2663 ")")))
(assert true)
(define-const var3245!1 String (toString/-2075883882 var2022)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3817 var1899 var1899-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var2358 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2358)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2358!1 String)
(assert (= var2358!1 ""))
(assert true)
(define-const var140 String (append/672562846 var2358!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var2358!2 String)
(assert (= var2358!2 (str.++ var2358!1 "Failed to parse date [")))
(assert true)
(define-const var2697 String (append/672562846 var140 var711)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var140!1 String)
(assert (= var140!1 (str.++ var140 var711)))
(assert true)
(define-const var3217 String (append/672562846 var2697 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2697!1 String)
(assert (= var2697!1 (str.++ var2697 "]: ")))
(assert true)
(define-const var1552 String (append/672562846 var3217 var3245!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var3217!1 String)
(assert (= var3217!1 (str.++ var3217 var3245!1)))
(assert true)
(define-const var1837 String (toString/-2075883882 var1552)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3279 Int (getIndex/-2136393185 var932)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var3817 var1837 var3279)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var3817!1 var1899)
(declare-const var1837!1 String)
(declare-const var3279!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1899-to-var2922 var3817!1) (cast-from-var1565-to-var2922 var509))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var3817!2 var1899)
(declare-const var509!1 var1565)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var138-to-var1565=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1565-to-var2922=([java.lang.RuntimeException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1565-to-var3787=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1899-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1899-to-var2922=([java.text.ParseException], java.lang.Throwable)}
; {var2824=r1, var1720=null_type, var1433=java.text.ParsePosition, var932=r0, var138=java.lang.IndexOutOfBoundsException, var1824=$r45, var1565=java.lang.RuntimeException, var509=r49, var497=$r50, var711=r51, var2922=java.lang.Throwable, var1278=$r43, var3245=r52, var3213=$r70, var1451=$r40, var3787=java.lang.Object, var2959=$r38, var187=$r39, var2663=$r41, var2022=$r42, var1899=java.text.ParseException, var3817=$r72, var2358=$r71, var140=$r55, var2697=$r56, var3217=$r57, var1552=$r58, var1837=$r59, var3279=$i31}
; {r1=var2824, null_type=var1720, java.text.ParsePosition=var1433, r0=var932, java.lang.IndexOutOfBoundsException=var138, $r45=var1824, java.lang.RuntimeException=var1565, r49=var509, $r50=var497, r51=var711, java.lang.Throwable=var2922, $r43=var1278, r52=var3245, $r70=var3213, $r40=var1451, java.lang.Object=var3787, $r38=var2959, $r39=var187, $r41=var2663, $r42=var2022, java.text.ParseException=var1899, $r72=var3817, $r71=var2358, $r55=var140, $r56=var2697, $r57=var3217, $r58=var1552, $r59=var1837, $i31=var3279}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7