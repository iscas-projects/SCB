(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1340 0)
(declare-sort var2361 0)
(declare-sort var160 0)
(declare-sort var362 0)
(declare-sort var2516 0)
(declare-sort var2284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getXPathSupport/-298662966 (var1340) var160)
(declare-fun node/1974960422 (var1340) var362)
(declare-fun var160_executeQuery/213201208 (var160 var2284 String) var2516)
(declare-fun cast-from-var362-to-var2284 (var362) var2284)
(declare-const null-var1340 var1340)
(declare-const null-String String)
(declare-const null-var160 var160)
(declare-const var2887 var1340) ; Statement: r1 := @this: freemarker.ext.dom.NodeModel 
(assert (not (= var2887 null-var1340)))
(declare-const var3508 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3508 null-String)))
(assert true)
(define-const var1401 Bool (startsWith/-1785782452 var3508 "@@")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@@") 
 ; Statement: if $z0 == 0 goto r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>() 
(assert (= (ite var1401 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2016 var160 (getXPathSupport/-298662966 var2887)) ; Statement: r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>() 
 ; Statement: if r59 != null goto $r2 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(assert (not (= var2016 null-var160))) ; Cond: r59 != null 
(define-const var697 var362 (node/1974960422 var2887)) ; Statement: $r2 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(define-const var2537 var2516 (var160_executeQuery/213201208 var2016 (cast-from-var362-to-var2284 var697) var3508)) ; Statement: $r3 = interfaceinvoke r59.<freemarker.ext.dom.XPathSupport: freemarker.template.TemplateModel executeQuery(java.lang.Object,java.lang.String)>($r2, r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getXPathSupport/-298662966=([freemarker.ext.dom.NodeModel], freemarker.ext.dom.XPathSupport), node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), var160_executeQuery/213201208=([freemarker.ext.dom.XPathSupport, java.lang.Object, java.lang.String], freemarker.template.TemplateModel), cast-from-var362-to-var2284=([org.w3c.dom.Node], java.lang.Object)}
; {var1340=freemarker.ext.dom.NodeModel, var2887=r1, var3508=r0, var2361=null_type, var1401=$z0, var160=freemarker.ext.dom.XPathSupport, var2016=r59, var362=org.w3c.dom.Node, var697=$r2, var2516=freemarker.template.TemplateModel, var2284=java.lang.Object, var2537=$r3}
; {freemarker.ext.dom.NodeModel=var1340, r1=var2887, r0=var3508, null_type=var2361, $z0=var1401, freemarker.ext.dom.XPathSupport=var160, r59=var2016, org.w3c.dom.Node=var362, $r2=var697, freemarker.template.TemplateModel=var2516, java.lang.Object=var2284, $r3=var2537}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.ext.dom.NodeModel;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@@");	if $z0 == 0 goto r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>();	r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>();	if r59 != null goto $r2 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	$r2 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	$r3 = interfaceinvoke r59.<freemarker.ext.dom.XPathSupport: freemarker.template.TemplateModel executeQuery(java.lang.Object,java.lang.String)>($r2, r0);	return $r3
;block_num 3