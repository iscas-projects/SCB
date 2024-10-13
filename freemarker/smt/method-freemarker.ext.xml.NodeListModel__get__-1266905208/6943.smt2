(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var270 0)
(declare-sort var1155 0)
(declare-sort var2052 0)
(declare-sort var385 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun navigator/1014398653 (var2382) var1155)
(declare-fun getOperator/-1496486429 (var1155 String) var2052)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun namespaces/1014398653 (var2382) var385)
(declare-fun translateNamespacePrefixToUri/1628497373 (var385 String) String)
(declare-fun var3466-init () var3466)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var3466 String) void)
(declare-const null-var2382 var2382)
(declare-const null-String String)
(declare-const null-var2052 var2052)
(declare-const var259 var2382) ; Statement: r0 := @this: freemarker.ext.xml.NodeListModel 
(assert (not (= var259 null-var2382)))
(declare-const var1044 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1044 null-String)))
(define-const var128 var1155 (navigator/1014398653 var259)) ; Statement: $r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator> 
(assert true)
(define-const var2254 var2052 (getOperator/-1496486429 var128 var1044)) ; Statement: r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1) 
(define-const var1423 String null-String) ; Statement: r26 = null 
(define-const var3943 String "") ; Statement: r27 = "" 
 ; Statement: if r25 != null goto (branch) 
(assert (not (= var2254 null-var2052))) ; Cond: r25 != null 
 ; Statement: if r25 != null goto $r35 = new java.util.ArrayList 
(assert (not (not (= var2254 null-var2052)))) ; Negate: Cond: r25 != null  
(assert true)
(define-const var3106 Int (indexOf/-1037706067 var1044 58)) ; Statement: i4 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(58) 
(define-const var2286 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i4 != $i7 goto $i0 = i4 + 1 
(assert (not (= var3106 var2286))) ; Cond: i4 != $i7 
(define-const var1841 Int (+ var3106 1)) ; Statement: $i0 = i4 + 1 
(assert (and true (and (>= var1841 0) (>= (str.len var1044) var1841))))
(define-const var1423!1 String (substring/850833817 var1044 var1841)) ; Statement: r26 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0) 
(assert (and true (and (>= 0 0) (>= (str.len var1044) var3106) (>= var3106 0))))
(define-const var1555 String (substring/-1240304868 var1044 0 var3106)) ; Statement: r28 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i4) 
(define-const var1622 var385 (namespaces/1014398653 var259)) ; Statement: $r5 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Namespaces namespaces> 
(assert true)
(define-const var3943!1 String (translateNamespacePrefixToUri/1628497373 var1622 var1555)) ; Statement: r27 = virtualinvoke $r5.<freemarker.ext.xml.Namespaces: java.lang.String translateNamespacePrefixToUri(java.lang.String)>(r28) 
 ; Statement: if r27 != null goto $c1 = virtualinvoke r26.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var3943!1 null-String)))) ; Negate: Cond: r27 != null  
(define-const var172 var3466 var3466-init) ; Statement: $r34 = new freemarker.template.TemplateModelException 
(define-const var3473 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3473)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3473!1 String)
(assert (= var3473!1 ""))
(assert true)
(define-const var1340 String (append/672562846 var3473!1 "Namespace prefix ")) ; Statement: $r10 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Namespace prefix ") 
(declare-const var3473!2 String)
(assert (= var3473!2 (str.++ var3473!1 "Namespace prefix ")))
(assert true)
(define-const var2673 String (append/672562846 var1340 var1555)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r28) 
(declare-const var1340!1 String)
(assert (= var1340!1 (str.++ var1340 var1555)))
(assert true)
(define-const var3455 String (append/672562846 var2673 " is not registered.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not registered.") 
(declare-const var2673!1 String)
(assert (= var2673!1 (str.++ var2673 " is not registered.")))
(assert true)
(define-const var1424 String (toString/-2075883882 var3455)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var172 var1424)) ; Statement: specialinvoke $r34.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r13) 

(declare-const var172!1 var3466)
(declare-const var1424!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {navigator/1014398653=([freemarker.ext.xml.NodeListModel], freemarker.ext.xml.Navigator), getOperator/-1496486429=([freemarker.ext.xml.Navigator, java.lang.String], freemarker.ext.xml.NodeOperator), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), namespaces/1014398653=([freemarker.ext.xml.NodeListModel], freemarker.ext.xml.Namespaces), translateNamespacePrefixToUri/1628497373=([freemarker.ext.xml.Namespaces, java.lang.String], java.lang.String), var3466-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var2382=freemarker.ext.xml.NodeListModel, var259=r0, var1044=r1, var270=null_type, var1155=freemarker.ext.xml.Navigator, var128=$r2, var2052=freemarker.ext.xml.NodeOperator, var2254=r25, var1423=r26, var3943=r27, var3106=i4, var2286=$i7, var1841=$i0, var1555=r28, var385=freemarker.ext.xml.Namespaces, var1622=$r5, var3466=freemarker.template.TemplateModelException, var172=$r34, var3473=$r33, var1340=$r10, var2673=$r11, var3455=$r12, var1424=$r13}
; {freemarker.ext.xml.NodeListModel=var2382, r0=var259, r1=var1044, null_type=var270, freemarker.ext.xml.Navigator=var1155, $r2=var128, freemarker.ext.xml.NodeOperator=var2052, r25=var2254, r26=var1423, r27=var3943, i4=var3106, $i7=var2286, $i0=var1841, r28=var1555, freemarker.ext.xml.Namespaces=var385, $r5=var1622, freemarker.template.TemplateModelException=var3466, $r34=var172, $r33=var3473, $r10=var1340, $r11=var2673, $r12=var3455, $r13=var1424}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.xml.NodeListModel;	r1 := @parameter0: java.lang.String;	$r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator>;	r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1);	r26 = null;	r27 = "";	if r25 != null goto (branch);	if r25 != null goto $r35 = new java.util.ArrayList;	i4 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(58);	$i7 = (int) -1;	if i4 != $i7 goto $i0 = i4 + 1;	$i0 = i4 + 1;	r26 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i0);	r28 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i4);	$r5 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Namespaces namespaces>;	r27 = virtualinvoke $r5.<freemarker.ext.xml.Namespaces: java.lang.String translateNamespacePrefixToUri(java.lang.String)>(r28);	if r27 != null goto $c1 = virtualinvoke r26.<java.lang.String: char charAt(int)>(0);	$r34 = new freemarker.template.TemplateModelException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Namespace prefix ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r28);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not registered.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r13);	throw $r34
;block_num 5