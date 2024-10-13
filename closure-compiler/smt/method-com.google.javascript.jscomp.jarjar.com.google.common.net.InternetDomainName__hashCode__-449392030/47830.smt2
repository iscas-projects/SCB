(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1824947533 (var1160) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1160 var1160)
(declare-const var1928 var1160) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 
(assert (not (= var1928 null-var1160)))
(define-const var2431 String (name/1824947533 var1928)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> 
(assert true)
(define-const var922 Int (hashCode/-467973558 var2431)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1160=com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName, var1928=r0, var2431=$r1, var922=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName=var1160, r0=var1928, $r1=var2431, $i0=var922}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	return $i0
;block_num 1