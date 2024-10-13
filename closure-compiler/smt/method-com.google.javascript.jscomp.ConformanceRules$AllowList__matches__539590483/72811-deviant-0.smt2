(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var819 0)
(declare-sort var2270 0)
(declare-sort var2595 0)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun prefixes/1462084866 (var819) var2595)
(declare-fun regexp/1462084866 (var819) var2003)
(declare-const null-var819 var819)
(declare-const null-String String)
(declare-const null-var2595 var2595)
(declare-const null-var2003 var2003)
(declare-const var2060 var819) ; Statement: r2 := @this: com.google.javascript.jscomp.ConformanceRules$AllowList 
(assert (not (= var2060 null-var819)))
(declare-const var2007 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2007 null-String)))
(assert true)
(define-const var2777 Bool (endsWith/985337093 var2007 ".closure.js")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js") 
 ; Statement: if $z0 == 0 goto $r15 = null 
(assert (not (= (ite var2777 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var725 Int (length/-134980193 var2007)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2900 String ".closure.js") ; Statement: $r13 = ".closure.js" 
(assert true)
(define-const var1998 Int (length/-134980193 var2900)) ; Statement: $i0 = virtualinvoke $r13.<java.lang.String: int length()>() 
(define-const var2722 Int (- var725 var1998)) ; Statement: $i2 = $i1 - $i0 
(assert (not (and true (and (>= 0 0) (>= (str.len var2007) var2722) (>= var2722 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), prefixes/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), regexp/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], java.util.regex.Pattern)}
; {var819=com.google.javascript.jscomp.ConformanceRules$AllowList, var2060=r2, var2007=r0, var2270=null_type, var2777=$z0, var725=$i1, var2900=$r13, var1998=$i0, var2722=$i2, var352=$r14, var3151=$r15, var2217=r1, var2595=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1707=$r3, var2003=java.util.regex.Pattern, var700=$r4, var3135=$z7}
; {com.google.javascript.jscomp.ConformanceRules$AllowList=var819, r2=var2060, r0=var2007, null_type=var2270, $z0=var2777, $i1=var725, $r13=var2900, $i0=var1998, $i2=var2722, $r14=var352, $r15=var3151, r1=var2217, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2595, $r3=var1707, java.util.regex.Pattern=var2003, $r4=var700, $z7=var3135}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ConformanceRules$AllowList;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js");	if $z0 == 0 goto $r15 = null;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r13 = ".closure.js";	$i0 = virtualinvoke $r13.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r14 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r15 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r14) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.ts");	goto [?= r1 = $r15];	r1 = $r15;	$r3 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList prefixes>;	if $r3 == null goto $r4 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: java.util.regex.Pattern regexp>;	$r4 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: java.util.regex.Pattern regexp>;	if $r4 == null goto $z7 = 0;	$z7 = 0;	return $z7
;block_num 6