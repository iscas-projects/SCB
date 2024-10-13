(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3401 0)
(declare-sort var3803 0)
(declare-sort var364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var3803) String)
(declare-fun cast-from-var3401-to-var3803 (var3401) var3803)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3401 var3401)
(declare-const var364-IGNORE var364)
(declare-const var1500 var3401) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy 
(assert (not (= var1500 null-var3401)))
(assert true)
(define-const var195 String (getValue/-1445752687 (cast-from-var3401-to-var3803 var1500))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy: java.lang.String getValue()>() 
(define-const var3959 String "ignore") ; Statement: $r2 = "ignore" 
(assert true)
(define-const var3935 Bool (equalsIgnoreCase/-92311102 var3959 var195)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "elementsOnly" 
(assert (not (= (ite var3935 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var438 var364 var364-IGNORE) ; Statement: $r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy IGNORE> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3401-to-var3803=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3401=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy, var1500=r0, var3803=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var195=r1, var3959=$r2, var3935=$z0, var364=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy, var438=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy=var3401, r0=var1500, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3803, r1=var195, $r2=var3959, $z0=var3935, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy=var364, $r12=var438}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.EchoXML$NamespacePolicy: java.lang.String getValue()>();	$r2 = "ignore";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto $r3 = "elementsOnly";	$r12 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy IGNORE>;	return $r12
;block_num 2