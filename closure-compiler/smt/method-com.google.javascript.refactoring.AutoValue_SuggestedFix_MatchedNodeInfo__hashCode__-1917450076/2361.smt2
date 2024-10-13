(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceFilename/206615755 (var3418) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun lineno/206615755 (var3418) Int)
(declare-fun charno/206615755 (var3418) Int)
(declare-fun inClosurizedFile/206615755 (var3418) Bool)
(declare-const null-var3418 var3418)
(declare-const var2279 var3418) ; Statement: r0 := @this: com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo 
(assert (not (= var2279 null-var3418)))
(define-const var2035 String (sourceFilename/206615755 var2279)) ; Statement: $r1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: java.lang.String sourceFilename> 
(assert true)
(define-const var2045 Int (hashCode/-467973558 var2035)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1271 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2045)))) ; Statement: i4 = 1000003 ^ $i0 
(define-const var1258 Int (* var1271 1000003)) ; Statement: i5 = i4 * 1000003 
(define-const var3440 Int (lineno/206615755 var2279)) ; Statement: $i1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int lineno> 
(define-const var3132 Int (bv2nat (bvxor ((_ int2bv 64) var1258) ((_ int2bv 64) var3440)))) ; Statement: i6 = i5 ^ $i1 
(define-const var1871 Int (* var3132 1000003)) ; Statement: i7 = i6 * 1000003 
(define-const var771 Int (charno/206615755 var2279)) ; Statement: $i2 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int charno> 
(define-const var571 Int (bv2nat (bvxor ((_ int2bv 64) var1871) ((_ int2bv 64) var771)))) ; Statement: i8 = i7 ^ $i2 
(define-const var3073 Int (* var571 1000003)) ; Statement: i9 = i8 * 1000003 
(define-const var2149 Bool (inClosurizedFile/206615755 var2279)) ; Statement: $z0 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: boolean inClosurizedFile> 
 ; Statement: if $z0 == 0 goto $s10 = 1237 
(assert (not (= (ite var2149 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1865 Int 1231) ; Statement: $s10 = 1231 
 ; Statement: goto [?= $i3 = i9 ^ $s10] 
(assert true) ; Non Conditional
(define-const var3941 Int (bv2nat (bvxor ((_ int2bv 64) var3073) ((_ int2bv 64) var1865)))) ; Statement: $i3 = i9 ^ $s10 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceFilename/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), lineno/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], int), charno/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], int), inClosurizedFile/206615755=([com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo], boolean)}
; {var3418=com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo, var2279=r0, var2035=$r1, var2045=$i0, var1271=i4, var1258=i5, var3440=$i1, var3132=i6, var1871=i7, var771=$i2, var571=i8, var3073=i9, var2149=$z0, var1865=$s10, var3941=$i3}
; {com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo=var3418, r0=var2279, $r1=var2035, $i0=var2045, i4=var1271, i5=var1258, $i1=var3440, i6=var3132, i7=var1871, $i2=var771, i8=var571, i9=var3073, $z0=var2149, $s10=var1865, $i3=var3941}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo;	$r1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: java.lang.String sourceFilename>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i4 = 1000003 ^ $i0;	i5 = i4 * 1000003;	$i1 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int lineno>;	i6 = i5 ^ $i1;	i7 = i6 * 1000003;	$i2 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: int charno>;	i8 = i7 ^ $i2;	i9 = i8 * 1000003;	$z0 = r0.<com.google.javascript.refactoring.AutoValue_SuggestedFix_MatchedNodeInfo: boolean inClosurizedFile>;	if $z0 == 0 goto $s10 = 1237;	$s10 = 1231;	goto [?= $i3 = i9 ^ $s10];	$i3 = i9 ^ $s10;	return $i3
;block_num 3