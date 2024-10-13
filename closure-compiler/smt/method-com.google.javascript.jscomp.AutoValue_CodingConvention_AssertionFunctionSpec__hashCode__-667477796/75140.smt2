(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1118 0)
(declare-sort var2788 0)
(declare-sort var2541 0)
(declare-sort var3371 0)
(declare-sort var2020 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun functionName/-1882828661 (var1118) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun closurePrimitive/-1882828661 (var1118) var2541)
(declare-fun hashCode/385986394 (var3371) Int)
(declare-fun cast-from-var2541-to-var3371 (var2541) var3371)
(declare-fun assertionKind/-1882828661 (var1118) var2020)
(declare-fun cast-from-var2020-to-var3371 (var2020) var3371)
(declare-fun paramIndex/-1882828661 (var1118) Int)
(declare-const null-var1118 var1118)
(declare-const null-String String)
(declare-const null-var2541 var2541)
(declare-const var1752 var1118) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec 
(assert (not (= var1752 null-var1118)))
(define-const var3463 String (functionName/-1882828661 var1752)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName> 
(assert (not (= var3463 null-String))) ; Cond: $r1 != null 
(define-const var3889 String (functionName/-1882828661 var1752)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName> 
(assert true)
(define-const var1322 Int (hashCode/-467973558 var3889)) ; Statement: $i9 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3449 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1322)))) ; Statement: $i7 = 1000003 ^ $i9 
(define-const var2114 Int (* var3449 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var3374 var2541 (closurePrimitive/-1882828661 var1752)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive> 
(assert (not (= var3374 null-var2541))) ; Cond: $r3 != null 
(define-const var2330 var2541 (closurePrimitive/-1882828661 var1752)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive> 
(assert true)
(define-const var1689 Int (hashCode/385986394 (cast-from-var2541-to-var3371 var2330))) ; Statement: $i10 = virtualinvoke $r4.<com.google.javascript.rhino.ClosurePrimitive: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3376 Int (bv2nat (bvxor ((_ int2bv 64) var2114) ((_ int2bv 64) var1689)))) ; Statement: $i2 = $i8 ^ $i10 
(define-const var2063 Int (* var3376 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var3530 var2020 (assertionKind/-1882828661 var1752)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind assertionKind> 
(assert true)
(define-const var911 Int (hashCode/385986394 (cast-from-var2020-to-var3371 var3530))) ; Statement: $i0 = virtualinvoke $r5.<com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind: int hashCode()>() 
(define-const var1461 Int (bv2nat (bvxor ((_ int2bv 64) var2063) ((_ int2bv 64) var911)))) ; Statement: $i4 = $i3 ^ $i0 
(define-const var2301 Int (* var1461 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var2273 Int (paramIndex/-1882828661 var1752)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: int paramIndex> 
(define-const var1934 Int (bv2nat (bvxor ((_ int2bv 64) var2301) ((_ int2bv 64) var2273)))) ; Statement: $i6 = $i5 ^ $i1 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {functionName/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], java.lang.String), hashCode/-467973558=([java.lang.String], int), closurePrimitive/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], com.google.javascript.rhino.ClosurePrimitive), hashCode/385986394=([java.lang.Enum], int), cast-from-var2541-to-var3371=([com.google.javascript.rhino.ClosurePrimitive], java.lang.Enum), assertionKind/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind), cast-from-var2020-to-var3371=([com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind], java.lang.Enum), paramIndex/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], int)}
; {var1118=com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec, var1752=r0, var3463=$r1, var2788=null_type, var3889=$r2, var1322=$i9, var3449=$i7, var2114=$i8, var2541=com.google.javascript.rhino.ClosurePrimitive, var3374=$r3, var2330=$r4, var3371=java.lang.Enum, var1689=$i10, var3376=$i2, var2063=$i3, var2020=com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind, var3530=$r5, var911=$i0, var1461=$i4, var2301=$i5, var2273=$i1, var1934=$i6}
; {com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec=var1118, r0=var1752, $r1=var3463, null_type=var2788, $r2=var3889, $i9=var1322, $i7=var3449, $i8=var2114, com.google.javascript.rhino.ClosurePrimitive=var2541, $r3=var3374, $r4=var2330, java.lang.Enum=var3371, $i10=var1689, $i2=var3376, $i3=var2063, com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind=var2020, $r5=var3530, $i0=var911, $i4=var1461, $i5=var2301, $i1=var2273, $i6=var1934}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName>;	$i9 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i7 = 1000003 ^ $i9;	$i8 = $i7 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive>;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive>;	$i10 = virtualinvoke $r4.<com.google.javascript.rhino.ClosurePrimitive: int hashCode()>();	$i2 = $i8 ^ $i10;	$i3 = $i2 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind assertionKind>;	$i0 = virtualinvoke $r5.<com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind: int hashCode()>();	$i4 = $i3 ^ $i0;	$i5 = $i4 * 1000003;	$i1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: int paramIndex>;	$i6 = $i5 ^ $i1;	return $i6
;block_num 5