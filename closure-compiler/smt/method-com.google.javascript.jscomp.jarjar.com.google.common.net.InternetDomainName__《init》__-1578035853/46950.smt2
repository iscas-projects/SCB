(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var199 0)
(declare-sort var1201 0)
(declare-sort var1680 0)
(declare-sort var2894 0)
(declare-sort var2643 0)
(declare-sort var1082 0)
(declare-sort var1770 0)
(declare-sort var453 0)
(declare-sort var1469 0)
(declare-sort var388 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1680) void)
(declare-fun cast-from-var199-to-var1680 (var199) var1680)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun publicSuffixIndexCache/1824947533 (var199) Int)
(declare-fun registrySuffixIndexCache/1824947533 (var199) Int)
(declare-fun replaceFrom/-901080460 (var2894 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2643_toLowerCase/1634554405 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1082_checkArgument/1031231112 (Bool String var1680) void)
(declare-fun cast-from-String-to-var1680 (String) var1680)
(declare-fun name/1824947533 (var199) String)
(declare-fun split/-545181050 (var1770 String) var453)
(declare-fun var1469_copyOf/-499523795 (var453) var1469)
(declare-fun parts/1824947533 (var199) var1469)
(declare-fun size/-481607991 (var388) Int)
(declare-fun cast-from-var1469-to-var388 (var1469) var388)
(declare-fun var199_validateSyntax/628218235 (var1815) Bool)
(declare-fun cast-from-var1469-to-var1815 (var1469) var1815)
(declare-const null-var199 var199)
(declare-const null-String String)
(declare-const var199-DOTS_MATCHER var2894)
(declare-const var199-DOT_SPLITTER var1770)
(declare-const var2 var199) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 
(assert (not (= var2 null-var199)))
(declare-const var1944 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1944 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var199-to-var1680 var2))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2!1 var199)
(define-const var2913 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i5 = (int) -2 
(declare-const var2!2 var199)
(assert (not (= var2!2 null-var199)))
(assert (= (publicSuffixIndexCache/1824947533 var2!2) var2913)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5 
(define-const var69 Int (cast-from-Int-to-Int (- 2))) ; Statement: $i7 = (int) -2 
(declare-const var2!3 var199)
(assert (not (= var2!3 null-var199)))
(assert (= (registrySuffixIndexCache/1824947533 var2!3) var69)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7 
(define-const var1146 var2894 var199-DOTS_MATCHER) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER> 
(assert true)
(define-const var2806 String (replaceFrom/-901080460 var1146 (cast-from-String-to-String var1944) 46)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46) 
(define-const var3343 String (var2643_toLowerCase/1634554405 var2806)) ; Statement: r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2) 
(assert true)
(define-const var1162 Bool (endsWith/985337093 var3343 ".")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
(assert (= (ite var1162 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1435 Int (length/-134980193 var3343)) ; Statement: $i0 = virtualinvoke r9.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 253 goto $z2 = 0 
(assert (not (> var1435 253))) ; Negate: Cond: $i0 > 253  
(define-const var1468 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9)] 
(assert true) ; Non Conditional
;(assert (var1082_checkArgument/1031231112 var1468 "Domain name too long: \u0027%s\u0027:" (cast-from-String-to-var1680 var3343))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9) 

(declare-const var1468!1 Bool)
(declare-const var2968 String)
(declare-const var3343!1 String)
(declare-const var2!4 var199)
(assert (not (= var2!4 null-var199)))
(assert (= (name/1824947533 var2!4) var3343!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9 
(define-const var1996 var1770 var199-DOT_SPLITTER) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER> 
(assert true)
(define-const var258 var453 (split/-545181050 var1996 (cast-from-String-to-String var3343!1))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9) 
(define-const var3371 var1469 (var1469_copyOf/-499523795 var258)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4) 
(declare-const var2!5 var199)
(assert (not (= var2!5 null-var199)))
(assert (= (parts/1824947533 var2!5) var3371)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5 
(define-const var2113 var1469 (parts/1824947533 var2!5)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(assert true)
(define-const var833 Int (size/-481607991 (cast-from-var1469-to-var388 var2113))) ; Statement: $i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>() 
 ; Statement: if $i1 > 127 goto $z3 = 0 
(assert (not (> var833 127))) ; Negate: Cond: $i1 > 127  
(define-const var305 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9)] 
(assert true) ; Non Conditional
;(assert (var1082_checkArgument/1031231112 var305 "Domain has too many parts: \u0027%s\u0027" (cast-from-String-to-var1680 var3343!1))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9) 

(declare-const var305!1 Bool)
(declare-const var2893 String)
(declare-const var3343!2 String)
(define-const var3478 var1469 (parts/1824947533 var2!5)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> 
(define-const var2567 Bool (var199_validateSyntax/628218235 (cast-from-var1469-to-var1815 var3478))) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7) 
;(assert (var1082_checkArgument/1031231112 var2567 "Not a valid domain name: \u0027%s\u0027" (cast-from-String-to-var1680 var3343!2))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9) 

(declare-const var2567!1 Bool)
(declare-const var2919 String)
(declare-const var3343!3 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var199-to-var1680=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.Object), cast-from-Int-to-Int=([int], int), publicSuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), registrySuffixIndexCache/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], int), replaceFrom/-901080460=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence, char], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2643_toLowerCase/1634554405=([java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), var1082_checkArgument/1031231112=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var1680=([java.lang.String], java.lang.Object), name/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.String), split/-545181050=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, java.lang.CharSequence], java.lang.Iterable), var1469_copyOf/-499523795=([java.lang.Iterable], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), parts/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), size/-481607991=([java.util.AbstractCollection], int), cast-from-var1469-to-var388=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.AbstractCollection), var199_validateSyntax/628218235=([java.util.List], boolean), cast-from-var1469-to-var1815=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List)}
; {var199=com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName, var2=r0, var1944=r8, var1201=null_type, var1680=java.lang.Object, var2913=$i5, var69=$i7, var2894=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1146=$r1, var2806=$r2, var2643=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var3343=r9, var1162=$z0, var1435=$i0, var1468=$z2, var1082=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2968="Domain name too long: \'%s\':", var1770=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var1996=$r3, var453=java.lang.Iterable, var258=$r4, var1469=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3371=$r5, var2113=$r6, var388=java.util.AbstractCollection, var833=$i1, var305=$z3, var2893="Domain has too many parts: \'%s\'", var3478=$r7, var1815=java.util.List, var2567=$z1, var2919="Not a valid domain name: \'%s\'"}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName=var199, r0=var2, r8=var1944, null_type=var1201, java.lang.Object=var1680, $i5=var2913, $i7=var69, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2894, $r1=var1146, $r2=var2806, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var2643, r9=var3343, $z0=var1162, $i0=var1435, $z2=var1468, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1082, "Domain name too long: \'%s\':"=var2968, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var1770, $r3=var1996, java.lang.Iterable=var453, $r4=var258, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1469, $r5=var3371, $r6=var2113, java.util.AbstractCollection=var388, $i1=var833, $z3=var305, "Domain has too many parts: \'%s\'"=var2893, $r7=var3478, java.util.List=var1815, $z1=var2567, "Not a valid domain name: \'%s\'"=var2919}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName;	r8 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i5 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int publicSuffixIndexCache> = $i5;	$i7 = (int) -2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: int registrySuffixIndexCache> = $i7;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher DOTS_MATCHER>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String replaceFrom(java.lang.CharSequence,char)>(r8, 46);	r9 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r2);	$z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $i0 = virtualinvoke r9.<java.lang.String: int length()>();	$i0 = virtualinvoke r9.<java.lang.String: int length()>();	if $i0 > 253 goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z2, "Domain name too long: \'%s\':", r9);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> = r9;	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter DOT_SPLITTER>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: java.lang.Iterable split(java.lang.CharSequence)>(r9);	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList copyOf(java.lang.Iterable)>($r4);	r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts> = $r5;	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$i1 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int size()>();	if $i1 > 127 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z3, "Domain has too many parts: \'%s\'", r9);	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList parts>;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: boolean validateSyntax(java.util.List)>($r7);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.String,java.lang.Object)>($z1, "Not a valid domain name: \'%s\'", r9);	return
;block_num 6