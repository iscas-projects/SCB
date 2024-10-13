(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var482 0)
(declare-sort var619 0)
(declare-sort var794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun polyType/864334994 (var482) String)
(declare-const null-var482 var482)
(declare-const null-String String)
(declare-const null-var794 var794)
(declare-const var3933 var482) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable 
(assert (not (= var3933 null-var482)))
(declare-const var3243 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3243 null-String)))
(declare-const var104 var794) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var104 null-var794)))
(assert true)
(define-const var43 Bool (equalsIgnoreCase/-92311102 var3243 "ant-type")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("ant-type") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.LinkedHashMap attributeMap> 
(assert (not (= (ite var43 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r4 != null goto $r10 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>() 
(assert (not (not (= var104 null-var794)))) ; Negate: Cond: r4 != null  
(define-const var305 String null-String) ; Statement: $r10 = null 
 ; Statement: goto [?= r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String polyType> = $r10] 
(assert true) ; Non Conditional
(declare-const var3933!1 var482)
(assert (not (= var3933!1 null-var482)))
(assert (= (polyType/864334994 var3933!1) var305)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String polyType> = $r10 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), polyType/864334994=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable], java.lang.String)}
; {var482=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable, var3933=r1, var3243=r0, var619=null_type, var794=java.lang.Object, var104=r4, var43=$z0, var305=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable=var482, r1=var3933, r0=var3243, null_type=var619, java.lang.Object=var794, r4=var104, $z0=var43, $r10=var305}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("ant-type");	if $z0 == 0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.util.LinkedHashMap attributeMap>;	if r4 != null goto $r10 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>();	$r10 = null;	goto [?= r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String polyType> = $r10];	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.RuntimeConfigurable: java.lang.String polyType> = $r10;	goto [?= return];	return
;block_num 5