(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1135698820 (var124) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var124 var124)
(declare-const var3925 var124) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyName 
(assert (not (= var3925 null-var124)))
(define-const var1933 String (name/-1135698820 var3925)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyName: java.lang.String name> 
(assert true)
(define-const var3932 Int (hashCode/-467973558 var1933)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1689 Int (+ 527 var3932)) ; Statement: i1 = 527 + $i0 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1135698820=([org.jcp.xml.dsig.internal.dom.DOMKeyName], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var124=org.jcp.xml.dsig.internal.dom.DOMKeyName, var3925=r0, var1933=$r1, var3932=$i0, var1689=i1}
; {org.jcp.xml.dsig.internal.dom.DOMKeyName=var124, r0=var3925, $r1=var1933, $i0=var3932, i1=var1689}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyName;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyName: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i1 = 527 + $i0;	return i1
;block_num 1