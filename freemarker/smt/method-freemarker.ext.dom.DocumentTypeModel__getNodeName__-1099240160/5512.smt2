(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1492 0)
(declare-sort var1224 0)
(declare-sort var2477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun node/1974960422 (var2477) var1224)
(declare-fun cast-from-var1492-to-var2477 (var1492) var2477)
(declare-fun var1224_getNodeName/2033747668 (var1224) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1492 var1492)
(declare-const var3938 var1492) ; Statement: r1 := @this: freemarker.ext.dom.DocumentTypeModel 
(assert (not (= var3938 null-var1492)))
(define-const var2469 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2469)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2469!1 String)
(assert (= var2469!1 ""))
(assert true)
(define-const var1620 String (append/672562846 var2469!1 "@document_type$")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@document_type$") 
(declare-const var2469!2 String)
(assert (= var2469!2 (str.++ var2469!1 "@document_type$")))
(define-const var920 var1224 (node/1974960422 (cast-from-var1492-to-var2477 var3938))) ; Statement: $r2 = r1.<freemarker.ext.dom.DocumentTypeModel: org.w3c.dom.Node node> 
(define-const var3793 String (var1224_getNodeName/2033747668 var920)) ; Statement: $r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(assert true)
(define-const var1130 String (append/672562846 var1620 var3793)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1620!1 String)
(assert (= var1620!1 (str.++ var1620 var3793)))
(assert true)
(define-const var2247 String (toString/-2075883882 var1130)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var1492-to-var2477=([freemarker.ext.dom.DocumentTypeModel], freemarker.ext.dom.NodeModel), var1224_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1492=freemarker.ext.dom.DocumentTypeModel, var3938=r1, var2469=$r0, var1620=$r4, var1224=org.w3c.dom.Node, var2477=freemarker.ext.dom.NodeModel, var920=$r2, var3793=$r3, var1130=$r5, var2247=$r6}
; {freemarker.ext.dom.DocumentTypeModel=var1492, r1=var3938, $r0=var2469, $r4=var1620, org.w3c.dom.Node=var1224, freemarker.ext.dom.NodeModel=var2477, $r2=var920, $r3=var3793, $r5=var1130, $r6=var2247}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.dom.DocumentTypeModel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@document_type$");	$r2 = r1.<freemarker.ext.dom.DocumentTypeModel: org.w3c.dom.Node node>;	$r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1