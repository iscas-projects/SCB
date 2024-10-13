(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var2762 0)
(declare-sort var833 0)
(declare-sort var1895 0)
(declare-sort var2539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun get/710329867 (var2539 var1895) var1895)
(declare-fun cast-from-var2762-to-var2539 (var2762) var2539)
(declare-fun cast-from-String-to-var1895 (String) var1895)
(declare-fun cast-from-var1895-to-String (var1895) String)
(declare-const null-String String)
(declare-const var833-map var2762)
(declare-const var899 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var899 null-String)))
(define-const var743 var2762 var833-map) ; Statement: $r1 = <cn.hutool.jwt.signers.AlgorithmUtil: cn.hutool.core.map.BiMap map> 
(assert true)
(define-const var1682 String (toUpperCase/1156088314 var899)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var927 var1895 (get/710329867 (cast-from-var2762-to-var2539 var743) (cast-from-String-to-var1895 var1682))) ; Statement: $r3 = virtualinvoke $r1.<cn.hutool.core.map.BiMap: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var3542 String (cast-from-var1895-to-String var927)) ; Statement: $r4 = (java.lang.String) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/1156088314=([java.lang.String], java.lang.String), get/710329867=([cn.hutool.core.map.MapWrapper, java.lang.Object], java.lang.Object), cast-from-var2762-to-var2539=([cn.hutool.core.map.BiMap], cn.hutool.core.map.MapWrapper), cast-from-String-to-var1895=([java.lang.String], java.lang.Object), cast-from-var1895-to-String=([java.lang.Object], java.lang.String)}
; {var899=r0, var478=null_type, var2762=cn.hutool.core.map.BiMap, var833=cn.hutool.jwt.signers.AlgorithmUtil, var743=$r1, var1682=$r2, var1895=java.lang.Object, var2539=cn.hutool.core.map.MapWrapper, var927=$r3, var3542=$r4}
; {r0=var899, null_type=var478, cn.hutool.core.map.BiMap=var2762, cn.hutool.jwt.signers.AlgorithmUtil=var833, $r1=var743, $r2=var1682, java.lang.Object=var1895, cn.hutool.core.map.MapWrapper=var2539, $r3=var927, $r4=var3542}
;seq <java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <cn.hutool.jwt.signers.AlgorithmUtil: cn.hutool.core.map.BiMap map>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase()>();	$r3 = virtualinvoke $r1.<cn.hutool.core.map.BiMap: java.lang.Object get(java.lang.Object)>($r2);	$r4 = (java.lang.String) $r3;	return $r4
;block_num 1