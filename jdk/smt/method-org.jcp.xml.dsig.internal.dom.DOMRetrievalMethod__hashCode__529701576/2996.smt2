(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var580 0)
(declare-sort var1980 0)
(declare-sort var3946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/143102503 (var580) String)
(declare-fun uri/143102503 (var580) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun transforms/143102503 (var580) var3946)
(declare-fun var3946_hashCode/349796465 (var3946) Int)
(declare-const null-var580 var580)
(declare-const null-String String)
(declare-const var3632 var580) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod 
(assert (not (= var3632 null-var580)))
(define-const var2041 Int 17) ; Statement: i7 = 17 
(define-const var3637 String (type/143102503 var3632)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String type> 
 ; Statement: if $r1 == null goto $i1 = 31 * i7 
(assert (= var3637 null-String)) ; Cond: $r1 == null 
(define-const var1091 Int (* 31 var2041)) ; Statement: $i1 = 31 * i7 
(define-const var2662 String (uri/143102503 var3632)) ; Statement: $r2 = r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String uri> 
(assert true)
(define-const var3410 Int (hashCode/-467973558 var2662)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3048 Int (+ var1091 var3410)) ; Statement: $i5 = $i1 + $i0 
(define-const var319 Int (* 31 var3048)) ; Statement: $i3 = 31 * $i5 
(define-const var3061 var3946 (transforms/143102503 var3632)) ; Statement: $r3 = r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.util.List transforms> 
(define-const var104 Int (var3946_hashCode/349796465 var3061)) ; Statement: $i2 = interfaceinvoke $r3.<java.util.List: int hashCode()>() 
(define-const var2524 Int (+ var319 var104)) ; Statement: $i6 = $i3 + $i2 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {type/143102503=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], java.lang.String), uri/143102503=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], java.lang.String), hashCode/-467973558=([java.lang.String], int), transforms/143102503=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], java.util.List), var3946_hashCode/349796465=([java.util.List], int)}
; {var580=org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod, var3632=r0, var2041=i7, var3637=$r1, var1980=null_type, var1091=$i1, var2662=$r2, var3410=$i0, var3048=$i5, var319=$i3, var3946=java.util.List, var3061=$r3, var104=$i2, var2524=$i6}
; {org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod=var580, r0=var3632, i7=var2041, $r1=var3637, null_type=var1980, $i1=var1091, $r2=var2662, $i0=var3410, $i5=var3048, $i3=var319, java.util.List=var3946, $r3=var3061, $i2=var104, $i6=var2524}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod;	i7 = 17;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String type>;	if $r1 == null goto $i1 = 31 * i7;	$i1 = 31 * i7;	$r2 = r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String uri>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i5 = $i1 + $i0;	$i3 = 31 * $i5;	$r3 = r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.util.List transforms>;	$i2 = interfaceinvoke $r3.<java.util.List: int hashCode()>();	$i6 = $i3 + $i2;	return $i6
;block_num 2