(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun storedPlaceholderName/-380392461 (var2110) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun canonicalFormat/-380392461 (var2110) Bool)
(declare-const null-var2110 var2110)
(declare-const var1945 var2110) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference 
(assert (not (= var1945 null-var2110)))
(define-const var653 String (storedPlaceholderName/-380392461 var1945)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: java.lang.String storedPlaceholderName> 
(assert true)
(define-const var1555 Int (hashCode/-467973558 var653)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var204 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1555)))) ; Statement: i2 = 1000003 ^ $i0 
(define-const var2630 Int (* var204 1000003)) ; Statement: i3 = i2 * 1000003 
(define-const var1001 Bool (canonicalFormat/-380392461 var1945)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: boolean canonicalFormat> 
 ; Statement: if $z0 == 0 goto $s4 = 1237 
(assert (not (= (ite var1001 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var640 Int 1231) ; Statement: $s4 = 1231 
 ; Statement: goto [?= $i1 = i3 ^ $s4] 
(assert true) ; Non Conditional
(define-const var3573 Int (bv2nat (bvxor ((_ int2bv 64) var2630) ((_ int2bv 64) var640)))) ; Statement: $i1 = i3 ^ $s4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {storedPlaceholderName/-380392461=([com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), canonicalFormat/-380392461=([com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference], boolean)}
; {var2110=com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference, var1945=r0, var653=$r1, var1555=$i0, var204=i2, var2630=i3, var1001=$z0, var640=$s4, var3573=$i1}
; {com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference=var2110, r0=var1945, $r1=var653, $i0=var1555, i2=var204, i3=var2630, $z0=var1001, $s4=var640, $i1=var3573}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: java.lang.String storedPlaceholderName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i2 = 1000003 ^ $i0;	i3 = i2 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_PlaceholderReference: boolean canonicalFormat>;	if $z0 == 0 goto $s4 = 1237;	$s4 = 1231;	goto [?= $i1 = i3 ^ $s4];	$i1 = i3 ^ $s4;	return $i1
;block_num 3