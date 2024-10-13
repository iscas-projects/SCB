(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2591 0)
(declare-sort var2178 0)
(declare-sort var2305 0)
(declare-sort var776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2305_requireNonNull/1378936425 (var776 String) var776)
(declare-fun cast-from-String-to-var776 (String) var776)
(declare-fun sensitive/-1776202782 (var2591) Bool)
(declare-fun compareToIgnoreCase/-2091691816 (String String) Int)
(declare-const null-var2591 var2591)
(declare-const null-String String)
(declare-const var3841 var2591) ; Statement: r2 := @this: org.apache.commons.io.IOCase 
(assert (not (= var3841 null-var2591)))
(declare-const var1395 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1395 null-String)))
(declare-const var1383 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1383 null-String)))
;(assert (var2305_requireNonNull/1378936425 (cast-from-String-to-var776 var1395) "str1")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "str1") 

(declare-const var1395!1 String)
(declare-const var3545 String)
;(assert (var2305_requireNonNull/1378936425 (cast-from-String-to-var776 var1383) "str2")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "str2") 

(declare-const var1383!1 String)
(declare-const var3809 String)
(define-const var2842 Bool (sensitive/-1776202782 var3841)) ; Statement: $z0 = r2.<org.apache.commons.io.IOCase: boolean sensitive> 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int compareToIgnoreCase(java.lang.String)>(r1) 
(assert (= (ite var2842 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2511 Int (compareToIgnoreCase/-2091691816 var1395!1 var1383!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int compareToIgnoreCase(java.lang.String)>(r1) 
(assert (let ((thisS (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all var1395!1 "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (otherS (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all var1383!1 "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (let ((this<other (str.< thisS otherS)) (this<=other (str.<= thisS otherS)) (compareRes (compareToIgnoreCase/-2091691816 var1395!1 var1383!1))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other)))))
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2305_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var776=([java.lang.String], java.lang.Object), sensitive/-1776202782=([org.apache.commons.io.IOCase], boolean), compareToIgnoreCase/-2091691816=([java.lang.String, java.lang.String], int)}
; {var2591=org.apache.commons.io.IOCase, var3841=r2, var1395=r0, var2178=null_type, var1383=r1, var2305=java.util.Objects, var776=java.lang.Object, var3545="str1", var3809="str2", var2842=$z0, var2511=$i0}
; {org.apache.commons.io.IOCase=var2591, r2=var3841, r0=var1395, null_type=var2178, r1=var1383, java.util.Objects=var2305, java.lang.Object=var776, "str1"=var3545, "str2"=var3809, $z0=var2842, $i0=var2511}
;seq <java.lang.String: int compareToIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: int compareToIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: org.apache.commons.io.IOCase;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "str1");	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "str2");	$z0 = r2.<org.apache.commons.io.IOCase: boolean sensitive>;	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int compareToIgnoreCase(java.lang.String)>(r1);	$i0 = virtualinvoke r0.<java.lang.String: int compareToIgnoreCase(java.lang.String)>(r1);	return $i0
;block_num 3