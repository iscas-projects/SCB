(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lcKey/1655185960 (var1010) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1010 var1010)
(declare-const var571 var1010) ; Statement: r0 := @this: org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key 
(assert (not (= var571 null-var1010)))
(define-const var2614 String (lcKey/1655185960 var571)) ; Statement: $r1 = r0.<org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key: java.lang.String lcKey> 
(assert true)
(define-const var2234 Int (hashCode/-467973558 var2614)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {lcKey/1655185960=([org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1010=org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key, var571=r0, var2614=$r1, var2234=$i0}
; {org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key=var1010, r0=var571, $r1=var2614, $i0=var2234}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key;	$r1 = r0.<org.apache.tomcat.util.collections.CaseInsensitiveKeyMap$Key: java.lang.String lcKey>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1