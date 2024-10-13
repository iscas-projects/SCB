(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3101 0)
(declare-sort var888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOrRenderDescription/860543450 (var3101) String)
(declare-fun isInJBossToolsMode/-1356736118 (var3101) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnNumber/-61493021 (var3101) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3101 var3101)
(declare-const null-var888 var888)
(declare-const var1615 var3101) ; Statement: r0 := @this: freemarker.core.ParseException 
(assert (not (= var1615 null-var3101)))
(assert true)
(define-const var3088 String (getOrRenderDescription/860543450 var1615)) ; Statement: r17 = specialinvoke r0.<freemarker.core.ParseException: java.lang.String getOrRenderDescription()>() 
(assert true)
(define-const var2089 Bool (isInJBossToolsMode/-1356736118 var1615)) ; Statement: $z0 = specialinvoke r0.<freemarker.core.ParseException: boolean isInJBossToolsMode()>() 
 ; Statement: if $z0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var2089 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1486 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1486)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1486!1 String)
(assert (= var1486!1 ""))
(assert true)
(define-const var855 String (append/672562846 var1486!1 "[col. ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[col. ") 
(declare-const var1486!2 String)
(assert (= var1486!2 (str.++ var1486!1 "[col. ")))
(define-const var1621 Int (columnNumber/-61493021 var1615)) ; Statement: $i0 = r0.<freemarker.core.ParseException: int columnNumber> 
(assert true)
(define-const var1139 String (append/-1001720160 var855 var1621)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var855!1 String)
(assert (str.prefixof var855 var855!1))
(assert true)
(define-const var3238 String (append/672562846 var1139 "] ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1139!1 String)
(assert (= var1139!1 (str.++ var1139 "] ")))
(assert true)
(define-const var280 String (toString/-2075883882 var3238)) ; Statement: r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1!1 String)
(assert (= var1!1 ""))
(assert true)
(define-const var360 String (append/672562846 var1!1 var280)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18) 
(declare-const var1!2 String)
(assert (= var1!2 (str.++ var1!1 var280)))
(assert true)
(define-const var1985 String (append/672562846 var360 var3088)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var360!1 String)
(assert (= var360!1 (str.++ var360 var3088)))
(assert true)
(define-const var1115 String (toString/-2075883882 var1985)) ; Statement: $r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3312 Int (length/-134980193 var280)) ; Statement: $i1 = virtualinvoke r18.<java.lang.String: int length()>() 
(assert (and true (and (>= var3312 0) (>= (str.len var1115) var3312))))
(define-const var3682 String (substring/850833817 var1115 var3312)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: entermonitor r0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3358 var888) ; Statement: $r16 := @caughtexception 
(assert (not (= var3358 null-var888)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r0 
(assert true) ; Non Conditional
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getOrRenderDescription/860543450=([freemarker.core.ParseException], java.lang.String), isInJBossToolsMode/-1356736118=([freemarker.core.ParseException], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnNumber/-61493021=([freemarker.core.ParseException], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3101=freemarker.core.ParseException, var1615=r0, var3088=r17, var2089=$z0, var1486=$r1, var855=$r2, var1621=$i0, var1139=$r3, var3238=$r4, var280=r18, var1=$r5, var360=$r6, var1985=$r7, var1115=$r14, var3312=$i1, var3682=$r15, var888=java.lang.Throwable, var3358=$r16}
; {freemarker.core.ParseException=var3101, r0=var1615, r17=var3088, $z0=var2089, $r1=var1486, $r2=var855, $i0=var1621, $r3=var1139, $r4=var3238, r18=var280, $r5=var1, $r6=var360, $r7=var1985, $r14=var1115, $i1=var3312, $r15=var3682, java.lang.Throwable=var888, $r16=var3358}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: freemarker.core.ParseException;	r17 = specialinvoke r0.<freemarker.core.ParseException: java.lang.String getOrRenderDescription()>();	$z0 = specialinvoke r0.<freemarker.core.ParseException: boolean isInJBossToolsMode()>();	if $z0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[col. ");	$i0 = r0.<freemarker.core.ParseException: int columnNumber>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	r18 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i1 = virtualinvoke r18.<java.lang.String: int length()>();	$r15 = virtualinvoke $r14.<java.lang.String: java.lang.String substring(int)>($i1);	entermonitor r0;	$r16 := @caughtexception;	exitmonitor r0;	throw $r16
;block_num 6