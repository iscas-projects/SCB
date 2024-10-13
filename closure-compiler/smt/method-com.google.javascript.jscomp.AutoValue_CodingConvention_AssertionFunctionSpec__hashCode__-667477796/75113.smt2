(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3159 0)
(declare-sort var1531 0)
(declare-sort var1650 0)
(declare-sort var1103 0)
(declare-sort var178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun functionName/-1882828661 (var3159) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun closurePrimitive/-1882828661 (var3159) var1650)
(declare-fun assertionKind/-1882828661 (var3159) var1103)
(declare-fun hashCode/385986394 (var178) Int)
(declare-fun cast-from-var1103-to-var178 (var1103) var178)
(declare-fun paramIndex/-1882828661 (var3159) Int)
(declare-const null-var3159 var3159)
(declare-const null-String String)
(declare-const null-var1650 var1650)
(declare-const var2627 var3159) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec 
(assert (not (= var2627 null-var3159)))
(define-const var2663 String (functionName/-1882828661 var2627)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName> 
(assert (not (= var2663 null-String))) ; Cond: $r1 != null 
(define-const var622 String (functionName/-1882828661 var2627)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName> 
(assert true)
(define-const var3728 Int (hashCode/-467973558 var622)) ; Statement: $i9 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2504 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3728)))) ; Statement: $i7 = 1000003 ^ $i9 
(define-const var1189 Int (* var2504 1000003)) ; Statement: $i8 = $i7 * 1000003 
(define-const var955 var1650 (closurePrimitive/-1882828661 var2627)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive> 
(assert (not (not (= var955 null-var1650)))) ; Negate: Cond: $r3 != null  
(define-const var841 Int 0) ; Statement: $i10 = 0 
 ; Statement: goto [?= $i2 = $i8 ^ $i10] 
(assert true) ; Non Conditional
(define-const var134 Int (bv2nat (bvxor ((_ int2bv 64) var1189) ((_ int2bv 64) var841)))) ; Statement: $i2 = $i8 ^ $i10 
(define-const var1502 Int (* var134 1000003)) ; Statement: $i3 = $i2 * 1000003 
(define-const var1452 var1103 (assertionKind/-1882828661 var2627)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind assertionKind> 
(assert true)
(define-const var477 Int (hashCode/385986394 (cast-from-var1103-to-var178 var1452))) ; Statement: $i0 = virtualinvoke $r5.<com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind: int hashCode()>() 
(define-const var3677 Int (bv2nat (bvxor ((_ int2bv 64) var1502) ((_ int2bv 64) var477)))) ; Statement: $i4 = $i3 ^ $i0 
(define-const var3770 Int (* var3677 1000003)) ; Statement: $i5 = $i4 * 1000003 
(define-const var3854 Int (paramIndex/-1882828661 var2627)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: int paramIndex> 
(define-const var2780 Int (bv2nat (bvxor ((_ int2bv 64) var3770) ((_ int2bv 64) var3854)))) ; Statement: $i6 = $i5 ^ $i1 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {functionName/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], java.lang.String), hashCode/-467973558=([java.lang.String], int), closurePrimitive/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], com.google.javascript.rhino.ClosurePrimitive), assertionKind/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind), hashCode/385986394=([java.lang.Enum], int), cast-from-var1103-to-var178=([com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind], java.lang.Enum), paramIndex/-1882828661=([com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec], int)}
; {var3159=com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec, var2627=r0, var2663=$r1, var1531=null_type, var622=$r2, var3728=$i9, var2504=$i7, var1189=$i8, var1650=com.google.javascript.rhino.ClosurePrimitive, var955=$r3, var841=$i10, var134=$i2, var1502=$i3, var1103=com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind, var1452=$r5, var178=java.lang.Enum, var477=$i0, var3677=$i4, var3770=$i5, var3854=$i1, var2780=$i6}
; {com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec=var3159, r0=var2627, $r1=var2663, null_type=var1531, $r2=var622, $i9=var3728, $i7=var2504, $i8=var1189, com.google.javascript.rhino.ClosurePrimitive=var1650, $r3=var955, $i10=var841, $i2=var134, $i3=var1502, com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind=var1103, $r5=var1452, java.lang.Enum=var178, $i0=var477, $i4=var3677, $i5=var3770, $i1=var3854, $i6=var2780}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: java.lang.String functionName>;	$i9 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i7 = 1000003 ^ $i9;	$i8 = $i7 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.rhino.ClosurePrimitive closurePrimitive>;	$i10 = 0;	goto [?= $i2 = $i8 ^ $i10];	$i2 = $i8 ^ $i10;	$i3 = $i2 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind assertionKind>;	$i0 = virtualinvoke $r5.<com.google.javascript.jscomp.CodingConvention$AssertionFunctionSpec$AssertionKind: int hashCode()>();	$i4 = $i3 ^ $i0;	$i5 = $i4 * 1000003;	$i1 = r0.<com.google.javascript.jscomp.AutoValue_CodingConvention_AssertionFunctionSpec: int paramIndex>;	$i6 = $i5 ^ $i1;	return $i6
;block_num 5