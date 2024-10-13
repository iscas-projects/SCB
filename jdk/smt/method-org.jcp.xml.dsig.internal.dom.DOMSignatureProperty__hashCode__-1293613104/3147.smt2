(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1363 0)
(declare-sort var2585 0)
(declare-sort var2824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun id/954692383 (var1363) String)
(declare-fun target/954692383 (var1363) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun content/954692383 (var1363) var2824)
(declare-fun var2824_hashCode/349796465 (var2824) Int)
(declare-const null-var1363 var1363)
(declare-const null-String String)
(declare-const var440 var1363) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMSignatureProperty 
(assert (not (= var440 null-var1363)))
(define-const var2478 Int 17) ; Statement: i7 = 17 
(define-const var2963 String (id/954692383 var440)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignatureProperty: java.lang.String id> 
 ; Statement: if $r1 == null goto $i1 = 31 * i7 
(assert (= var2963 null-String)) ; Cond: $r1 == null 
(define-const var2111 Int (* 31 var2478)) ; Statement: $i1 = 31 * i7 
(define-const var2645 String (target/954692383 var440)) ; Statement: $r2 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignatureProperty: java.lang.String target> 
(assert true)
(define-const var1261 Int (hashCode/-467973558 var2645)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2640 Int (+ var2111 var1261)) ; Statement: $i5 = $i1 + $i0 
(define-const var2347 Int (* 31 var2640)) ; Statement: $i3 = 31 * $i5 
(define-const var3958 var2824 (content/954692383 var440)) ; Statement: $r3 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignatureProperty: java.util.List content> 
(define-const var1302 Int (var2824_hashCode/349796465 var3958)) ; Statement: $i2 = interfaceinvoke $r3.<java.util.List: int hashCode()>() 
(define-const var2438 Int (+ var2347 var1302)) ; Statement: $i6 = $i3 + $i2 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {id/954692383=([org.jcp.xml.dsig.internal.dom.DOMSignatureProperty], java.lang.String), target/954692383=([org.jcp.xml.dsig.internal.dom.DOMSignatureProperty], java.lang.String), hashCode/-467973558=([java.lang.String], int), content/954692383=([org.jcp.xml.dsig.internal.dom.DOMSignatureProperty], java.util.List), var2824_hashCode/349796465=([java.util.List], int)}
; {var1363=org.jcp.xml.dsig.internal.dom.DOMSignatureProperty, var440=r0, var2478=i7, var2963=$r1, var2585=null_type, var2111=$i1, var2645=$r2, var1261=$i0, var2640=$i5, var2347=$i3, var2824=java.util.List, var3958=$r3, var1302=$i2, var2438=$i6}
; {org.jcp.xml.dsig.internal.dom.DOMSignatureProperty=var1363, r0=var440, i7=var2478, $r1=var2963, null_type=var2585, $i1=var2111, $r2=var2645, $i0=var1261, $i5=var2640, $i3=var2347, java.util.List=var2824, $r3=var3958, $i2=var1302, $i6=var2438}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMSignatureProperty;	i7 = 17;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignatureProperty: java.lang.String id>;	if $r1 == null goto $i1 = 31 * i7;	$i1 = 31 * i7;	$r2 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignatureProperty: java.lang.String target>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i5 = $i1 + $i0;	$i3 = 31 * $i5;	$r3 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignatureProperty: java.util.List content>;	$i2 = interfaceinvoke $r3.<java.util.List: int hashCode()>();	$i6 = $i3 + $i2;	return $i6
;block_num 2