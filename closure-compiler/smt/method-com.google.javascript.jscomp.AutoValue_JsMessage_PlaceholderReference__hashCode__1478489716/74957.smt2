(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun storedPlaceholderName/-380392461 (var1826) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun canonicalFormat/-380392461 (var1826) Bool)
(declare-const null-var1826 var1826)
(declare-const var1220 var1826) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference 
(assert (not (= var1220 null-var1826)))
(define-const var995 String (storedPlaceholderName/-380392461 var1220)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: java.lang.String storedPlaceholderName> 
(assert true)
(define-const var3732 Int (hashCode/-467973558 var995)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1866 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3732)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var3528 Int (* var1866 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var1004 Bool (canonicalFormat/-380392461 var1220)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: boolean canonicalFormat> 
 ; Statement: if $z0 == 0 goto $s4 = 1237 
(assert (= (ite var1004 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3371 Int 1237) ; Statement: $s4 = 1237 
(assert true) ; Non Conditional
(define-const var1494 Int (bv2nat (bvxor ((_ int2bv 64) var3528) ((_ int2bv 64) var3371)))) ; Statement: $i1 = i3 ^ $s4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {storedPlaceholderName/-380392461=([com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), canonicalFormat/-380392461=([com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference], boolean)}
; {var1826=com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference, var1220=r0, var995=$r1, var3732=$i0, var1866=i2, var3528=i3, var1004=$z0, var3371=$s4, var1494=$i1}
; {com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference=var1826, r0=var1220, $r1=var995, $i0=var3732, i2=var1866, i3=var3528, $z0=var1004, $s4=var3371, $i1=var1494}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: java.lang.String storedPlaceholderName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: boolean canonicalFormat>;	if $z0 == 0 goto $s4 = 1237;	$s4 = 1237;	$i1 = i3 ^ $s4;	return $i1
;block_num 3