(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2590 0)
(declare-sort var164 0)
(declare-sort var895 0)
(declare-sort var3209 0)
(declare-sort var3857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var164-init () var164)
(declare-fun <init>/-201242697 (var164) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var895_isWhitespace/-755916491 (Int) Bool)
(declare-fun var3209-init () var3209)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var3857_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var3209 String Int) void)
(declare-const null-String String)
(declare-const var295 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var295 null-String)))
(declare-const var3286 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var3286 null-String)))
(define-const var348 var164 var164-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var348)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var348!1 var164)
(define-const var2207 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var3237 Int (length/-134980193 var295)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1391 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var1391 var3237))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var295) var1391) (<= 0 var1391))))
(define-const var2207!1 Int (charAt/698050440 var295 var1391)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var3596 Bool (var895_isWhitespace/-755916491 var2207!1)) ; Statement: $z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3) 
 ; Statement: if $z5 != 0 goto i4 = i4 + 1 
(assert (not (not (= (ite var3596 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (= var1391 var3237))) ; Cond: i4 != i0 
(define-const var3833 Int var1391) ; Statement: i1 = i4 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1391 var3237)) ; Cond: i4 >= i0 
 ; Statement: if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4) 
(assert (not (not (= var3833 var1391)))) ; Negate: Cond: i1 != i4  
(define-const var1784 var3209 var3209-init) ; Statement: $r52 = new java.text.ParseException 
(define-const var1403 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1403)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1403!1 String)
(assert (= var1403!1 ""))
(assert true)
(define-const var2197 String (append/672562846 var1403!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ") 
(declare-const var1403!2 String)
(assert (= var1403!2 (str.++ var1403!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")))
(define-const var3455 String (String_valueOf/-371898945 var2207!1)) ; Statement: $r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3) 
(define-const var184 String (var3857_jQuote/1315253176 var3455)) ; Statement: $r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54) 
(assert true)
(define-const var2214 String (append/672562846 var2197 var184)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var2197!1 String)
(assert (= var2197!1 (str.++ var2197 var184)))
(assert true)
(define-const var1842 String (append/672562846 var2214 " at position ")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var2214!1 String)
(assert (= var2214!1 (str.++ var2214 " at position ")))
(assert true)
(define-const var318 String (append/-1001720160 var1842 var1391)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var1842!1 String)
(assert (str.prefixof var1842 var1842!1))
(assert true)
(define-const var1914 String (append/672562846 var318 ".")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var318!1 String)
(assert (= var318!1 (str.++ var318 ".")))
(assert true)
(define-const var3914 String (toString/-2075883882 var1914)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var1784 var3914 var1391)) ; Statement: specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4) 

(declare-const var1784!1 var3209)
(declare-const var3914!1 String)
(declare-const var1391!1 Int)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var164-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var895_isWhitespace/-755916491=([char], boolean), var3209-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var3857_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var295=r1, var2590=null_type, var3286=r35, var164=java.util.HashMap, var348=$r0, var2207=c3, var3237=i0, var1391=i4, var895=java.lang.Character, var3596=$z5, var3833=i1, var3209=java.text.ParseException, var1784=$r52, var1403=$r53, var2197=$r56, var3455=$r54, var3857=freemarker.template.utility.StringUtil, var184=$r55, var2214=$r57, var1842=$r58, var318=$r59, var1914=$r60, var3914=$r61}
; {r1=var295, null_type=var2590, r35=var3286, java.util.HashMap=var164, $r0=var348, c3=var2207, i0=var3237, i4=var1391, java.lang.Character=var895, $z5=var3596, i1=var3833, java.text.ParseException=var3209, $r52=var1784, $r53=var1403, $r56=var2197, $r54=var3455, freemarker.template.utility.StringUtil=var3857, $r55=var184, $r57=var2214, $r58=var1842, $r59=var318, $r60=var1914, $r61=var3914}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3);	if $z5 != 0 goto i4 = i4 + 1;	goto [?= (branch)];	if i4 != i0 goto i1 = i4;	i1 = i4;	if i4 >= i0 goto (branch);	if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4);	$r52 = new java.text.ParseException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ");	$r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3);	$r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4);	throw $r52
;block_num 9