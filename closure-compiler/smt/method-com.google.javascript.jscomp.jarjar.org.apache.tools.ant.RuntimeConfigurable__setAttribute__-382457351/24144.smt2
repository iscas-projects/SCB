(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2824 0)
(declare-sort var2083 0)
(declare-sort var2057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun toString/-522406933 (var2057) String)
(declare-fun polyType/864334994 (var2824) String)
(declare-const null-var2824 var2824)
(declare-const null-String String)
(declare-const null-var2057 var2057)
(declare-const var2212 var2824) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var2212 null-var2824)))
(declare-const var2256 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2256 null-String)))
(declare-const var2375 var2057) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var2375 null-var2057)))
(assert true)
(define-const var1840 Bool (equalsIgnoreCase/-92311102 var2256 "ant-type")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("ant-type") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.LinkedHashMap attributeMap> 
(assert (not (= (ite var1840 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r4 != null goto $r10 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= var2375 null-var2057))) ; Cond: r4 != null 
(assert true)
(define-const var3643 String (toString/-522406933 var2375)) ; Statement: $r10 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(declare-const var2212!1 var2824)
(assert (not (= var2212!1 null-var2824)))
(assert (= (polyType/864334994 var2212!1) var3643)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String polyType> = $r10 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), toString/-522406933=([java.lang.Object], java.lang.String), polyType/864334994=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.String)}
; {var2824=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var2212=r1, var2256=r0, var2083=null_type, var2057=java.lang.Object, var2375=r4, var1840=$z0, var3643=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var2824, r1=var2212, r0=var2256, null_type=var2083, java.lang.Object=var2057, r4=var2375, $z0=var1840, $r10=var3643}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("ant-type");	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.LinkedHashMap attributeMap>;	if r4 != null goto $r10 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>();	$r10 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String polyType> = $r10;	goto [?= return];	return
;block_num 5