(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2147 0)
(declare-sort var3029 0)
(declare-sort var2931 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun node/1974960422 (var2931) var3029)
(declare-fun cast-from-var2147-to-var2931 (var2147) var2931)
(declare-fun cast-from-var3029-to-var3410 (var3029) var3410)
(declare-fun var3410_getTarget/1095094825 (var3410) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2147 var2147)
(declare-const var1771 var2147) ; Statement: r1 := @this: freemarker.ext.dom.PINodeModel 
(assert (not (= var1771 null-var2147)))
(define-const var2627 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2627)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2627!1 String)
(assert (= var2627!1 ""))
(assert true)
(define-const var486 String (append/672562846 var2627!1 "@pi$")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@pi$") 
(declare-const var2627!2 String)
(assert (= var2627!2 (str.++ var2627!1 "@pi$")))
(define-const var402 var3029 (node/1974960422 (cast-from-var2147-to-var2931 var1771))) ; Statement: $r2 = r1.<freemarker.ext.dom.PINodeModel: org.w3c.dom.Node node> 
(define-const var3651 var3410 (cast-from-var3029-to-var3410 var402)) ; Statement: $r3 = (org.w3c.dom.ProcessingInstruction) $r2 
(define-const var1661 String (var3410_getTarget/1095094825 var3651)) ; Statement: $r4 = interfaceinvoke $r3.<org.w3c.dom.ProcessingInstruction: java.lang.String getTarget()>() 
(assert true)
(define-const var1383 String (append/672562846 var486 var1661)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var486!1 String)
(assert (= var486!1 (str.++ var486 var1661)))
(assert true)
(define-const var1190 String (toString/-2075883882 var1383)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var2147-to-var2931=([freemarker.ext.dom.PINodeModel], freemarker.ext.dom.NodeModel), cast-from-var3029-to-var3410=([org.w3c.dom.Node], org.w3c.dom.ProcessingInstruction), var3410_getTarget/1095094825=([org.w3c.dom.ProcessingInstruction], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2147=freemarker.ext.dom.PINodeModel, var1771=r1, var2627=$r0, var486=$r5, var3029=org.w3c.dom.Node, var2931=freemarker.ext.dom.NodeModel, var402=$r2, var3410=org.w3c.dom.ProcessingInstruction, var3651=$r3, var1661=$r4, var1383=$r6, var1190=$r7}
; {freemarker.ext.dom.PINodeModel=var2147, r1=var1771, $r0=var2627, $r5=var486, org.w3c.dom.Node=var3029, freemarker.ext.dom.NodeModel=var2931, $r2=var402, org.w3c.dom.ProcessingInstruction=var3410, $r3=var3651, $r4=var1661, $r6=var1383, $r7=var1190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.dom.PINodeModel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@pi$");	$r2 = r1.<freemarker.ext.dom.PINodeModel: org.w3c.dom.Node node>;	$r3 = (org.w3c.dom.ProcessingInstruction) $r2;	$r4 = interfaceinvoke $r3.<org.w3c.dom.ProcessingInstruction: java.lang.String getTarget()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1