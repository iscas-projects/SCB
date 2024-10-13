(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3870 0)
(declare-sort var274 0)
(declare-sort var2759 0)
(declare-sort var1017 0)
(declare-sort var449 0)
(declare-sort var3797 0)
(declare-sort var2768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2759-to-var1017 (var2759) var1017)
(declare-fun getMessage/849299655 (var449) String)
(declare-fun cast-from-var1017-to-var449 (var1017) var449)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3797) ClassObject)
(declare-fun cast-from-var1017-to-var3797 (var1017) var3797)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2768-init () var2768)
(declare-fun getIndex/-2136393185 (var274) Int)
(declare-fun <init>/1495607482 (var2768 String Int) void)
(declare-fun initCause/2003336360 (var449 var449) var449)
(declare-fun cast-from-var2768-to-var449 (var2768) var449)
(declare-const null-String String)
(declare-const null-var274 var274)
(declare-const null-var2759 var2759)
(declare-const var263 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var263 null-String)))
(declare-const var10 var274) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var10 null-var274)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1913 var2759) ; Statement: $r44 := @caughtexception 
(assert (not (= var1913 null-var2759)))
(define-const var3851 var1017 (cast-from-var2759-to-var1017 var1913)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var263 null-String)))) ; Negate: Cond: r1 != null  
(define-const var1845 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var1559 String var1845) ; Statement: r51 = $r50 
(assert true)
(define-const var2928 String (getMessage/849299655 (cast-from-var1017-to-var449 var3851))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3080 String var2928) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var2928 null-String)) ; Cond: $r43 == null 
(define-const var458 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var458)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var458!1 String)
(assert (= var458!1 ""))
(assert true)
(define-const var1944 String (append/672562846 var458!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var458!2 String)
(assert (= var458!2 (str.++ var458!1 "(")))
(assert true)
(define-const var3255 ClassObject (getClass/1258963082 (cast-from-var1017-to-var3797 var3851))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var758 String (getName/-1958580599 var3255)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2914 String (append/672562846 var1944 var758)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1944!1 String)
(assert (= var1944!1 (str.++ var1944 var758)))
(assert true)
(define-const var3136 String (append/672562846 var2914 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2914!1 String)
(assert (= var2914!1 (str.++ var2914 ")")))
(assert true)
(define-const var3080!1 String (toString/-2075883882 var3136)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3304 var2768 var2768-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3898 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3898)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3898!1 String)
(assert (= var3898!1 ""))
(assert true)
(define-const var1665 String (append/672562846 var3898!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3898!2 String)
(assert (= var3898!2 (str.++ var3898!1 "Failed to parse date [")))
(assert true)
(define-const var3595 String (append/672562846 var1665 var1559)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var1665!1 String)
(assert (= var1665!1 (str.++ var1665 var1559)))
(assert true)
(define-const var2563 String (append/672562846 var3595 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 "]: ")))
(assert true)
(define-const var3941 String (append/672562846 var2563 var3080!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var2563!1 String)
(assert (= var2563!1 (str.++ var2563 var3080!1)))
(assert true)
(define-const var1077 String (toString/-2075883882 var3941)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var55 Int (getIndex/-2136393185 var10)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var3304 var1077 var55)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var3304!1 var2768)
(declare-const var1077!1 String)
(declare-const var55!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2768-to-var449 var3304!1) (cast-from-var1017-to-var449 var3851))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var3304!2 var2768)
(declare-const var3851!1 var1017)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2759-to-var1017=([java.lang.NumberFormatException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1017-to-var449=([java.lang.RuntimeException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1017-to-var3797=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2768-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2768-to-var449=([java.text.ParseException], java.lang.Throwable)}
; {var263=r1, var3870=null_type, var274=java.text.ParsePosition, var10=r0, var2759=java.lang.NumberFormatException, var1913=$r44, var1017=java.lang.RuntimeException, var3851=r49, var1845=$r50, var1559=r51, var449=java.lang.Throwable, var2928=$r43, var3080=r52, var458=$r70, var1944=$r40, var3797=java.lang.Object, var3255=$r38, var758=$r39, var2914=$r41, var3136=$r42, var2768=java.text.ParseException, var3304=$r72, var3898=$r71, var1665=$r55, var3595=$r56, var2563=$r57, var3941=$r58, var1077=$r59, var55=$i31}
; {r1=var263, null_type=var3870, java.text.ParsePosition=var274, r0=var10, java.lang.NumberFormatException=var2759, $r44=var1913, java.lang.RuntimeException=var1017, r49=var3851, $r50=var1845, r51=var1559, java.lang.Throwable=var449, $r43=var2928, r52=var3080, $r70=var458, $r40=var1944, java.lang.Object=var3797, $r38=var3255, $r39=var758, $r41=var2914, $r42=var3136, java.text.ParseException=var2768, $r72=var3304, $r71=var3898, $r55=var1665, $r56=var3595, $r57=var2563, $r58=var3941, $r59=var1077, $i31=var55}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7