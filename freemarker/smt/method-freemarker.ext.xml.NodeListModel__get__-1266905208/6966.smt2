(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2565 0)
(declare-sort var2793 0)
(declare-sort var890 0)
(declare-sort var1776 0)
(declare-sort var3942 0)
(declare-sort var3448 0)
(declare-sort var2794 0)
(declare-sort var1610 0)
(declare-sort var3233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun navigator/1014398653 (var2565) var890)
(declare-fun getOperator/-1496486429 (var890 String) var1776)
(declare-fun var3942-init () var3942)
(declare-fun <init>/-325640736 (var3942) void)
(declare-fun nodes/1014398653 (var2565) var3448)
(declare-fun var3448_iterator/-912451715 (var3448) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1610-init () var1610)
(declare-fun <init>/480853528 (var1610 var3233) void)
(declare-fun cast-from-var2794-to-var3233 (var2794) var3233)
(declare-const null-var2565 var2565)
(declare-const null-String String)
(declare-const null-var1776 var1776)
(declare-const null-var2794 var2794)
(declare-const var466 var2565) ; Statement: r0 := @this: freemarker.ext.xml.NodeListModel 
(assert (not (= var466 null-var2565)))
(declare-const var1372 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1372 null-String)))
(define-const var3642 var890 (navigator/1014398653 var466)) ; Statement: $r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator> 
(assert true)
(define-const var3958 var1776 (getOperator/-1496486429 var3642 var1372)) ; Statement: r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1) 
(define-const var1106 String null-String) ; Statement: r26 = null 
(define-const var3088 String "") ; Statement: r27 = "" 
 ; Statement: if r25 != null goto (branch) 
(assert (not (= var3958 null-var1776))) ; Cond: r25 != null 
 ; Statement: if r25 != null goto $r35 = new java.util.ArrayList 
(assert (not (= var3958 null-var1776))) ; Cond: r25 != null 
(define-const var3506 var3942 var3942-init) ; Statement: $r35 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3506)) ; Statement: specialinvoke $r35.<java.util.ArrayList: void <init>()>() 

(declare-const var3506!1 var3942)
(define-const var3165 var3448 (nodes/1014398653 var466)) ; Statement: $r30 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes> 
(define-const var2203 Iterator (var3448_iterator/-912451715 var3165)) ; Statement: $r31 = interfaceinvoke $r30.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2896 Bool (Iterator_hasNext/-1669924200 var2203)) ; Statement: $z5 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z5 == 0 goto $r3 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r35) 
(assert (not (= (ite var2896 1 0) 0))) ; Negate: Cond: $z5 == 0  
(declare-const var986 var2794) ; Statement: $r23 := @caughtexception 
(assert (not (= var986 null-var2794)))
(define-const var1693 var1610 var1610-init) ; Statement: $r36 = new freemarker.template.TemplateModelException 
(assert true)
;(assert (<init>/480853528 var1693 (cast-from-var2794-to-var3233 var986))) ; Statement: specialinvoke $r36.<freemarker.template.TemplateModelException: void <init>(java.lang.Exception)>($r23) 

(declare-const var1693!1 var1610)
(declare-const var986!1 var2794)
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {navigator/1014398653=([freemarker.ext.xml.NodeListModel], freemarker.ext.xml.Navigator), getOperator/-1496486429=([freemarker.ext.xml.Navigator, java.lang.String], freemarker.ext.xml.NodeOperator), var3942-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), nodes/1014398653=([freemarker.ext.xml.NodeListModel], java.util.List), var3448_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1610-init=([], freemarker.template.TemplateModelException), <init>/480853528=([freemarker.template.TemplateModelException, java.lang.Exception], void), cast-from-var2794-to-var3233=([java.lang.RuntimeException], java.lang.Exception)}
; {var2565=freemarker.ext.xml.NodeListModel, var466=r0, var1372=r1, var2793=null_type, var890=freemarker.ext.xml.Navigator, var3642=$r2, var1776=freemarker.ext.xml.NodeOperator, var3958=r25, var1106=r26, var3088=r27, var3942=java.util.ArrayList, var3506=$r35, var3448=java.util.List, var3165=$r30, var2203=$r31, var2896=$z5, var2794=java.lang.RuntimeException, var986=$r23, var1610=freemarker.template.TemplateModelException, var1693=$r36, var3233=java.lang.Exception}
; {freemarker.ext.xml.NodeListModel=var2565, r0=var466, r1=var1372, null_type=var2793, freemarker.ext.xml.Navigator=var890, $r2=var3642, freemarker.ext.xml.NodeOperator=var1776, r25=var3958, r26=var1106, r27=var3088, java.util.ArrayList=var3942, $r35=var3506, java.util.List=var3448, $r30=var3165, $r31=var2203, $z5=var2896, java.lang.RuntimeException=var2794, $r23=var986, freemarker.template.TemplateModelException=var1610, $r36=var1693, java.lang.Exception=var3233}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.xml.NodeListModel;	r1 := @parameter0: java.lang.String;	$r2 = r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.Navigator navigator>;	r25 = virtualinvoke $r2.<freemarker.ext.xml.Navigator: freemarker.ext.xml.NodeOperator getOperator(java.lang.String)>(r1);	r26 = null;	r27 = "";	if r25 != null goto (branch);	if r25 != null goto $r35 = new java.util.ArrayList;	$r35 = new java.util.ArrayList;	specialinvoke $r35.<java.util.ArrayList: void <init>()>();	$r30 = r0.<freemarker.ext.xml.NodeListModel: java.util.List nodes>;	$r31 = interfaceinvoke $r30.<java.util.List: java.util.Iterator iterator()>();	$z5 = interfaceinvoke $r31.<java.util.Iterator: boolean hasNext()>();	if $z5 == 0 goto $r3 = specialinvoke r0.<freemarker.ext.xml.NodeListModel: freemarker.ext.xml.NodeListModel deriveModel(java.util.List)>($r35);	$r23 := @caughtexception;	$r36 = new freemarker.template.TemplateModelException;	specialinvoke $r36.<freemarker.template.TemplateModelException: void <init>(java.lang.Exception)>($r23);	throw $r36
;block_num 5