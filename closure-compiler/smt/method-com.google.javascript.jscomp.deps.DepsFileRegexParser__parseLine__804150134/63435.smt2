(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3381 0)
(declare-sort var1267 0)
(declare-sort var939 0)
(declare-sort var3016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun depMatcher/-2123612423 (var3381) var939)
(declare-fun reset/-770842269 (var939 String) var939)
(declare-fun matches/-149940873 (var939) Bool)
(declare-fun group/-653887691 (var939 Int) String)
(declare-fun depArgsMatch/-2123612423 (var3381) var939)
(declare-fun var3016-init () var3016)
(declare-fun <init>/-102679163 (var3016 String Bool) void)
(declare-const null-var3381 var3381)
(declare-const null-String String)
(declare-const var3314 var3381) ; Statement: r1 := @this: com.google.javascript.jscomp.deps.DepsFileRegexParser 
(assert (not (= var3314 null-var3381)))
(declare-const var1400 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1400 null-String)))
(define-const var867 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(assert true)
(define-const var1302 Bool (contains/1009244746 var1400 (cast-from-String-to-String "addDependency"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("addDependency") 
 ; Statement: if $z0 == 0 goto $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode> 
(assert (not (= (ite var1302 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3855 var939 (depMatcher/-2123612423 var3314)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depMatcher> 
(assert true)
;(assert (reset/-770842269 var3855 (cast-from-String-to-String var1400))) ; Statement: virtualinvoke $r3.<java.util.regex.Matcher: java.util.regex.Matcher reset(java.lang.CharSequence)>(r0) 

(declare-const var3855!1 var939)
(declare-const var1400!1 String)
(define-const var3569 var939 (depMatcher/-2123612423 var3314)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depMatcher> 
(assert true)
(define-const var3713 Bool (matches/-149940873 var3569)) ; Statement: $z2 = virtualinvoke $r4.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z2 == 0 goto $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode> 
(assert (not (= (ite var3713 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var867!1 Bool (ite (= 1 1) true false)) ; Statement: z6 = 1 
(define-const var2002 var939 (depMatcher/-2123612423 var3314)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depMatcher> 
(assert true)
(define-const var903 String (group/-653887691 var2002 1)) ; Statement: r6 = virtualinvoke $r5.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(define-const var424 var939 (depArgsMatch/-2123612423 var3314)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depArgsMatch> 
(assert true)
;(assert (reset/-770842269 var424 (cast-from-String-to-String var903))) ; Statement: virtualinvoke $r7.<java.util.regex.Matcher: java.util.regex.Matcher reset(java.lang.CharSequence)>(r6) 

(declare-const var424!1 var939)
(declare-const var903!1 String)
(define-const var1637 var939 (depArgsMatch/-2123612423 var3314)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depArgsMatch> 
(assert true)
(define-const var108 Bool (matches/-149940873 var1637)) ; Statement: $z3 = virtualinvoke $r8.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z3 != 0 goto $r9 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depArgsMatch> 
(assert (not (not (= (ite var108 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3828 var3016 var3016-init) ; Statement: $r43 = new com.google.javascript.jscomp.deps.JsFileLineParser$ParseException 
(define-const var2664 String (str.++ "Invalid arguments to goog.addDependency(). Found: \u0001" var903!1)) ; Statement: $r44 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Invalid arguments to goog.addDependency(). Found: \u0001") 
(assert true)
;(assert (<init>/-102679163 var3828 var2664 (ite (= 1 1) true false))) ; Statement: specialinvoke $r43.<com.google.javascript.jscomp.deps.JsFileLineParser$ParseException: void <init>(java.lang.String,boolean)>($r44, 1) 

(declare-const var3828!1 var3016)
(declare-const var2664!1 String)
(declare-const var1283 Int)
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), depMatcher/-2123612423=([com.google.javascript.jscomp.deps.DepsFileRegexParser], java.util.regex.Matcher), reset/-770842269=([java.util.regex.Matcher, java.lang.CharSequence], java.util.regex.Matcher), matches/-149940873=([java.util.regex.Matcher], boolean), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), depArgsMatch/-2123612423=([com.google.javascript.jscomp.deps.DepsFileRegexParser], java.util.regex.Matcher), var3016-init=([], com.google.javascript.jscomp.deps.JsFileLineParser$ParseException), <init>/-102679163=([com.google.javascript.jscomp.deps.JsFileLineParser$ParseException, java.lang.String, boolean], void)}
; {var3381=com.google.javascript.jscomp.deps.DepsFileRegexParser, var3314=r1, var1400=r0, var1267=null_type, var867=z6, var1302=$z0, var939=java.util.regex.Matcher, var3855=$r3, var3569=$r4, var3713=$z2, var2002=$r5, var903=r6, var424=$r7, var1637=$r8, var108=$z3, var3016=com.google.javascript.jscomp.deps.JsFileLineParser$ParseException, var3828=$r43, var2664=$r44, var1283=1}
; {com.google.javascript.jscomp.deps.DepsFileRegexParser=var3381, r1=var3314, r0=var1400, null_type=var1267, z6=var867, $z0=var1302, java.util.regex.Matcher=var939, $r3=var3855, $r4=var3569, $z2=var3713, $r5=var2002, r6=var903, $r7=var424, $r8=var1637, $z3=var108, com.google.javascript.jscomp.deps.JsFileLineParser$ParseException=var3016, $r43=var3828, $r44=var2664, 1=var1283}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.deps.DepsFileRegexParser;	r0 := @parameter0: java.lang.String;	z6 = 0;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("addDependency");	if $z0 == 0 goto $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode>;	$r3 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depMatcher>;	virtualinvoke $r3.<java.util.regex.Matcher: java.util.regex.Matcher reset(java.lang.CharSequence)>(r0);	$r4 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depMatcher>;	$z2 = virtualinvoke $r4.<java.util.regex.Matcher: boolean matches()>();	if $z2 == 0 goto $z7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: boolean shortcutMode>;	z6 = 1;	$r5 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depMatcher>;	r6 = virtualinvoke $r5.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r7 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depArgsMatch>;	virtualinvoke $r7.<java.util.regex.Matcher: java.util.regex.Matcher reset(java.lang.CharSequence)>(r6);	$r8 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depArgsMatch>;	$z3 = virtualinvoke $r8.<java.util.regex.Matcher: boolean matches()>();	if $z3 != 0 goto $r9 = r1.<com.google.javascript.jscomp.deps.DepsFileRegexParser: java.util.regex.Matcher depArgsMatch>;	$r43 = new com.google.javascript.jscomp.deps.JsFileLineParser$ParseException;	$r44 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r6) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Invalid arguments to goog.addDependency(). Found: \u0001");	specialinvoke $r43.<com.google.javascript.jscomp.deps.JsFileLineParser$ParseException: void <init>(java.lang.String,boolean)>($r44, 1);	throw $r43
;block_num 4