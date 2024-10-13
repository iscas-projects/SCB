(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1395 0)
(declare-sort var1255 0)
(declare-sort var1021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1021_base64EncodeInt/-126031911 (Int) String)
(declare-const null-var1395 var1395)
(declare-const null-String String)
(declare-const var1733 var1395) ; Statement: r2 := @this: com.google.javascript.jscomp.ReplaceIdGenerators$StableNameSupplier 
(assert (not (= var1733 null-var1395)))
(declare-const var22 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var22 null-String)))
(declare-const var1265 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1265 null-String)))
(assert true)
(define-const var331 Int (hashCode/-467973558 var1265)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(define-const var3436 String (var1021_base64EncodeInt/-126031911 var331)) ; Statement: $r1 = staticinvoke <com.google.debugging.sourcemap.Base64: java.lang.String base64EncodeInt(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1021_base64EncodeInt/-126031911=([int], java.lang.String)}
; {var1395=com.google.javascript.jscomp.ReplaceIdGenerators$StableNameSupplier, var1733=r2, var22=r3, var1255=null_type, var1265=r0, var331=$i0, var1021=com.google.debugging.sourcemap.Base64, var3436=$r1}
; {com.google.javascript.jscomp.ReplaceIdGenerators$StableNameSupplier=var1395, r2=var1733, r3=var22, null_type=var1255, r0=var1265, $i0=var331, com.google.debugging.sourcemap.Base64=var1021, $r1=var3436}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ReplaceIdGenerators$StableNameSupplier;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$r1 = staticinvoke <com.google.debugging.sourcemap.Base64: java.lang.String base64EncodeInt(int)>($i0);	return $r1
;block_num 1