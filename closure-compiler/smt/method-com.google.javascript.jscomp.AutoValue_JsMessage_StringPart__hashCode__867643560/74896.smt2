(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/-1085968833 (var3434) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3434 var3434)
(declare-const var3710 var3434) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage_StringPart 
(assert (not (= var3710 null-var3434)))
(define-const var220 String (string/-1085968833 var3710)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_StringPart: java.lang.String string> 
(assert true)
(define-const var2281 Int (hashCode/-467973558 var220)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3443 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2281)))) ; Statement: i1 = 1000003 ^ $i0 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {string/-1085968833=([com.google.javascript.jscomp.AutoValue_JsMessage_StringPart], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3434=com.google.javascript.jscomp.AutoValue_JsMessage_StringPart, var3710=r0, var220=$r1, var2281=$i0, var3443=i1}
; {com.google.javascript.jscomp.AutoValue_JsMessage_StringPart=var3434, r0=var3710, $r1=var220, $i0=var2281, i1=var3443}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage_StringPart;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage_StringPart: java.lang.String string>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i1 = 1000003 ^ $i0;	return i1
;block_num 1