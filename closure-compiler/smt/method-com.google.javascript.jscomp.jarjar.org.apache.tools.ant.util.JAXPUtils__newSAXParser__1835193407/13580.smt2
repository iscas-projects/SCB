(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var819 0)
(declare-sort var2098 0)
(declare-sort var129 0)
(declare-sort var2833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2833_convertToBuildException/-1779897545 (var2098) var129)
(declare-const null-var819 var819)
(declare-const null-var2098 var2098)
(declare-const var1460 var819) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory 
(assert (not (= var1460 null-var819)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2638 var2098) ; Statement: $r2 := @caughtexception 
(assert (not (= var2638 null-var2098)))
(define-const var2390 var129 (var2833_convertToBuildException/-1779897545 var2638)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException convertToBuildException(org.xml.sax.SAXException)>($r2) 
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2833_convertToBuildException/-1779897545=([org.xml.sax.SAXException], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException)}
; {var819=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory, var1460=r0, var2098=org.xml.sax.SAXException, var2638=$r2, var129=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2833=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils, var2390=$r3}
; {com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory=var819, r0=var1460, org.xml.sax.SAXException=var2098, $r2=var2638, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var129, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils=var2833, $r3=var2390}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParserFactory;	$r2 := @caughtexception;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.JAXPUtils: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException convertToBuildException(org.xml.sax.SAXException)>($r2);	throw $r3
;block_num 2