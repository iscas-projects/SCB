(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3287 0)
(declare-sort var1642 0)
(declare-sort var99 0)
(declare-sort var663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1642-init () var1642)
(declare-fun <init>/-201242697 (var1642) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var99-init () var99)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var663_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var99 String Int) void)
(declare-const null-String String)
(declare-const var3836 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3836 null-String)))
(declare-const var1176 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var1176 null-String)))
(define-const var2276 var1642 var1642-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2276)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var2276!1 var1642)
(define-const var1476 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var2093 Int (length/-134980193 var3836)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3427 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var3427 var2093)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (= var3427 var2093))) ; Cond: i4 != i0 
(define-const var3916 Int var3427) ; Statement: i1 = i4 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var3427 var2093)) ; Cond: i4 >= i0 
 ; Statement: if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4) 
(assert (not (not (= var3916 var3427)))) ; Negate: Cond: i1 != i4  
(define-const var1147 var99 var99-init) ; Statement: $r52 = new java.text.ParseException 
(define-const var2932 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2932)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2932!1 String)
(assert (= var2932!1 ""))
(assert true)
(define-const var452 String (append/672562846 var2932!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ") 
(declare-const var2932!2 String)
(assert (= var2932!2 (str.++ var2932!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")))
(define-const var3053 String (String_valueOf/-371898945 var1476)) ; Statement: $r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3) 
(define-const var625 String (var663_jQuote/1315253176 var3053)) ; Statement: $r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54) 
(assert true)
(define-const var3557 String (append/672562846 var452 var625)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var452!1 String)
(assert (= var452!1 (str.++ var452 var625)))
(assert true)
(define-const var466 String (append/672562846 var3557 " at position ")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var3557!1 String)
(assert (= var3557!1 (str.++ var3557 " at position ")))
(assert true)
(define-const var1030 String (append/-1001720160 var466 var3427)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var466!1 String)
(assert (str.prefixof var466 var466!1))
(assert true)
(define-const var121 String (append/672562846 var1030 ".")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1030!1 String)
(assert (= var1030!1 (str.++ var1030 ".")))
(assert true)
(define-const var891 String (toString/-2075883882 var121)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var1147 var891 var3427)) ; Statement: specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4) 

(declare-const var1147!1 var99)
(declare-const var891!1 String)
(declare-const var3427!1 Int)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var1642-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), var99-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var663_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var3836=r1, var3287=null_type, var1176=r35, var1642=java.util.HashMap, var2276=$r0, var1476=c3, var2093=i0, var3427=i4, var3916=i1, var99=java.text.ParseException, var1147=$r52, var2932=$r53, var452=$r56, var3053=$r54, var663=freemarker.template.utility.StringUtil, var625=$r55, var3557=$r57, var466=$r58, var1030=$r59, var121=$r60, var891=$r61}
; {r1=var3836, null_type=var3287, r35=var1176, java.util.HashMap=var1642, $r0=var2276, c3=var1476, i0=var2093, i4=var3427, i1=var3916, java.text.ParseException=var99, $r52=var1147, $r53=var2932, $r56=var452, $r54=var3053, freemarker.template.utility.StringUtil=var663, $r55=var625, $r57=var3557, $r58=var466, $r59=var1030, $r60=var121, $r61=var891}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i4 != i0 goto i1 = i4;	i1 = i4;	if i4 >= i0 goto (branch);	if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4);	$r52 = new java.text.ParseException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ");	$r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3);	$r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4);	throw $r52
;block_num 7