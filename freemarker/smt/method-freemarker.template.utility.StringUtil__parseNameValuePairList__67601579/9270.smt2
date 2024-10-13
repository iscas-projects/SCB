(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1218 0)
(declare-sort var173 0)
(declare-sort var3508 0)
(declare-sort var162 0)
(declare-sort var1302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var173-init () var173)
(declare-fun <init>/-201242697 (var173) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3508_isLetterOrDigit/927074608 (Int) Bool)
(declare-fun var162-init () var162)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun var1302_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var162 String Int) void)
(declare-const null-String String)
(declare-const var3565 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3565 null-String)))
(declare-const var936 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var936 null-String)))
(define-const var2186 var173 var173-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2186)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var2186!1 var173)
(define-const var3043 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var856 Int (length/-134980193 var3565)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2534 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var2534 var856)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (= var2534 var856))) ; Cond: i4 != i0 
(define-const var2543 Int var2534) ; Statement: i1 = i4 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (not (>= var2534 var856))) ; Negate: Cond: i4 >= i0  
(assert (and true (and (> (str.len var3565) var2534) (<= 0 var2534))))
(define-const var3043!1 Int (charAt/698050440 var3565 var2534)) ; Statement: c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var1742 Bool (var3508_isLetterOrDigit/927074608 var3043!1)) ; Statement: $z4 = staticinvoke <java.lang.Character: boolean isLetterOrDigit(char)>(c3) 
 ; Statement: if $z4 != 0 goto i4 = i4 + 1 
(assert (not (not (= (ite var1742 1 0) 0)))) ; Negate: Cond: $z4 != 0  
 ; Statement: if c3 == 95 goto i4 = i4 + 1 
(assert (not (= var3043!1 95))) ; Negate: Cond: c3 == 95  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4) 
(assert (not (not (= var2543 var2534)))) ; Negate: Cond: i1 != i4  
(define-const var3237 var162 var162-init) ; Statement: $r52 = new java.text.ParseException 
(define-const var186 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var186)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var186!1 String)
(assert (= var186!1 ""))
(assert true)
(define-const var2241 String (append/672562846 var186!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ") 
(declare-const var186!2 String)
(assert (= var186!2 (str.++ var186!1 "Expecting letter, digit or \u0022_\u0022 here, (the first character of the key) but found ")))
(define-const var2182 String (String_valueOf/-371898945 var3043!1)) ; Statement: $r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3) 
(define-const var602 String (var1302_jQuote/1315253176 var2182)) ; Statement: $r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54) 
(assert true)
(define-const var3678 String (append/672562846 var2241 var602)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var2241!1 String)
(assert (= var2241!1 (str.++ var2241 var602)))
(assert true)
(define-const var3323 String (append/672562846 var3678 " at position ")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var3678!1 String)
(assert (= var3678!1 (str.++ var3678 " at position ")))
(assert true)
(define-const var245 String (append/-1001720160 var3323 var2534)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3323!1 String)
(assert (str.prefixof var3323 var3323!1))
(assert true)
(define-const var1126 String (append/672562846 var245 ".")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var245!1 String)
(assert (= var245!1 (str.++ var245 ".")))
(assert true)
(define-const var3553 String (toString/-2075883882 var1126)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var3237 var3553 var2534)) ; Statement: specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4) 

(declare-const var3237!1 var162)
(declare-const var3553!1 String)
(declare-const var2534!1 Int)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {var173-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3508_isLetterOrDigit/927074608=([char], boolean), var162-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_valueOf/-371898945=([char], java.lang.String), var1302_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var3565=r1, var1218=null_type, var936=r35, var173=java.util.HashMap, var2186=$r0, var3043=c3, var856=i0, var2534=i4, var2543=i1, var3508=java.lang.Character, var1742=$z4, var162=java.text.ParseException, var3237=$r52, var186=$r53, var2241=$r56, var2182=$r54, var1302=freemarker.template.utility.StringUtil, var602=$r55, var3678=$r57, var3323=$r58, var245=$r59, var1126=$r60, var3553=$r61}
; {r1=var3565, null_type=var1218, r35=var936, java.util.HashMap=var173, $r0=var2186, c3=var3043, i0=var856, i4=var2534, i1=var2543, java.lang.Character=var3508, $z4=var1742, java.text.ParseException=var162, $r52=var3237, $r53=var186, $r56=var2241, $r54=var2182, freemarker.template.utility.StringUtil=var1302, $r55=var602, $r57=var3678, $r58=var3323, $r59=var245, $r60=var1126, $r61=var3553}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i4 != i0 goto i1 = i4;	i1 = i4;	if i4 >= i0 goto (branch);	c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$z4 = staticinvoke <java.lang.Character: boolean isLetterOrDigit(char)>(c3);	if $z4 != 0 goto i4 = i4 + 1;	if c3 == 95 goto i4 = i4 + 1;	goto [?= (branch)];	if i1 != i4 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i1, i4);	$r52 = new java.text.ParseException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expecting letter, digit or \"_\" here, (the first character of the key) but found ");	$r54 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c3);	$r55 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r54);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.text.ParseException: void <init>(java.lang.String,int)>($r61, i4);	throw $r52
;block_num 10