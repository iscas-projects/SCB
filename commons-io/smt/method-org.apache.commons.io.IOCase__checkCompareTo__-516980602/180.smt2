(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2065 0)
(declare-sort var2265 0)
(declare-sort var1336 0)
(declare-sort var783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1336_requireNonNull/1378936425 (var783 String) var783)
(declare-fun cast-from-String-to-var783 (String) var783)
(declare-fun sensitive/-1776202782 (var2065) Bool)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2065 var2065)
(declare-const null-String String)
(declare-const var3382 var2065) ; Statement: r2 := @this: org.apache.commons.io.IOCase 
(assert (not (= var3382 null-var2065)))
(declare-const var2000 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2000 null-String)))
(declare-const var2905 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2905 null-String)))
;(assert (var1336_requireNonNull/1378936425 (cast-from-String-to-var783 var2000) "str1")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "str1") 

(declare-const var2000!1 String)
(declare-const var1842 String)
;(assert (var1336_requireNonNull/1378936425 (cast-from-String-to-var783 var2905) "str2")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "str2") 

(declare-const var2905!1 String)
(declare-const var3684 String)
(define-const var302 Bool (sensitive/-1776202782 var3382)) ; Statement: $z0 = r2.<org.apache.commons.io.IOCase: boolean sensitive> 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int compareToIgnoreCase(java.lang.String)>(r1) 
(assert (not (= (ite var302 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2861 Int (compareTo/1411385946 var2000!1 var2905!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int compareTo(java.lang.String)>(r1) 
(assert (let ((this<other (str.< var2000!1 var2905!1)) (this<=other (str.<= var2000!1 var2905!1)) (compareRes (compareTo/1411385946 var2000!1 var2905!1))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: goto [?= return $i0] 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1336_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var783=([java.lang.String], java.lang.Object), sensitive/-1776202782=([org.apache.commons.io.IOCase], boolean), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2065=org.apache.commons.io.IOCase, var3382=r2, var2000=r0, var2265=null_type, var2905=r1, var1336=java.util.Objects, var783=java.lang.Object, var1842="str1", var3684="str2", var302=$z0, var2861=$i0}
; {org.apache.commons.io.IOCase=var2065, r2=var3382, r0=var2000, null_type=var2265, r1=var2905, java.util.Objects=var1336, java.lang.Object=var783, "str1"=var1842, "str2"=var3684, $z0=var302, $i0=var2861}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.commons.io.IOCase;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "str1");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "str2");	$z0 = r2.<org.apache.commons.io.IOCase: boolean sensitive>;	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int compareToIgnoreCase(java.lang.String)>(r1);	$i0 = virtualinvoke r0.<java.lang.String: int compareTo(java.lang.String)>(r1);	goto [?= return $i0];	return $i0
;block_num 3