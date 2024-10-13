(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2044 0)
(declare-sort var2036 0)
(declare-sort var3234 0)
(declare-sort var1301 0)
(declare-sort var137 0)
(declare-sort var612 0)
(declare-sort var384 0)
(declare-sort var3563 0)
(declare-sort var178 0)
(declare-sort var3411 0)
(declare-sort var1867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3234) void)
(declare-fun cast-from-var2044-to-var3234 (var2044) var3234)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun publicSuffixIndexCache/1824947533 (var2044) Int)
(declare-fun registrySuffixIndexCache/1824947533 (var2044) Int)
(declare-fun replaceFrom/-901080460 (var1301 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var137_toLowerCase/1634554405 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var612_checkArgument/1031231112 (Bool String var3234) void)
(declare-fun cast-from-String-to-var3234 (String) var3234)
(declare-fun name/1824947533 (var2044) String)
(declare-fun split/-545181050 (var384 String) var3563)
(declare-fun var178_copyOf/-499523795 (var3563) var178)
(declare-fun parts/1824947533 (var2044) var178)
(declare-fun size/-481607991 (var3411) Int)
(declare-fun cast-from-var178-to-var3411 (var178) var3411)
(declare-fun var2044_validateSyntax/628218235 (var1867) Bool)
(declare-fun cast-from-var178-to-var1867 (var178) var1867)
(declare-const null-var2044 var2044)
(declare-const null-String String)
(declare-const var2044-DOTS_MATCHER var1301)
(declare-const var2044-DOT_SPLITTER var384)
(declare-const var3643 var2044) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 
(assert (not (= var3643 null-var2044)))
(declare-const var1658 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1658 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2044-to-var3234 var3643))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3643!1 var2044)
(define-const var2007 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i5 = (int) -2 
(declare-const var3643!2 var2044)
(assert (not (= var3643!2 null-var2044)))
(assert (= (publicSuffixIndexCache/1824947533 var3643!2) var2007)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5 
(define-const var1299 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
(declare-const var3643!3 var2044)
(assert (not (= var3643!3 null-var2044)))
(assert (= (registrySuffixIndexCache/1824947533 var3643!3) var1299)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7 
(define-const var3493 var1301 var2044-DOTS_MATCHER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER> 
(assert true)
(define-const var2858 String (replaceFrom/-901080460 var3493 (cast-from-String-to-String var1658) 46)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46) 
(define-const var3801 String (var137_toLowerCase/1634554405 var2858)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2) 
(assert true)
(define-const var1561 Bool (endsWith/985337093 var3801 ".")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert (= (ite var1561 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var944 Int (length/-134980193 var3801)) ; Statement: $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 253 goto $z2 = 0 
(assert (> var944 253)) ; Cond: $i0 > 253 
(define-const var3028 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var612_checkArgument/1031231112 var3028 "Domain name too long: \u0027%s\u0027:" (cast-from-String-to-var3234 var3801))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9) 

(declare-const var3028!1 Bool)
(declare-const var1576 String)
(declare-const var3801!1 String)
(declare-const var3643!4 var2044)
(assert (not (= var3643!4 null-var2044)))
(assert (= (name/1824947533 var3643!4) var3801!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9 
(define-const var2987 var384 var2044-DOT_SPLITTER) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var3073 var3563 (split/-545181050 var2987 (cast-from-String-to-String var3801!1))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9) 
(define-const var1819 var178 (var178_copyOf/-499523795 var3073)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4) 
(declare-const var3643!5 var2044)
(assert (not (= var3643!5 null-var2044)))
(assert (= (parts/1824947533 var3643!5) var1819)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5 
(define-const var23 var178 (parts/1824947533 var3643!5)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(assert true)
(define-const var2037 Int (size/-481607991 (cast-from-var178-to-var3411 var23))) ; Statement: $i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>() 
 ; Statement: if $i1 > 127 goto $z3 = 0 
(assert (not (> var2037 127))) ; Negate: Cond: $i1 > 127  
(define-const var1268 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9)] 
(assert true) ; Non Conditional
;(assert (var612_checkArgument/1031231112 var1268 "Domain has too many parts: \u0027%s\u0027" (cast-from-String-to-var3234 var3801!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9) 

(declare-const var1268!1 Bool)
(declare-const var1449 String)
(declare-const var3801!2 String)
(define-const var1685 var178 (parts/1824947533 var3643!5)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(define-const var1290 Bool (var2044_validateSyntax/628218235 (cast-from-var178-to-var1867 var1685))) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7) 
;(assert (var612_checkArgument/1031231112 var1290 "Not a valid domain name: \u0027%s\u0027" (cast-from-String-to-var3234 var3801!2))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9) 

(declare-const var1290!1 Bool)
(declare-const var1354 String)
(declare-const var3801!3 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2044-to-var3234=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.Object), cast-from-Int-to-Int=([int], int), publicSuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), registrySuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), replaceFrom/-901080460=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, char], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var137_toLowerCase/1634554405=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), var612_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var3234=([java.lang.String], java.lang.Object), name/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.String), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), var178_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), parts/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), size/-481607991=([java.util.AbstractCollection], int), cast-from-var178-to-var3411=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), var2044_validateSyntax/628218235=([java.util.List], boolean), cast-from-var178-to-var1867=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List)}
; {var2044=com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName, var3643=r0, var1658=r8, var2036=null_type, var3234=java.lang.Object, var2007=$i5, var1299=$i7, var1301=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3493=$r1, var2858=$r2, var137=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var3801=r9, var1561=$z0, var944=$i0, var3028=$z2, var612=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1576="Domain name too long: \'%s\':", var384=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var2987=$r3, var3563=java.lang.Iterable, var3073=$r4, var178=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1819=$r5, var23=$r6, var3411=java.util.AbstractCollection, var2037=$i1, var1268=$z3, var1449="Domain has too many parts: \'%s\'", var1685=$r7, var1867=java.util.List, var1290=$z1, var1354="Not a valid domain name: \'%s\'"}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName=var2044, r0=var3643, r8=var1658, null_type=var2036, java.lang.Object=var3234, $i5=var2007, $i7=var1299, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1301, $r1=var3493, $r2=var2858, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var137, r9=var3801, $z0=var1561, $i0=var944, $z2=var3028, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var612, "Domain name too long: \'%s\':"=var1576, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var384, $r3=var2987, java.lang.Iterable=var3563, $r4=var3073, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var178, $r5=var1819, $r6=var23, java.util.AbstractCollection=var3411, $i1=var2037, $z3=var1268, "Domain has too many parts: \'%s\'"=var1449, $r7=var1685, java.util.List=var1867, $z1=var1290, "Not a valid domain name: \'%s\'"=var1354}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName;	r8 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i5 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5;	$i7 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46);	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2);	$z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>();	$i0 = virtualinvoke r9.<java.lang.String: int length()>();	if $i0 > 253 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9;	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5;	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>();	if $i1 > 127 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9);	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9);	return
;block_num 6