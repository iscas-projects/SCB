(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort var1276 0)
(declare-sort var2358 0)
(declare-sort var3981 0)
(declare-sort var1560 0)
(declare-sort var309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun navigator/1014398653 (var1545) var2358)
(declare-fun getOperator/-1496486429 (var2358 String) var3981)
(declare-fun var1560-init () var1560)
(declare-fun <init>/-325640736 (var1560) void)
(declare-fun nodes/1014398653 (var1545) var309)
(declare-fun var309_iterator/-912451715 (var309) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun deriveModel/1780188989 (var1545 var309) var1545)
(declare-fun cast-from-var1560-to-var309 (var1560) var309)
(declare-const null-var1545 var1545)
(declare-const null-String String)
(declare-const null-var3981 var3981)
(declare-const var3443 var1545) ; Statement: r0 := @this: freemarker.ext.xml.NodeListModel 
(assert (not (= var3443 null-var1545)))
(declare-const var1717 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1717 null-String)))
(define-const var1795 var2358 (navigator/1014398653 var3443)) ; Statement: $r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator> 
(assert true)
(define-const var664 var3981 (getOperator/-1496486429 var1795 var1717)) ; Statement: r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1) 
(define-const var2502 String null-String) ; Statement: r26 = null 
(define-const var2416 String "") ; Statement: r27 = "" 
 ; Statement: if r25 != null goto (branch) 
(assert (not (= var664 null-var3981))) ; Cond: r25 != null 
 ; Statement: if r25 != null goto $r35 = new java.util.ArrayList 
(assert (not (= var664 null-var3981))) ; Cond: r25 != null 
(define-const var3025 var1560 var1560-init) ; Statement: $r35 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3025)) ; Statement: specialinvoke $r35.<java.util.ArrayList: void <init>()>() 

(declare-const var3025!1 var1560)
(define-const var2977 var309 (nodes/1014398653 var3443)) ; Statement: $r30 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes> 
(define-const var936 Iterator (var309_iterator/-912451715 var2977)) ; Statement: $r31 = interfaceinvoke $r30.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var888 Bool (Iterator_hasNext/-1669924200 var936)) ; Statement: $z5 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z5 == 0 goto $r3 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r35) 
(assert (= (ite var888 1 0) 0)) ; Cond: $z5 == 0 
(assert true)
(define-const var2108 var1545 (deriveModel/1780188989 var3443 (cast-from-var1560-to-var309 var3025!1))) ; Statement: $r3 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r35) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {navigator/1014398653=([freemarker.ext.xml.NodeListModel], freemarker.ext.xml.Navigator), getOperator/-1496486429=([freemarker.ext.xml.Navigator, java.lang.String], freemarker.ext.xml.NodeOperator), var1560-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), nodes/1014398653=([freemarker.ext.xml.NodeListModel], java.util.List), var309_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), deriveModel/1780188989=([freemarker.ext.xml.NodeListModel, java.util.List], freemarker.ext.xml.NodeListModel), cast-from-var1560-to-var309=([java.util.ArrayList], java.util.List)}
; {var1545=freemarker.ext.xml.NodeListModel, var3443=r0, var1717=r1, var1276=null_type, var2358=freemarker.ext.xml.Navigator, var1795=$r2, var3981=freemarker.ext.xml.NodeOperator, var664=r25, var2502=r26, var2416=r27, var1560=java.util.ArrayList, var3025=$r35, var309=java.util.List, var2977=$r30, var936=$r31, var888=$z5, var2108=$r3}
; {freemarker.ext.xml.NodeListModel=var1545, r0=var3443, r1=var1717, null_type=var1276, freemarker.ext.xml.Navigator=var2358, $r2=var1795, freemarker.ext.xml.NodeOperator=var3981, r25=var664, r26=var2502, r27=var2416, java.util.ArrayList=var1560, $r35=var3025, java.util.List=var309, $r30=var2977, $r31=var936, $z5=var888, $r3=var2108}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.xml.NodeListModel;	r1 := @parameter0: java.lang.String;	$r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator>;	r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1);	r26 = null;	r27 = "";	if r25 != null goto (branch);	if r25 != null goto $r35 = new java.util.ArrayList;	$r35 = new java.util.ArrayList;	specialinvoke $r35.<java.util.ArrayList: void <init>()>();	$r30 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes>;	$r31 = interfaceinvoke $r30.<java.util.List: java.util.Iterator iterator()>();	$z5 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>();	if $z5 == 0 goto $r3 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r35);	$r3 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r35);	return $r3
;block_num 5