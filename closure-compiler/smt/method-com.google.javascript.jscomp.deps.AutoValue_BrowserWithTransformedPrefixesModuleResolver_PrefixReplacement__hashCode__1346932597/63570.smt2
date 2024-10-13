(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/-1938580262 (var3127) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun replacement/-1938580262 (var3127) String)
(declare-const null-var3127 var3127)
(declare-const var1838 var3127) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement 
(assert (not (= var1838 null-var3127)))
(define-const var1316 String (prefix/-1938580262 var1838)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement: java.lang.String prefix> 
(assert true)
(define-const var819 Int (hashCode/-467973558 var1316)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var135 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var819)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var362 Int (* var135 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var3455 String (replacement/-1938580262 var1838)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement: java.lang.String replacement> 
(assert true)
(define-const var2065 Int (hashCode/-467973558 var3455)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2468 Int (bv2nat (bvxor ((_ int2bv 64) var362) ((_ int2bv 64) var2065)))) ; Statement: i4 = i3 ^ $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/-1938580262=([com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement], java.lang.String), hashCode/-467973558=([java.lang.String], int), replacement/-1938580262=([com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement], java.lang.String)}
; {var3127=com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement, var1838=r0, var1316=$r1, var819=$i0, var135=i2, var362=i3, var3455=$r2, var2065=$i1, var2468=i4}
; {com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement=var3127, r0=var1838, $r1=var1316, $i0=var819, i2=var135, i3=var362, $r2=var3455, $i1=var2065, i4=var2468}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement;	$r1 = r0.<com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement: java.lang.String prefix>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.deps.AutoValue_BrowserWithTransformedPrefixesModuleResolver_PrefixReplacement: java.lang.String replacement>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i4 = i3 ^ $i1;	return i4
;block_num 1