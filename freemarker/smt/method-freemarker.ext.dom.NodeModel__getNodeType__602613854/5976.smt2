(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3584 0)
(declare-sort var3833 0)
(declare-sort var3303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var3584) var3833)
(declare-fun var3833_getNodeType/-368491152 (var3833) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3303-init () var3303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var3303 String) void)
(declare-const null-var3584 var3584)
(declare-const var2084 var3584) ; Statement: r0 := @this: freemarker.ext.dom.NodeModel 
(assert (not (= var2084 null-var3584)))
(define-const var250 var3833 (node/1974960422 var2084)) ; Statement: $r1 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(define-const var2251 Int (var3833_getNodeType/-368491152 var250)) ; Statement: s0 = interfaceinvoke $r1.<org.w3c.dom.Node: short getNodeType()>() 
(define-const var908 Int (cast-from-Int-to-Int var2251)) ; Statement: $i1 = (int) s0 
 ; Statement: tableswitch($i1) {     case 1: goto return "element";     case 2: goto return "attribute";     case 3: goto return "text";     case 4: goto return "text";     case 5: goto return "entity_reference";     case 6: goto return "entity";     case 7: goto return "pi";     case 8: goto return "comment";     case 9: goto return "document";     case 10: goto return "document_type";     case 11: goto return "document_fragment";     case 12: goto return "notation";     default: goto $r9 = new freemarker.template.TemplateModelException; } 
(assert (and (not (= var908 12)) (and (not (= var908 11)) (and (not (= var908 10)) (and (not (= var908 9)) (and (not (= var908 8)) (and (not (= var908 7)) (and (not (= var908 6)) (and (not (= var908 5)) (and (not (= var908 4)) (and (not (= var908 3)) (and (not (= var908 2)) (and (not (= var908 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var3543 var3303 var3303-init) ; Statement: $r9 = new freemarker.template.TemplateModelException 
(define-const var2573 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2573)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2573!1 String)
(assert (= var2573!1 ""))
(assert true)
(define-const var1643 String (append/672562846 var2573!1 "Unknown node type: ")) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown node type: ") 
(declare-const var2573!2 String)
(assert (= var2573!2 (str.++ var2573!1 "Unknown node type: ")))
(define-const var3571 Int (cast-from-Int-to-Int var2251)) ; Statement: $i2 = (int) s0 
(assert true)
(define-const var2967 String (append/-1001720160 var1643 var3571)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1643!1 String)
(assert (str.prefixof var1643 var1643!1))
(assert true)
(define-const var108 String (append/672562846 var2967 ". This should be impossible!")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". This should be impossible!") 
(declare-const var2967!1 String)
(assert (= var2967!1 (str.++ var2967 ". This should be impossible!")))
(assert true)
(define-const var2348 String (toString/-2075883882 var108)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var3543 var2348)) ; Statement: specialinvoke $r9.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r7) 

(declare-const var3543!1 var3303)
(declare-const var2348!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), var3833_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-Int-to-Int=([short], int), var3303-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var3584=freemarker.ext.dom.NodeModel, var2084=r0, var3833=org.w3c.dom.Node, var250=$r1, var2251=s0, var908=$i1, var3303=freemarker.template.TemplateModelException, var3543=$r9, var2573=$r8, var1643=$r4, var3571=$i2, var2967=$r5, var108=$r6, var2348=$r7}
; {freemarker.ext.dom.NodeModel=var3584, r0=var2084, org.w3c.dom.Node=var3833, $r1=var250, s0=var2251, $i1=var908, freemarker.template.TemplateModelException=var3303, $r9=var3543, $r8=var2573, $r4=var1643, $i2=var3571, $r5=var2967, $r6=var108, $r7=var2348}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.dom.NodeModel;	$r1 = r0.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	s0 = interfaceinvoke $r1.<org.w3c.dom.Node: short getNodeType()>();	$i1 = (int) s0;	tableswitch($i1) {     case 1: goto return "element";     case 2: goto return "attribute";     case 3: goto return "text";     case 4: goto return "text";     case 5: goto return "entity_reference";     case 6: goto return "entity";     case 7: goto return "pi";     case 8: goto return "comment";     case 9: goto return "document";     case 10: goto return "document_type";     case 11: goto return "document_fragment";     case 12: goto return "notation";     default: goto $r9 = new freemarker.template.TemplateModelException; };	$r9 = new freemarker.template.TemplateModelException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown node type: ");	$i2 = (int) s0;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". This should be impossible!");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2