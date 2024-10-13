(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun url/-122403576 (var3663) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3663 var3663)
(declare-const var2927 var3663) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var2927 null-var3663)))
(define-const var2204 String (url/-122403576 var2927)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert true)
(define-const var688 Int (hashCode/-467973558 var2204)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {url/-122403576=([okhttp3.HttpUrl], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3663=okhttp3.HttpUrl, var2927=r0, var2204=$r1, var688=$i0}
; {okhttp3.HttpUrl=var3663, r0=var2927, $r1=var2204, $i0=var688}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String url>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1