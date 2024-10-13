(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/285372278 (var997) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var997 var997)
(declare-const var1565 var997) ; Statement: r0 := @this: org.apache.tomcat.util.buf.StringCache$CharEntry 
(assert (not (= var1565 null-var997)))
(define-const var3071 String (value/285372278 var1565)) ; Statement: $r1 = r0.<org.apache.tomcat.util.buf.StringCache$CharEntry: java.lang.String value> 
(assert true)
(define-const var1000 Int (hashCode/-467973558 var3071)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/285372278=([org.apache.tomcat.util.buf.StringCache$CharEntry], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var997=org.apache.tomcat.util.buf.StringCache$CharEntry, var1565=r0, var3071=$r1, var1000=$i0}
; {org.apache.tomcat.util.buf.StringCache$CharEntry=var997, r0=var1565, $r1=var3071, $i0=var1000}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.StringCache$CharEntry;	$r1 = r0.<org.apache.tomcat.util.buf.StringCache$CharEntry: java.lang.String value>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1