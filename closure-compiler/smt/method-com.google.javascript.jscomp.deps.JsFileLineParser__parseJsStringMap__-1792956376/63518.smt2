(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2843 0)
(declare-sort var40 0)
(declare-sort var2842 0)
(declare-sort var2469 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2842_whitespace/-424460200 () var2842)
(declare-fun trimFrom/-720594418 (var2842 String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2843_check/-928694493 (Bool String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2469-init () var2469)
(declare-fun <init>/-1461814690 (var2469) void)
(declare-fun valueMatcher/-2051469147 (var2843) var2042)
(declare-fun reset/-770842269 (var2042 String) var2042)
(declare-const null-var2843 var2843)
(declare-const null-String String)
(declare-const var1075 var2843) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser 
(assert (not (= var1075 null-var2843)))
(declare-const var96 String) ; Statement: r23 := @parameter0: java.lang.String 
(assert (not (= var96 null-String)))
(define-const var3368 var2842 var2842_whitespace/-424460200) ; Statement: $r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher whitespace()>() 
(assert true)
(define-const var895 String (trimFrom/-720594418 var3368 (cast-from-String-to-String var96))) ; Statement: r24 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String trimFrom(java.lang.CharSequence)>(r23) 
(assert true)
(define-const var1010 Bool (isEmpty/-1285796103 var895)) ; Statement: $z0 = virtualinvoke r24.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z5 = 0 
(assert (not (= (ite var1010 1 0) 0))) ; Cond: $z0 != 0 
(define-const var17 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
;(assert (var2843_check/-928694493 var17 "Syntax error when parsing JS object")) ; Statement: staticinvoke <com.google.javascript.jscomp.deps.JsFileLineParser: void check(boolean,java.lang.String)>($z5, "Syntax error when parsing JS object") 

(declare-const var17!1 Bool)
(declare-const var2499 String)
(assert true)
(define-const var2399 Int (length/-134980193 var895)) ; Statement: $i14 = virtualinvoke r24.<java.lang.String: int length()>() 
(define-const var2537 Int (- var2399 1)) ; Statement: $i15 = $i14 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var895) var2537) (>= var2537 1))))
(define-const var18 String (substring/-1240304868 var895 1 var2537)) ; Statement: $r25 = virtualinvoke r24.<java.lang.String: java.lang.String substring(int,int)>(1, $i15) 
(assert true)
(define-const var3826 String (trim/-847153721 var18)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String trim()>() 
(define-const var1924 var2469 var2469-init) ; Statement: $r31 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var1924)) ; Statement: specialinvoke $r31.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var1924!1 var2469)
(assert true)
(define-const var835 Bool (isEmpty/-1285796103 var3826)) ; Statement: z6 = virtualinvoke $r26.<java.lang.String: boolean isEmpty()>() 
(define-const var468 var2042 (valueMatcher/-2051469147 var1075)) ; Statement: $r28 = r1.<com.google.javascript.jscomp.deps.JsFileLineParser: java.util.regex.Matcher valueMatcher> 
(assert true)
;(assert (reset/-770842269 var468 (cast-from-String-to-String var3826))) ; Statement: virtualinvoke $r28.<java.util.regex.Matcher: java.util.regex.Matcher reset(java.lang.CharSequence)>($r26) 

(declare-const var468!1 var2042)
(declare-const var3826!1 String)
(assert true) ; Non Conditional
 ; Statement: if z6 != 0 goto return $r31 
(assert (not (= (ite var835 1 0) 0))) ; Cond: z6 != 0 
 ; Statement: return $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var2842_whitespace/-424460200=([], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher), trimFrom/-720594418=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isEmpty/-1285796103=([java.lang.String], boolean), var2843_check/-928694493=([boolean, java.lang.String], void), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2469-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), valueMatcher/-2051469147=([com.google.javascript.jscomp.deps.JsFileLineParser], java.util.regex.Matcher), reset/-770842269=([java.util.regex.Matcher, java.lang.CharSequence], java.util.regex.Matcher)}
; {var2843=com.google.javascript.jscomp.deps.JsFileLineParser, var1075=r1, var96=r23, var40=null_type, var2842=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3368=$r0, var895=r24, var1010=$z0, var17=$z5, var2499="Syntax error when parsing JS object", var2399=$i14, var2537=$i15, var18=$r25, var3826=$r26, var2469=java.util.LinkedHashMap, var1924=$r31, var835=z6, var2042=java.util.regex.Matcher, var468=$r28}
; {com.google.javascript.jscomp.deps.JsFileLineParser=var2843, r1=var1075, r23=var96, null_type=var40, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2842, $r0=var3368, r24=var895, $z0=var1010, $z5=var17, "Syntax error when parsing JS object"=var2499, $i14=var2399, $i15=var2537, $r25=var18, $r26=var3826, java.util.LinkedHashMap=var2469, $r31=var1924, z6=var835, java.util.regex.Matcher=var2042, $r28=var468}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.JsFileLineParser;	r23 := @parameter0: java.lang.String;	$r0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher whitespace()>();	r24 = virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher: java.lang.String trimFrom(java.lang.CharSequence)>(r23);	$z0 = virtualinvoke r24.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z5 = 0;	$z5 = 0;	staticinvoke <com.google.javascript.jscomp.deps.JsFileLineParser: void check(boolean,java.lang.String)>($z5, "Syntax error when parsing JS object");	$i14 = virtualinvoke r24.<java.lang.String: int length()>();	$i15 = $i14 - 1;	$r25 = virtualinvoke r24.<java.lang.String: java.lang.String substring(int,int)>(1, $i15);	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String trim()>();	$r31 = new java.util.LinkedHashMap;	specialinvoke $r31.<java.util.LinkedHashMap: void <init>()>();	z6 = virtualinvoke $r26.<java.lang.String: boolean isEmpty()>();	$r28 = r1.<com.google.javascript.jscomp.deps.JsFileLineParser: java.util.regex.Matcher valueMatcher>;	virtualinvoke $r28.<java.util.regex.Matcher: java.util.regex.Matcher reset(java.lang.CharSequence)>($r26);	if z6 != 0 goto return $r31;	return $r31
;block_num 5