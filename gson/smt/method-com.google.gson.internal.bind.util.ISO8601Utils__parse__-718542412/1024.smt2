(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var675 0)
(declare-sort var217 0)
(declare-sort var3550 0)
(declare-sort var3766 0)
(declare-sort var2853 0)
(declare-sort var3943 0)
(declare-sort var321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3550-to-var3766 (var3550) var3766)
(declare-fun getMessage/849299655 (var2853) String)
(declare-fun cast-from-var3766-to-var2853 (var3766) var2853)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3943) ClassObject)
(declare-fun cast-from-var3766-to-var3943 (var3766) var3943)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var321-init () var321)
(declare-fun getIndex/-2136393185 (var217) Int)
(declare-fun <init>/1495607482 (var321 String Int) void)
(declare-fun initCause/2003336360 (var2853 var2853) var2853)
(declare-fun cast-from-var321-to-var2853 (var321) var2853)
(declare-const null-String String)
(declare-const null-var217 var217)
(declare-const null-var3550 var3550)
(declare-const var2741 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2741 null-String)))
(declare-const var1543 var217) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1543 null-var217)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3245 var3550) ; Statement: $r44 := @caughtexception 
(assert (not (= var3245 null-var3550)))
(define-const var3361 var3766 (cast-from-var3550-to-var3766 var3245)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var2741 null-String)))) ; Negate: Cond: r1 != null  
(define-const var2043 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var862 String var2043) ; Statement: r51 = $r50 
(assert true)
(define-const var3761 String (getMessage/849299655 (cast-from-var3766-to-var2853 var3361))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var2614 String var3761) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var3761 null-String)) ; Cond: $r43 == null 
(define-const var3413 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3413)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3413!1 String)
(assert (= var3413!1 ""))
(assert true)
(define-const var2656 String (append/672562846 var3413!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3413!2 String)
(assert (= var3413!2 (str.++ var3413!1 "(")))
(assert true)
(define-const var1718 ClassObject (getClass/1258963082 (cast-from-var3766-to-var3943 var3361))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1287 String (getName/-1958580599 var1718)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2710 String (append/672562846 var2656 var1287)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var2656!1 String)
(assert (= var2656!1 (str.++ var2656 var1287)))
(assert true)
(define-const var2824 String (append/672562846 var2710 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2710!1 String)
(assert (= var2710!1 (str.++ var2710 ")")))
(assert true)
(define-const var2614!1 String (toString/-2075883882 var2824)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2463 var321 var321-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var796 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var796)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var796!1 String)
(assert (= var796!1 ""))
(assert true)
(define-const var1482 String (append/672562846 var796!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var796!2 String)
(assert (= var796!2 (str.++ var796!1 "Failed to parse date [")))
(assert true)
(define-const var1293 String (append/672562846 var1482 var862)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var1482!1 String)
(assert (= var1482!1 (str.++ var1482 var862)))
(assert true)
(define-const var1504 String (append/672562846 var1293 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 "]: ")))
(assert true)
(define-const var1222 String (append/672562846 var1504 var2614!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var1504!1 String)
(assert (= var1504!1 (str.++ var1504 var2614!1)))
(assert true)
(define-const var3071 String (toString/-2075883882 var1222)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1509 Int (getIndex/-2136393185 var1543)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2463 var3071 var1509)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2463!1 var321)
(declare-const var3071!1 String)
(declare-const var1509!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var321-to-var2853 var2463!1) (cast-from-var3766-to-var2853 var3361))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2463!2 var321)
(declare-const var3361!1 var3766)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3550-to-var3766=([java.lang.NumberFormatException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3766-to-var2853=([java.lang.RuntimeException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3766-to-var3943=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var321-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var321-to-var2853=([java.text.ParseException], java.lang.Throwable)}
; {var2741=r1, var675=null_type, var217=java.text.ParsePosition, var1543=r0, var3550=java.lang.NumberFormatException, var3245=$r44, var3766=java.lang.RuntimeException, var3361=r49, var2043=$r50, var862=r51, var2853=java.lang.Throwable, var3761=$r43, var2614=r52, var3413=$r70, var2656=$r40, var3943=java.lang.Object, var1718=$r38, var1287=$r39, var2710=$r41, var2824=$r42, var321=java.text.ParseException, var2463=$r72, var796=$r71, var1482=$r55, var1293=$r56, var1504=$r57, var1222=$r58, var3071=$r59, var1509=$i31}
; {r1=var2741, null_type=var675, java.text.ParsePosition=var217, r0=var1543, java.lang.NumberFormatException=var3550, $r44=var3245, java.lang.RuntimeException=var3766, r49=var3361, $r50=var2043, r51=var862, java.lang.Throwable=var2853, $r43=var3761, r52=var2614, $r70=var3413, $r40=var2656, java.lang.Object=var3943, $r38=var1718, $r39=var1287, $r41=var2710, $r42=var2824, java.text.ParseException=var321, $r72=var2463, $r71=var796, $r55=var1482, $r56=var1293, $r57=var1504, $r58=var1222, $r59=var3071, $i31=var1509}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7