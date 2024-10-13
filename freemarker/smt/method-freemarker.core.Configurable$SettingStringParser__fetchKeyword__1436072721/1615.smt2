(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var2436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fetchWord/-91357450 (var3134) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2436-init () var2436)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/833573775 (var2436 String Int Int) void)
(declare-const null-var3134 var3134)
(declare-const var3127 var3134) ; Statement: r0 := @this: freemarker.core.Configurable$SettingStringParser 
(assert (not (= var3127 null-var3134)))
(assert true)
(define-const var622 String (fetchWord/-91357450 var3127)) ; Statement: r1 = specialinvoke r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String fetchWord()>() 
(assert true)
(define-const var3478 Bool (startsWith/-1785782452 var622 "\u0027")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\'") 
 ; Statement: if $z0 != 0 goto $r2 = new freemarker.core.ParseException 
(assert (not (= (ite var3478 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3556 var2436 var2436-init) ; Statement: $r2 = new freemarker.core.ParseException 
(define-const var3432 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3432)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3432!1 String)
(assert (= var3432!1 ""))
(assert true)
(define-const var3436 String (append/672562846 var3432!1 "Keyword expected, but a string value found: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Keyword expected, but a string value found: ") 
(declare-const var3432!2 String)
(assert (= var3432!2 (str.++ var3432!1 "Keyword expected, but a string value found: ")))
(assert true)
(define-const var939 String (append/672562846 var3436 var622)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3436!1 String)
(assert (= var3436!1 (str.++ var3436 var622)))
(assert true)
(define-const var830 String (toString/-2075883882 var939)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/833573775 var3556 var830 0 0)) ; Statement: specialinvoke $r2.<freemarker.core.ParseException: void <init>(java.lang.String,int,int)>($r6, 0, 0) 

(declare-const var3556!1 var2436)
(declare-const var830!1 String)
(declare-const var854 Int)
(declare-const var854!1 Int)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {fetchWord/-91357450=([freemarker.core.Configurable$SettingStringParser], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2436-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/833573775=([freemarker.core.ParseException, java.lang.String, int, int], void)}
; {var3134=freemarker.core.Configurable$SettingStringParser, var3127=r0, var622=r1, var3478=$z0, var2436=freemarker.core.ParseException, var3556=$r2, var3432=$r3, var3436=$r4, var939=$r5, var830=$r6, var854=0}
; {freemarker.core.Configurable$SettingStringParser=var3134, r0=var3127, r1=var622, $z0=var3478, freemarker.core.ParseException=var2436, $r2=var3556, $r3=var3432, $r4=var3436, $r5=var939, $r6=var830, 0=var854}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.Configurable$SettingStringParser;	r1 = specialinvoke r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String fetchWord()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\'");	if $z0 != 0 goto $r2 = new freemarker.core.ParseException;	$r2 = new freemarker.core.ParseException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Keyword expected, but a string value found: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<freemarker.core.ParseException: void <init>(java.lang.String,int,int)>($r6, 0, 0);	throw $r2
;block_num 2