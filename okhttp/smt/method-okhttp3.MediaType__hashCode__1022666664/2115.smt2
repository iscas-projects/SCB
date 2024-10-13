(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mediaType/304202303 (var1889) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1889 var1889)
(declare-const var2111 var1889) ; Statement: r0 := @this: okhttp3.MediaType 
(assert (not (= var2111 null-var1889)))
(define-const var3245 String (mediaType/304202303 var2111)) ; Statement: $r1 = r0.<okhttp3.MediaType: java.lang.String mediaType> 
(assert true)
(define-const var847 Int (hashCode/-467973558 var3245)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {mediaType/304202303=([okhttp3.MediaType], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1889=okhttp3.MediaType, var2111=r0, var3245=$r1, var847=$i0}
; {okhttp3.MediaType=var1889, r0=var2111, $r1=var3245, $i0=var847}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: okhttp3.MediaType;	$r1 = r0.<okhttp3.MediaType: java.lang.String mediaType>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1