(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3292 0)
(declare-sort var2462 0)
(declare-sort var947 0)
(declare-sort var3237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBuffer/-1377036288 (var947) String)
(declare-fun cast-from-var2462-to-var3237 (var2462) var3237)
(declare-fun var3237_asXML/-509543537 (var3237) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3292 var3292)
(declare-const null-var2462 var2462)
(declare-const null-var947 var947)
(declare-const var1253 var3292) ; Statement: r5 := @this: freemarker.ext.xml._Dom4jNavigator 
(assert (not (= var1253 null-var3292)))
(declare-const var406 var2462) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var406 null-var2462)))
(declare-const var2810 var947) ; Statement: r0 := @parameter1: java.io.StringWriter 
(assert (not (= var2810 null-var947)))
(assert true)
(define-const var2876 String (getBuffer/-1377036288 var2810)) ; Statement: $r4 = virtualinvoke r0.<java.io.StringWriter: java.lang.StringBuffer getBuffer()>() 
(define-const var3209 var3237 (cast-from-var2462-to-var3237 var406)) ; Statement: $r2 = (org.dom4j.Node) r1 
(define-const var2306 String (var3237_asXML/-509543537 var3209)) ; Statement: $r3 = interfaceinvoke $r2.<org.dom4j.Node: java.lang.String asXML()>() 
(assert true)
;(assert (append/1560614132 var2876 var2306)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2876!1 String)
(assert (str.prefixof var2876 var2876!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getBuffer/-1377036288=([java.io.StringWriter], java.lang.StringBuffer), cast-from-var2462-to-var3237=([java.lang.Object], org.dom4j.Node), var3237_asXML/-509543537=([org.dom4j.Node], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3292=freemarker.ext.xml._Dom4jNavigator, var1253=r5, var2462=java.lang.Object, var406=r1, var947=java.io.StringWriter, var2810=r0, var2876=$r4, var3237=org.dom4j.Node, var3209=$r2, var2306=$r3}
; {freemarker.ext.xml._Dom4jNavigator=var3292, r5=var1253, java.lang.Object=var2462, r1=var406, java.io.StringWriter=var947, r0=var2810, $r4=var2876, org.dom4j.Node=var3237, $r2=var3209, $r3=var2306}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r5 := @this: freemarker.ext.xml._Dom4jNavigator;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.io.StringWriter;	$r4 = virtualinvoke r0.<java.io.StringWriter: java.lang.StringBuffer getBuffer()>();	$r2 = (org.dom4j.Node) r1;	$r3 = interfaceinvoke $r2.<org.dom4j.Node: java.lang.String asXML()>();	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return
;block_num 1