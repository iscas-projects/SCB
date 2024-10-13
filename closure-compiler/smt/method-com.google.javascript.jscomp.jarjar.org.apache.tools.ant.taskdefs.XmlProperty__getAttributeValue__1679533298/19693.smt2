(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1761 0)
(declare-sort var3334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3334_getNodeValue/-332788054 (var3334) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun semanticAttributes/112281648 (var1761) Bool)
(declare-const null-var1761 var1761)
(declare-const null-var3334 var3334)
(declare-const var1396 var1761) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty 
(assert (not (= var1396 null-var1761)))
(declare-const var623 var3334) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var623 null-var3334)))
(define-const var2313 String (var3334_getNodeValue/-332788054 var623)) ; Statement: $r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeValue()>() 
(assert true)
(define-const var25 String (trim/-847153721 var2313)) ; Statement: r10 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var707 Bool (semanticAttributes/112281648 var1396)) ; Statement: $z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean semanticAttributes> 
 ; Statement: if $z0 == 0 goto return r10 
(assert (= (ite var707 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3334_getNodeValue/-332788054=([org.w3c.dom.Node], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), semanticAttributes/112281648=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], boolean)}
; {var1761=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty, var1396=r2, var3334=org.w3c.dom.Node, var623=r0, var2313=$r1, var25=r10, var707=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty=var1761, r2=var1396, org.w3c.dom.Node=var3334, r0=var623, $r1=var2313, r10=var25, $z0=var707}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty;	r0 := @parameter0: org.w3c.dom.Node;	$r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeValue()>();	r10 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	$z0 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: boolean semanticAttributes>;	if $z0 == 0 goto return r10;	return r10
;block_num 2