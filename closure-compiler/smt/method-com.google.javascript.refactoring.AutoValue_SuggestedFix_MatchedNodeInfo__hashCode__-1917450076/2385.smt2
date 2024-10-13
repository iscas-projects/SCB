(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceFilename/206615755 (var1700) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun lineno/206615755 (var1700) Int)
(declare-fun charno/206615755 (var1700) Int)
(declare-fun inClosurizedFile/206615755 (var1700) Bool)
(declare-const null-var1700 var1700)
(declare-const var3017 var1700) ; Statement: r0 := @this: com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo 
(assert (not (= var3017 null-var1700)))
(define-const var2602 String (sourceFilename/206615755 var3017)) ; Statement: $r1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: java.lang.String sourceFilename> 
(assert true)
(define-const var2958 Int (hashCode/-467973558 var2602)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1780 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2958)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var642 Int (* var1780 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var907 Int (lineno/206615755 var3017)) ; Statement: $i1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int lineno> 
(define-const var614 Int (bv2nat (bvxor ((_ int2bv 64) var642) ((_ int2bv 64) var907)))) ; Statement: i6 = i5 ^ $i1 
(define-const var1826 Int (* var614 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var991 Int (charno/206615755 var3017)) ; Statement: $i2 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int charno> 
(define-const var1676 Int (bv2nat (bvxor ((_ int2bv 64) var1826) ((_ int2bv 64) var991)))) ; Statement: i8 = i7 ^ $i2 
(define-const var3601 Int (* var1676 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var3037 Bool (inClosurizedFile/206615755 var3017)) ; Statement: $z0 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: boolean inClosurizedFile> 
 ; Statement: if $z0 == 0 goto $s10 = 1237 
(assert (= (ite var3037 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1651 Int 1237) ; Statement: $s10 = 1237 
(assert true) ; Non Conditional
(define-const var3206 Int (bv2nat (bvxor ((_ int2bv 64) var3601) ((_ int2bv 64) var1651)))) ; Statement: $i3 = i9 ^ $s10 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceFilename/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), lineno/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], int), charno/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], int), inClosurizedFile/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], boolean)}
; {var1700=com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo, var3017=r0, var2602=$r1, var2958=$i0, var1780=i4, var642=i5, var907=$i1, var614=i6, var1826=i7, var991=$i2, var1676=i8, var3601=i9, var3037=$z0, var1651=$s10, var3206=$i3}
; {com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo=var1700, r0=var3017, $r1=var2602, $i0=var2958, i4=var1780, i5=var642, $i1=var907, i6=var614, i7=var1826, $i2=var991, i8=var1676, i9=var3601, $z0=var3037, $s10=var1651, $i3=var3206}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo;	$r1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: java.lang.String sourceFilename>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$i1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int lineno>;	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$i2 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int charno>;	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$z0 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: boolean inClosurizedFile>;	if $z0 == 0 goto $s10 = 1237;	$s10 = 1237;	$i3 = i9 ^ $s10;	return $i3
;block_num 3