(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/1730255466 (var3421) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3421 var3421)
(declare-const var3388 var3421) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement 
(assert (not (= var3388 null-var3421)))
(assert true)
(define-const var2262 String (prefix/1730255466 var3388)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement: java.lang.String prefix()>() 
(assert true)
(define-const var1760 Int (length/-134980193 var2262)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/1730255466=([com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3421=com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement, var3388=r0, var2262=$r1, var1760=$i0}
; {com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement=var3421, r0=var3388, $r1=var2262, $i0=var1760}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.deps.BrowserWithTransformedPrefixesModuleResolver$PrefixReplacement: java.lang.String prefix()>();	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1