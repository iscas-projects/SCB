(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
(declare-sort var2497 0)
(declare-sort var3311 0)
(declare-sort var1816 0)
(declare-sort var3815 0)
(declare-sort var471 0)
(declare-sort var1041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3311) void)
(declare-fun cast-from-var2217-to-var3311 (var2217) var3311)
(declare-fun var1816-init () var1816)
(declare-fun <init>/-325640736 (var1816) void)
(declare-fun cast-from-var1816-to-var3815 (var1816) var3815)
(declare-fun variableNames/1368157787 (var2217) var3815)
(declare-fun rawPattern/1368157787 (var2217) String)
(declare-fun caseSensitive/1368157787 (var2217) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun matcher/468719934 (var471 String) var1041)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1041) Bool)
(declare-fun exactMatch/1368157787 (var2217) Bool)
(declare-fun pattern/1368157787 (var2217) var471)
(declare-const null-var2217 var2217)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2217-GLOB_PATTERN var471)
(declare-const null-var471 var471)
(declare-const var2574 var2217) ; Statement: r0 := @this: cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher 
(assert (not (= var2574 null-var2217)))
(declare-const var885 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var885 null-String)))
(declare-const var843 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var843 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2217-to-var3311 var2574))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2574!1 var2217)
(define-const var412 var1816 var1816-init) ; Statement: $r19 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var412)) ; Statement: specialinvoke $r19.<java.util.ArrayList: void <init>()>() 

(declare-const var412!1 var1816)
(declare-const var2574!2 var2217)
(assert (not (= var2574!2 null-var2217)))
(assert (= (variableNames/1368157787 var2574!2) (cast-from-var1816-to-var3815 var412!1))) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.util.List variableNames> = $r19 
(declare-const var2574!3 var2217)
(assert (not (= var2574!3 null-var2217)))
(assert (= (rawPattern/1368157787 var2574!3) var885)) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.lang.String rawPattern> = r2 
(declare-const var2574!4 var2217)
(assert (not (= var2574!4 null-var2217)))
(assert (= (caseSensitive/1368157787 var2574!4) var843)) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: boolean caseSensitive> = z0 
(define-const var3937 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(define-const var2443 var471 var2217-GLOB_PATTERN) ; Statement: $r4 = <cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.util.regex.Pattern GLOB_PATTERN> 
(assert true)
(define-const var3954 var1041 (matcher/468719934 var2443 (cast-from-String-to-String var885))) ; Statement: r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r2) 
(define-const var2725 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var897 Bool (find/1809080823 var3954)) ; Statement: $z1 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var897 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if i6 != 0 goto r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: boolean exactMatch> = 0 
(assert (not (not (= var2725 0)))) ; Negate: Cond: i6 != 0  
(declare-const var2574!5 var2217)
(assert (not (= var2574!5 null-var2217)))
(assert (= (exactMatch/1368157787 var2574!5) (ite (= 1 1) true false))) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: boolean exactMatch> = 1 
(declare-const var2574!6 var2217)
(assert (not (= var2574!6 null-var2217)))
(assert (= (pattern/1368157787 var2574!6) null-var471)) ; Statement: r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.util.regex.Pattern pattern> = null 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2217-to-var3311=([cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher], java.lang.Object), var1816-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1816-to-var3815=([java.util.ArrayList], java.util.List), variableNames/1368157787=([cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher], java.util.List), rawPattern/1368157787=([cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher], java.lang.String), caseSensitive/1368157787=([cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), exactMatch/1368157787=([cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher], boolean), pattern/1368157787=([cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher], java.util.regex.Pattern)}
; {var2217=cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher, var2574=r0, var885=r2, var2497=null_type, var843=z0, var3311=java.lang.Object, var1816=java.util.ArrayList, var412=$r19, var3815=java.util.List, var3937=$r20, var471=java.util.regex.Pattern, var2443=$r4, var1041=java.util.regex.Matcher, var3954=r5, var2725=i6, var897=$z1}
; {cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher=var2217, r0=var2574, r2=var885, null_type=var2497, z0=var843, java.lang.Object=var3311, java.util.ArrayList=var1816, $r19=var412, java.util.List=var3815, $r20=var3937, java.util.regex.Pattern=var471, $r4=var2443, java.util.regex.Matcher=var1041, r5=var3954, i6=var2725, $z1=var897}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r19 = new java.util.ArrayList;	specialinvoke $r19.<java.util.ArrayList: void <init>()>();	r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.util.List variableNames> = $r19;	r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.lang.String rawPattern> = r2;	r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: boolean caseSensitive> = z0;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r4 = <cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.util.regex.Pattern GLOB_PATTERN>;	r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r2);	i6 = 0;	$z1 = virtualinvoke r5.<java.util.regex.Matcher: boolean find()>();	if $z1 == 0 goto (branch);	if i6 != 0 goto r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: boolean exactMatch> = 0;	r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: boolean exactMatch> = 1;	r0.<cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher: java.util.regex.Pattern pattern> = null;	goto [?= return];	return
;block_num 5