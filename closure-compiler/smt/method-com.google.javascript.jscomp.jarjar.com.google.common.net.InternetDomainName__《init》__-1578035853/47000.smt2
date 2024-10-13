(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2640 0)
(declare-sort var2170 0)
(declare-sort var539 0)
(declare-sort var1788 0)
(declare-sort var2046 0)
(declare-sort var2728 0)
(declare-sort var2930 0)
(declare-sort var2410 0)
(declare-sort var3999 0)
(declare-sort var674 0)
(declare-sort var2985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var539) void)
(declare-fun cast-from-var2640-to-var539 (var2640) var539)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun publicSuffixIndexCache/1824947533 (var2640) Int)
(declare-fun registrySuffixIndexCache/1824947533 (var2640) Int)
(declare-fun replaceFrom/-901080460 (var1788 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2046_toLowerCase/1634554405 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2728_checkArgument/1031231112 (Bool String var539) void)
(declare-fun cast-from-String-to-var539 (String) var539)
(declare-fun name/1824947533 (var2640) String)
(declare-fun split/-545181050 (var2930 String) var2410)
(declare-fun var3999_copyOf/-499523795 (var2410) var3999)
(declare-fun parts/1824947533 (var2640) var3999)
(declare-fun size/-481607991 (var674) Int)
(declare-fun cast-from-var3999-to-var674 (var3999) var674)
(declare-fun var2640_validateSyntax/628218235 (var2985) Bool)
(declare-fun cast-from-var3999-to-var2985 (var3999) var2985)
(declare-const null-var2640 var2640)
(declare-const null-String String)
(declare-const var2640-DOTS_MATCHER var1788)
(declare-const var2640-DOT_SPLITTER var2930)
(declare-const var3390 var2640) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 
(assert (not (= var3390 null-var2640)))
(declare-const var3288 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3288 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2640-to-var539 var3390))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3390!1 var2640)
(define-const var1959 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i5 = (int) -2 
(declare-const var3390!2 var2640)
(assert (not (= var3390!2 null-var2640)))
(assert (= (publicSuffixIndexCache/1824947533 var3390!2) var1959)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5 
(define-const var3101 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
(declare-const var3390!3 var2640)
(assert (not (= var3390!3 null-var2640)))
(assert (= (registrySuffixIndexCache/1824947533 var3390!3) var3101)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7 
(define-const var2582 var1788 var2640-DOTS_MATCHER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER> 
(assert true)
(define-const var3472 String (replaceFrom/-901080460 var2582 (cast-from-String-to-String var3288) 46)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46) 
(define-const var1408 String (var2046_toLowerCase/1634554405 var3472)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2) 
(assert true)
(define-const var3515 Bool (endsWith/985337093 var1408 ".")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert (= (ite var3515 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var241 Int (length/-134980193 var1408)) ; Statement: $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 253 goto $z2 = 0 
(assert (> var241 253)) ; Cond: $i0 > 253 
(define-const var831 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2728_checkArgument/1031231112 var831 "Domain name too long: \u0027%s\u0027:" (cast-from-String-to-var539 var1408))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9) 

(declare-const var831!1 Bool)
(declare-const var1520 String)
(declare-const var1408!1 String)
(declare-const var3390!4 var2640)
(assert (not (= var3390!4 null-var2640)))
(assert (= (name/1824947533 var3390!4) var1408!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9 
(define-const var229 var2930 var2640-DOT_SPLITTER) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var943 var2410 (split/-545181050 var229 (cast-from-String-to-String var1408!1))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9) 
(define-const var775 var3999 (var3999_copyOf/-499523795 var943)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4) 
(declare-const var3390!5 var2640)
(assert (not (= var3390!5 null-var2640)))
(assert (= (parts/1824947533 var3390!5) var775)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5 
(define-const var3890 var3999 (parts/1824947533 var3390!5)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(assert true)
(define-const var316 Int (size/-481607991 (cast-from-var3999-to-var674 var3890))) ; Statement: $i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>() 
 ; Statement: if $i1 > 127 goto $z3 = 0 
(assert (> var316 127)) ; Cond: $i1 > 127 
(define-const var2136 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var2728_checkArgument/1031231112 var2136 "Domain has too many parts: \u0027%s\u0027" (cast-from-String-to-var539 var1408!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9) 

(declare-const var2136!1 Bool)
(declare-const var3003 String)
(declare-const var1408!2 String)
(define-const var2060 var3999 (parts/1824947533 var3390!5)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(define-const var2733 Bool (var2640_validateSyntax/628218235 (cast-from-var3999-to-var2985 var2060))) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7) 
;(assert (var2728_checkArgument/1031231112 var2733 "Not a valid domain name: \u0027%s\u0027" (cast-from-String-to-var539 var1408!2))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9) 

(declare-const var2733!1 Bool)
(declare-const var1500 String)
(declare-const var1408!3 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2640-to-var539=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.Object), cast-from-Int-to-Int=([int], int), publicSuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), registrySuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), replaceFrom/-901080460=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, char], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2046_toLowerCase/1634554405=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), var2728_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var539=([java.lang.String], java.lang.Object), name/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.String), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), var3999_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), parts/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), size/-481607991=([java.util.AbstractCollection], int), cast-from-var3999-to-var674=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), var2640_validateSyntax/628218235=([java.util.List], boolean), cast-from-var3999-to-var2985=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List)}
; {var2640=com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName, var3390=r0, var3288=r8, var2170=null_type, var539=java.lang.Object, var1959=$i5, var3101=$i7, var1788=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2582=$r1, var3472=$r2, var2046=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var1408=r9, var3515=$z0, var241=$i0, var831=$z2, var2728=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1520="Domain name too long: \'%s\':", var2930=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var229=$r3, var2410=java.lang.Iterable, var943=$r4, var3999=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var775=$r5, var3890=$r6, var674=java.util.AbstractCollection, var316=$i1, var2136=$z3, var3003="Domain has too many parts: \'%s\'", var2060=$r7, var2985=java.util.List, var2733=$z1, var1500="Not a valid domain name: \'%s\'"}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName=var2640, r0=var3390, r8=var3288, null_type=var2170, java.lang.Object=var539, $i5=var1959, $i7=var3101, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1788, $r1=var2582, $r2=var3472, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var2046, r9=var1408, $z0=var3515, $i0=var241, $z2=var831, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2728, "Domain name too long: \'%s\':"=var1520, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var2930, $r3=var229, java.lang.Iterable=var2410, $r4=var943, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3999, $r5=var775, $r6=var3890, java.util.AbstractCollection=var674, $i1=var316, $z3=var2136, "Domain has too many parts: \'%s\'"=var3003, $r7=var2060, java.util.List=var2985, $z1=var2733, "Not a valid domain name: \'%s\'"=var1500}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName;	r8 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i5 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5;	$i7 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46);	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2);	$z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>();	$i0 = virtualinvoke r9.<java.lang.String: int length()>();	if $i0 > 253 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9;	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5;	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>();	if $i1 > 127 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9);	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9);	return
;block_num 6