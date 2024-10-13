(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var242 0)
(declare-sort var2988 0)
(declare-sort var683 0)
(declare-sort var147 0)
(declare-sort var1739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var683_getAttributes/1383780881 (var683) var1739)
(declare-fun var1739_getNamedItem/1322792843 (var1739 String) var683)
(declare-const null-var242 var242)
(declare-const null-var2988 var2988)
(declare-const null-var683 var683)
(declare-const null-String String)
(declare-const var2192 var242) ; Statement: r5 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var2192 null-var242)))
(declare-const var603 var2988) ; Statement: r4 := @parameter0: org.w3c.dom.Document 
(assert (not (= var603 null-var2988)))
(declare-const var2 var683) ; Statement: r2 := @parameter1: org.w3c.dom.Node 
(assert (not (= var2 null-var683)))
(declare-const var2691 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2691 null-String)))
(assert (and true (and (>= 1 0) (>= (str.len var2691) 1))))
(define-const var1351 String (substring/850833817 var2691 1)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
(define-const var1966 var1739 (var683_getAttributes/1383780881 var2)) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Node: org.w3c.dom.NamedNodeMap getAttributes()>() 
(define-const var1661 var683 (var1739_getNamedItem/1322792843 var1966 var1351)) ; Statement: r6 = interfaceinvoke r3.<org.w3c.dom.NamedNodeMap: org.w3c.dom.Node getNamedItem(java.lang.String)>(r1) 
 ; Statement: if r6 != null goto return r6 
(assert (not (= var1661 null-var683))) ; Cond: r6 != null 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {substring/850833817=([java.lang.String, int], java.lang.String), var683_getAttributes/1383780881=([org.w3c.dom.Node], org.w3c.dom.NamedNodeMap), var1739_getNamedItem/1322792843=([org.w3c.dom.NamedNodeMap, java.lang.String], org.w3c.dom.Node)}
; {var242=org.apache.poi.xssf.extractor.XSSFExportToXml, var2192=r5, var2988=org.w3c.dom.Document, var603=r4, var683=org.w3c.dom.Node, var2=r2, var2691=r0, var147=null_type, var1351=r1, var1739=org.w3c.dom.NamedNodeMap, var1966=r3, var1661=r6}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var242, r5=var2192, org.w3c.dom.Document=var2988, r4=var603, org.w3c.dom.Node=var683, r2=var2, r0=var2691, null_type=var147, r1=var1351, org.w3c.dom.NamedNodeMap=var1739, r3=var1966, r6=var1661}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r5 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r4 := @parameter0: org.w3c.dom.Document;	r2 := @parameter1: org.w3c.dom.Node;	r0 := @parameter2: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	r3 = interfaceinvoke r2.<org.w3c.dom.Node: org.w3c.dom.NamedNodeMap getAttributes()>();	r6 = interfaceinvoke r3.<org.w3c.dom.NamedNodeMap: org.w3c.dom.Node getNamedItem(java.lang.String)>(r1);	if r6 != null goto return r6;	return r6
;block_num 2