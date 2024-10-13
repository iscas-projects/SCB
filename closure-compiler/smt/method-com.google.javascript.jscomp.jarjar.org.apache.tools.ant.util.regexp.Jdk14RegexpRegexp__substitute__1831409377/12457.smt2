(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var640 0)
(declare-sort var1808 0)
(declare-sort var3507 0)
(declare-sort var3655 0)
(declare-sort var1066 0)
(declare-sort var1665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getSubsOptions/407319154 (var640 Int) Int)
(declare-fun getCompiledPattern/-1297074349 (var3655 Int) var3507)
(declare-fun cast-from-var640-to-var3655 (var640) var3655)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun matcher/468719934 (var3507 String) var1066)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1665_hasFlag/-1935085024 (Int Int) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun replaceAll/-445382577 (var1066 String) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var640 var640)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1242 var640) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp 
(assert (not (= var1242 null-var640)))
(declare-const var2409 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2409 null-String)))
(declare-const var3074 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3074 null-String)))
(declare-const var2718 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2718 null-Int)))
(define-const var1644 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1644)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1644!1 String)
(assert (= var1644!1 ""))
(define-const var2883 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var141 Int (length/-134980193 var3074)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto i7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp: int getSubsOptions(int)>(i1) 
(assert (>= var2883 var141)) ; Cond: i3 >= $i0 
(assert true)
(define-const var1178 Int (getSubsOptions/407319154 var1242 var2718)) ; Statement: i7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp: int getSubsOptions(int)>(i1) 
(assert true)
(define-const var3777 var3507 (getCompiledPattern/-1297074349 (cast-from-var640-to-var3655 var1242) var2718)) ; Statement: r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp: java.util.regex.Pattern getCompiledPattern(int)>(i1) 
(define-const var2647 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2647)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2647!1 String)
(assert true)
(define-const var220 var1066 (matcher/468719934 var3777 (cast-from-String-to-String var2409))) ; Statement: r5 = virtualinvoke r10.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r4) 
(define-const var2157 Bool (var1665_hasFlag/-1935085024 var1178 16)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpUtil: boolean hasFlag(int,int)>(i7, 16) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>() 
(assert (not (= (ite var2157 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var173 String (toString/-2075883882 var1644!1)) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2366 String (replaceAll/-445382577 var220 var173)) ; Statement: $r8 = virtualinvoke r5.<java.util.regex.Matcher: java.lang.String replaceAll(java.lang.String)>($r7) 
(assert true)
;(assert (append/1560614132 var2647!1 var2366)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var2647!2 String)
(assert (str.prefixof var2647!1 var2647!2))
 ; Statement: goto [?= $r11 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var903 String (toString/-222306083 var2647!2)) ; Statement: $r11 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), getSubsOptions/407319154=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp, int], int), getCompiledPattern/-1297074349=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpMatcher, int], java.util.regex.Pattern), cast-from-var640-to-var3655=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpMatcher), <init>/-1430969082=([java.lang.StringBuffer], void), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1665_hasFlag/-1935085024=([int, int], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), replaceAll/-445382577=([java.util.regex.Matcher, java.lang.String], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var640=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp, var1242=r2, var2409=r4, var1808=null_type, var3074=r1, var2718=i1, var1644=$r12, var2883=i3, var141=$i0, var1178=i7, var3507=java.util.regex.Pattern, var3655=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpMatcher, var3777=r10, var2647=$r13, var1066=java.util.regex.Matcher, var220=r5, var1665=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpUtil, var2157=$z0, var173=$r7, var2366=$r8, var903=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp=var640, r2=var1242, r4=var2409, null_type=var1808, r1=var3074, i1=var2718, $r12=var1644, i3=var2883, $i0=var141, i7=var1178, java.util.regex.Pattern=var3507, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpMatcher=var3655, r10=var3777, $r13=var2647, java.util.regex.Matcher=var1066, r5=var220, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpUtil=var1665, $z0=var2157, $r7=var173, $r8=var2366, $r11=var903}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp;	r4 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i3 >= $i0 goto i7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp: int getSubsOptions(int)>(i1);	i7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp: int getSubsOptions(int)>(i1);	r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.Jdk14RegexpRegexp: java.util.regex.Pattern getCompiledPattern(int)>(i1);	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	r5 = virtualinvoke r10.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r4);	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.regexp.RegexpUtil: boolean hasFlag(int,int)>(i7, 16);	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r5.<java.util.regex.Matcher: java.lang.String replaceAll(java.lang.String)>($r7);	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	goto [?= $r11 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>()];	$r11 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	return $r11
;block_num 5