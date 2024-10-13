(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var48 0)
(declare-sort var3950 0)
(declare-sort var1064 0)
(declare-sort var3691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var48-init () var48)
(declare-fun <init>/-201242697 (var48) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3950_isLetterOrDigit/927074608 (Int) Bool)
(declare-fun var1064-init () var1064)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var3691_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var1064 String Int) void)
(declare-const null-String String)
(declare-const var434 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var434 null-String)))
(declare-const var2820 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var2820 null-String)))
(define-const var2461 var48 var48-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2461)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var2461!1 var48)
(define-const var2231 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var2382 Int (length/-134980193 var434)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1021 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1021 var2382)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (= var1021 var2382))) ; Cond: i4 != i0 
(define-const var1288 Int var1021) ; Statement: i1 = i4 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var1021 var2382))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var434) var1021) (<= 0 var1021))))
(define-const var2231!1 Int (charAt/698050440 var434 var1021)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2974 Bool (var3950_isLetterOrDigit/927074608 var2231!1)) ; Statement: $z4 = staticinvoke <java.lang.Character: boolean isLetterOrDigit(char)>(c3) 
 ; Statement: if $z4 != 0 goto i4 = i4 + 1 
(assert (not (= (ite var2974 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1021!1 Int (+ var1021 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1021!1 var2382)) ; Cond: i4 >= i0 
 ; Statement: if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4) 
(assert (not (not (= var1288 var1021!1)))) ; Negate: Cond: i1 != i4  
(define-const var1892 var1064 var1064-init) ; Statement: $r52 = new java.text.ParseException 
(define-const var1084 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1084)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1084!1 String)
(assert (= var1084!1 ""))
(assert true)
(define-const var3609 String (append/672562846 var1084!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ") 
(declare-const var1084!2 String)
(assert (= var1084!2 (str.++ var1084!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")))
(define-const var1558 String (String_valueOf/-371898945 var2231!1)) ; Statement: $r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3) 
(define-const var2159 String (var3691_jQuote/1315253176 var1558)) ; Statement: $r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54) 
(assert true)
(define-const var3556 String (append/672562846 var3609 var2159)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var3609!1 String)
(assert (= var3609!1 (str.++ var3609 var2159)))
(assert true)
(define-const var3011 String (append/672562846 var3556 " at position ")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var3556!1 String)
(assert (= var3556!1 (str.++ var3556 " at position ")))
(assert true)
(define-const var1062 String (append/-1001720160 var3011 var1021!1)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3011!1 String)
(assert (str.prefixof var3011 var3011!1))
(assert true)
(define-const var1939 String (append/672562846 var1062 ".")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 ".")))
(assert true)
(define-const var3777 String (toString/-2075883882 var1939)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var1892 var3777 var1021!1)) ; Statement: specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4) 

(declare-const var1892!1 var1064)
(declare-const var3777!1 String)
(declare-const var1021!2 Int)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var48-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3950_isLetterOrDigit/927074608=([char], boolean), var1064-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var3691_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var434=r1, var1775=null_type, var2820=r35, var48=java.util.HashMap, var2461=$r0, var2231=c3, var2382=i0, var1021=i4, var1288=i1, var3950=java.lang.Character, var2974=$z4, var1064=java.text.ParseException, var1892=$r52, var1084=$r53, var3609=$r56, var1558=$r54, var3691=freemarker.template.utility.StringUtil, var2159=$r55, var3556=$r57, var3011=$r58, var1062=$r59, var1939=$r60, var3777=$r61}
; {r1=var434, null_type=var1775, r35=var2820, java.util.HashMap=var48, $r0=var2461, c3=var2231, i0=var2382, i4=var1021, i1=var1288, java.lang.Character=var3950, $z4=var2974, java.text.ParseException=var1064, $r52=var1892, $r53=var1084, $r56=var3609, $r54=var1558, freemarker.template.utility.StringUtil=var3691, $r55=var2159, $r57=var3556, $r58=var3011, $r59=var1062, $r60=var1939, $r61=var3777}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i4 != i0 goto i1 = i4;	i1 = i4;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z4 = staticinvoke <java.lang.Character: boolean isLetterOrDigit(char)>(c3);	if $z4 != 0 goto i4 = i4 + 1;	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i0 goto (branch);	if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4);	$r52 = new java.text.ParseException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ");	$r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3);	$r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4);	throw $r52
;block_num 10