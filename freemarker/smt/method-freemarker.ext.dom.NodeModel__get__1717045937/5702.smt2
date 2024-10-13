(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1268 0)
(declare-sort var1212 0)
(declare-sort var2607 0)
(declare-sort var870 0)
(declare-sort var3483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getKey/759631315 (var2607) String)
(declare-fun var870-init () var870)
(declare-fun node/1974960422 (var1268) var3483)
(declare-fun var1268_getText/1984453516 (var3483) String)
(declare-fun <init>/378607920 (var870 String) void)
(declare-const null-var1268 var1268)
(declare-const null-String String)
(declare-const var2607-TEXT var2607)
(declare-const var2247 var1268) ; Statement: r1 := @this: freemarker.ext.dom.NodeModel 
(assert (not (= var2247 null-var1268)))
(declare-const var2442 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2442 null-String)))
(assert true)
(define-const var2324 Bool (startsWith/-1785782452 var2442 "@@")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@@") 
 ; Statement: if $z0 == 0 goto r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>() 
(assert (not (= (ite var2324 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3010 var2607 var2607-TEXT) ; Statement: $r9 = <freemarker.ext.dom.AtAtKey: freemarker.ext.dom.AtAtKey TEXT> 
(assert true)
(define-const var3899 String (getKey/759631315 var3010)) ; Statement: $r10 = virtualinvoke $r9.<freemarker.ext.dom.AtAtKey: java.lang.String getKey()>() 
(assert true)
(define-const var415 Bool (= var2442 var3899)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
 ; Statement: if $z1 == 0 goto $r11 = <freemarker.ext.dom.AtAtKey: freemarker.ext.dom.AtAtKey NAMESPACE> 
(assert (not (= (ite var415 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1883 var870 var870-init) ; Statement: $r51 = new freemarker.template.SimpleScalar 
(define-const var1627 var3483 (node/1974960422 var2247)) ; Statement: $r52 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(define-const var1533 String (var1268_getText/1984453516 var1627)) ; Statement: $r53 = staticinvoke <freemarker.ext.dom.NodeModel: java.lang.String getText(org.w3c.dom.Node)>($r52) 
(assert true)
;(assert (<init>/378607920 var1883 var1533)) ; Statement: specialinvoke $r51.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r53) 

(declare-const var1883!1 var870)
(declare-const var1533!1 String)
 ; Statement: return $r51 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getKey/759631315=([freemarker.ext.dom.AtAtKey], java.lang.String), var870-init=([], freemarker.template.SimpleScalar), node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), var1268_getText/1984453516=([org.w3c.dom.Node], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var1268=freemarker.ext.dom.NodeModel, var2247=r1, var2442=r0, var1212=null_type, var2324=$z0, var2607=freemarker.ext.dom.AtAtKey, var3010=$r9, var3899=$r10, var415=$z1, var870=freemarker.template.SimpleScalar, var1883=$r51, var3483=org.w3c.dom.Node, var1627=$r52, var1533=$r53}
; {freemarker.ext.dom.NodeModel=var1268, r1=var2247, r0=var2442, null_type=var1212, $z0=var2324, freemarker.ext.dom.AtAtKey=var2607, $r9=var3010, $r10=var3899, $z1=var415, freemarker.template.SimpleScalar=var870, $r51=var1883, org.w3c.dom.Node=var3483, $r52=var1627, $r53=var1533}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.ext.dom.NodeModel;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@@");	if $z0 == 0 goto r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>();	$r9 = <freemarker.ext.dom.AtAtKey: freemarker.ext.dom.AtAtKey TEXT>;	$r10 = virtualinvoke $r9.<freemarker.ext.dom.AtAtKey: java.lang.String getKey()>();	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r10);	if $z1 == 0 goto $r11 = <freemarker.ext.dom.AtAtKey: freemarker.ext.dom.AtAtKey NAMESPACE>;	$r51 = new freemarker.template.SimpleScalar;	$r52 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	$r53 = staticinvoke <freemarker.ext.dom.NodeModel: java.lang.String getText(org.w3c.dom.Node)>($r52);	specialinvoke $r51.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r53);	return $r51
;block_num 3