(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var82 0)
(declare-sort var2105 0)
(declare-sort var84 0)
(declare-sort var2909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun prefixes/1462084866 (var82) var84)
(declare-fun regexp/1462084866 (var82) var2909)
(declare-const null-var82 var82)
(declare-const null-String String)
(declare-const null-var84 var84)
(declare-const null-var2909 var2909)
(declare-const var3839 var82) ; Statement: r2 := @this: com.google.javascript.jscomp.ConformanceRules$AllowList 
(assert (not (= var3839 null-var82)))
(declare-const var392 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var392 null-String)))
(assert true)
(define-const var1438 Bool (endsWith/985337093 var392 ".closure.js")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js") 
 ; Statement: if $z0 == 0 goto $r15 = null 
(assert (= (ite var1438 1 0) 0)) ; Cond: $z0 == 0 
(define-const var619 String null-String) ; Statement: $r15 = null 
(assert true) ; Non Conditional
(define-const var2796 String var619) ; Statement: r1 = $r15 
(define-const var2209 var84 (prefixes/1462084866 var3839)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList prefixes> 
 ; Statement: if $r3 == null goto $r4 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: java.util.regex.Pattern regexp> 
(assert (= var2209 null-var84)) ; Cond: $r3 == null 
(define-const var3601 var2909 (regexp/1462084866 var3839)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: java.util.regex.Pattern regexp> 
 ; Statement: if $r4 == null goto $z7 = 0 
(assert (= var3601 null-var2909)) ; Cond: $r4 == null 
(define-const var1296 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z7 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), prefixes/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), regexp/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], java.util.regex.Pattern)}
; {var82=com.google.javascript.jscomp.ConformanceRules$AllowList, var3839=r2, var392=r0, var2105=null_type, var1438=$z0, var619=$r15, var2796=r1, var84=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2209=$r3, var2909=java.util.regex.Pattern, var3601=$r4, var1296=$z7}
; {com.google.javascript.jscomp.ConformanceRules$AllowList=var82, r2=var3839, r0=var392, null_type=var2105, $z0=var1438, $r15=var619, r1=var2796, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var84, $r3=var2209, java.util.regex.Pattern=var2909, $r4=var3601, $z7=var1296}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ConformanceRules$AllowList;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js");	if $z0 == 0 goto $r15 = null;	$r15 = null;	r1 = $r15;	$r3 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList prefixes>;	if $r3 == null goto $r4 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: java.util.regex.Pattern regexp>;	$r4 = r2.<com.google.javascript.jscomp.ConformanceRules$AllowList: java.util.regex.Pattern regexp>;	if $r4 == null goto $z7 = 0;	$z7 = 0;	return $z7
;block_num 6