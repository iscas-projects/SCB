(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3154 0)
(declare-sort var3208 0)
(declare-sort var3248 0)
(declare-sort var2464 0)
(declare-sort var2318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3208-init () var3208)
(declare-fun <init>/-201242697 (var3208) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3248_isWhitespace/-755916491 (Int) Bool)
(declare-fun var2464-init () var2464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var2318_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var2464 String Int) void)
(declare-const null-String String)
(declare-const var1401 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1401 null-String)))
(declare-const var2348 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var2348 null-String)))
(define-const var3278 var3208 var3208-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3278)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var3278!1 var3208)
(define-const var1003 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var3004 Int (length/-134980193 var1401)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2197 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var2197 var3004))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var1401) var2197) (<= 0 var2197))))
(define-const var1003!1 Int (charAt/698050440 var1401 var2197)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2974 Bool (var3248_isWhitespace/-755916491 var1003!1)) ; Statement: $z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3) 
 ; Statement: if $z5 != 0 goto i4 = i4 + 1 
(assert (not (= (ite var2974 1 0) 0))) ; Cond: $z5 != 0 
(define-const var2197!1 Int (+ var2197 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var2197!1 var3004)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (= var2197!1 var3004))) ; Cond: i4 != i0 
(define-const var3979 Int var2197!1) ; Statement: i1 = i4 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var2197!1 var3004)) ; Cond: i4 >= i0 
 ; Statement: if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4) 
(assert (not (not (= var3979 var2197!1)))) ; Negate: Cond: i1 != i4  
(define-const var3392 var2464 var2464-init) ; Statement: $r52 = new java.text.ParseException 
(define-const var3799 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3799)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3799!1 String)
(assert (= var3799!1 ""))
(assert true)
(define-const var337 String (append/672562846 var3799!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ") 
(declare-const var3799!2 String)
(assert (= var3799!2 (str.++ var3799!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")))
(define-const var507 String (String_valueOf/-371898945 var1003!1)) ; Statement: $r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3) 
(define-const var3109 String (var2318_jQuote/1315253176 var507)) ; Statement: $r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54) 
(assert true)
(define-const var1249 String (append/672562846 var337 var3109)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var337!1 String)
(assert (= var337!1 (str.++ var337 var3109)))
(assert true)
(define-const var163 String (append/672562846 var1249 " at position ")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var1249!1 String)
(assert (= var1249!1 (str.++ var1249 " at position ")))
(assert true)
(define-const var724 String (append/-1001720160 var163 var2197!1)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var163!1 String)
(assert (str.prefixof var163 var163!1))
(assert true)
(define-const var1676 String (append/672562846 var724 ".")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var724!1 String)
(assert (= var724!1 (str.++ var724 ".")))
(assert true)
(define-const var2407 String (toString/-2075883882 var1676)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var3392 var2407 var2197!1)) ; Statement: specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4) 

(declare-const var3392!1 var2464)
(declare-const var2407!1 String)
(declare-const var2197!2 Int)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var3208-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3248_isWhitespace/-755916491=([char], boolean), var2464-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var2318_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var1401=r1, var3154=null_type, var2348=r35, var3208=java.util.HashMap, var3278=$r0, var1003=c3, var3004=i0, var2197=i4, var3248=java.lang.Character, var2974=$z5, var3979=i1, var2464=java.text.ParseException, var3392=$r52, var3799=$r53, var337=$r56, var507=$r54, var2318=freemarker.template.utility.StringUtil, var3109=$r55, var1249=$r57, var163=$r58, var724=$r59, var1676=$r60, var2407=$r61}
; {r1=var1401, null_type=var3154, r35=var2348, java.util.HashMap=var3208, $r0=var3278, c3=var1003, i0=var3004, i4=var2197, java.lang.Character=var3248, $z5=var2974, i1=var3979, java.text.ParseException=var2464, $r52=var3392, $r53=var3799, $r56=var337, $r54=var507, freemarker.template.utility.StringUtil=var2318, $r55=var3109, $r57=var1249, $r58=var163, $r59=var724, $r60=var1676, $r61=var2407}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z5 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>(c3);	if $z5 != 0 goto i4 = i4 + 1;	i4 = i4 + 1;	goto [?= (branch)];	if i4 >= i0 goto (branch);	if i4 != i0 goto i1 = i4;	i1 = i4;	if i4 >= i0 goto (branch);	if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4);	$r52 = new java.text.ParseException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ");	$r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3);	$r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4);	throw $r52
;block_num 10