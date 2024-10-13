(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var31 0)
(declare-sort var3155 0)
(declare-sort var1460 0)
(declare-sort var3491 0)
(declare-sort var3168 0)
(declare-sort var1984 0)
(declare-sort var2289 0)
(declare-sort var1614 0)
(declare-sort var3245 0)
(declare-sort var3658 0)
(declare-sort var2548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1460) void)
(declare-fun cast-from-var31-to-var1460 (var31) var1460)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun publicSuffixIndexCache/1824947533 (var31) Int)
(declare-fun registrySuffixIndexCache/1824947533 (var31) Int)
(declare-fun replaceFrom/-901080460 (var3491 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3168_toLowerCase/1634554405 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1984_checkArgument/1031231112 (Bool String var1460) void)
(declare-fun cast-from-String-to-var1460 (String) var1460)
(declare-fun name/1824947533 (var31) String)
(declare-fun split/-545181050 (var2289 String) var1614)
(declare-fun var3245_copyOf/-499523795 (var1614) var3245)
(declare-fun parts/1824947533 (var31) var3245)
(declare-fun size/-481607991 (var3658) Int)
(declare-fun cast-from-var3245-to-var3658 (var3245) var3658)
(declare-fun var31_validateSyntax/628218235 (var2548) Bool)
(declare-fun cast-from-var3245-to-var2548 (var3245) var2548)
(declare-const null-var31 var31)
(declare-const null-String String)
(declare-const var31-DOTS_MATCHER var3491)
(declare-const var31-DOT_SPLITTER var2289)
(declare-const var2974 var31) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 
(assert (not (= var2974 null-var31)))
(declare-const var3088 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3088 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var31-to-var1460 var2974))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2974!1 var31)
(define-const var1066 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i5 = (int) -2 
(declare-const var2974!2 var31)
(assert (not (= var2974!2 null-var31)))
(assert (= (publicSuffixIndexCache/1824947533 var2974!2) var1066)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5 
(define-const var3916 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
(declare-const var2974!3 var31)
(assert (not (= var2974!3 null-var31)))
(assert (= (registrySuffixIndexCache/1824947533 var2974!3) var3916)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7 
(define-const var3550 var3491 var31-DOTS_MATCHER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER> 
(assert true)
(define-const var2121 String (replaceFrom/-901080460 var3550 (cast-from-String-to-String var3088) 46)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46) 
(define-const var1263 String (var3168_toLowerCase/1634554405 var2121)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2) 
(assert true)
(define-const var448 Bool (endsWith/985337093 var1263 ".")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert (= (ite var448 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3768 Int (length/-134980193 var1263)) ; Statement: $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 253 goto $z2 = 0 
(assert (not (> var3768 253))) ; Negate: Cond: $i0 > 253  
(define-const var173 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9)] 
(assert true) ; Non Conditional
;(assert (var1984_checkArgument/1031231112 var173 "Domain name too long: \u0027%s\u0027:" (cast-from-String-to-var1460 var1263))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9) 

(declare-const var173!1 Bool)
(declare-const var772 String)
(declare-const var1263!1 String)
(declare-const var2974!4 var31)
(assert (not (= var2974!4 null-var31)))
(assert (= (name/1824947533 var2974!4) var1263!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9 
(define-const var3896 var2289 var31-DOT_SPLITTER) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var1024 var1614 (split/-545181050 var3896 (cast-from-String-to-String var1263!1))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9) 
(define-const var2146 var3245 (var3245_copyOf/-499523795 var1024)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4) 
(declare-const var2974!5 var31)
(assert (not (= var2974!5 null-var31)))
(assert (= (parts/1824947533 var2974!5) var2146)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5 
(define-const var694 var3245 (parts/1824947533 var2974!5)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(assert true)
(define-const var1685 Int (size/-481607991 (cast-from-var3245-to-var3658 var694))) ; Statement: $i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>() 
 ; Statement: if $i1 > 127 goto $z3 = 0 
(assert (> var1685 127)) ; Cond: $i1 > 127 
(define-const var2953 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var1984_checkArgument/1031231112 var2953 "Domain has too many parts: \u0027%s\u0027" (cast-from-String-to-var1460 var1263!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9) 

(declare-const var2953!1 Bool)
(declare-const var2800 String)
(declare-const var1263!2 String)
(define-const var154 var3245 (parts/1824947533 var2974!5)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(define-const var3332 Bool (var31_validateSyntax/628218235 (cast-from-var3245-to-var2548 var154))) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7) 
;(assert (var1984_checkArgument/1031231112 var3332 "Not a valid domain name: \u0027%s\u0027" (cast-from-String-to-var1460 var1263!2))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9) 

(declare-const var3332!1 Bool)
(declare-const var2111 String)
(declare-const var1263!3 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var31-to-var1460=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.Object), cast-from-Int-to-Int=([int], int), publicSuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), registrySuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), replaceFrom/-901080460=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, char], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3168_toLowerCase/1634554405=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), var1984_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var1460=([java.lang.String], java.lang.Object), name/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.String), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), var3245_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), parts/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), size/-481607991=([java.util.AbstractCollection], int), cast-from-var3245-to-var3658=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), var31_validateSyntax/628218235=([java.util.List], boolean), cast-from-var3245-to-var2548=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List)}
; {var31=com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName, var2974=r0, var3088=r8, var3155=null_type, var1460=java.lang.Object, var1066=$i5, var3916=$i7, var3491=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3550=$r1, var2121=$r2, var3168=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var1263=r9, var448=$z0, var3768=$i0, var173=$z2, var1984=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var772="Domain name too long: \'%s\':", var2289=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var3896=$r3, var1614=java.lang.Iterable, var1024=$r4, var3245=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2146=$r5, var694=$r6, var3658=java.util.AbstractCollection, var1685=$i1, var2953=$z3, var2800="Domain has too many parts: \'%s\'", var154=$r7, var2548=java.util.List, var3332=$z1, var2111="Not a valid domain name: \'%s\'"}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName=var31, r0=var2974, r8=var3088, null_type=var3155, java.lang.Object=var1460, $i5=var1066, $i7=var3916, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3491, $r1=var3550, $r2=var2121, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var3168, r9=var1263, $z0=var448, $i0=var3768, $z2=var173, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1984, "Domain name too long: \'%s\':"=var772, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var2289, $r3=var3896, java.lang.Iterable=var1614, $r4=var1024, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3245, $r5=var2146, $r6=var694, java.util.AbstractCollection=var3658, $i1=var1685, $z3=var2953, "Domain has too many parts: \'%s\'"=var2800, $r7=var154, java.util.List=var2548, $z1=var3332, "Not a valid domain name: \'%s\'"=var2111}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName;	r8 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i5 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5;	$i7 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46);	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2);	$z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>();	$i0 = virtualinvoke r9.<java.lang.String: int length()>();	if $i0 > 253 goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9;	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5;	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>();	if $i1 > 127 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9);	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9);	return
;block_num 6