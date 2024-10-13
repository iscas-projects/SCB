(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var554 0)
(declare-sort var934 0)
(declare-sort var921 0)
(declare-sort var1833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getXPathSupport/-298662966 (var554) var921)
(declare-fun var1833-init () var1833)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var1833 String) void)
(declare-const null-var554 var554)
(declare-const null-String String)
(declare-const null-var921 var921)
(declare-const var3711 var554) ; Statement: r1 := @this: freemarker.ext.dom.NodeModel 
(assert (not (= var3711 null-var554)))
(declare-const var815 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var815 null-String)))
(assert true)
(define-const var3996 Bool (startsWith/-1785782452 var815 "@@")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@@") 
 ; Statement: if $z0 == 0 goto r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>() 
(assert (= (ite var3996 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1901 var921 (getXPathSupport/-298662966 var3711)) ; Statement: r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>() 
 ; Statement: if r59 != null goto $r2 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node> 
(assert (not (not (= var1901 null-var921)))) ; Negate: Cond: r59 != null  
(define-const var3874 var1833 var1833-init) ; Statement: $r4 = new freemarker.template.TemplateModelException 
(define-const var3766 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3766)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3766!1 String)
(assert (= var3766!1 ""))
(assert true)
(define-const var897 String (append/672562846 var3766!1 "No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: ") 
(declare-const var3766!2 String)
(assert (= var3766!2 (str.++ var3766!1 "No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: ")))
(assert true)
(define-const var3094 String (append/672562846 var897 var815)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var897!1 String)
(assert (= var897!1 (str.++ var897 var815)))
(assert true)
(define-const var2563 String (toString/-2075883882 var3094)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var3874 var2563)) ; Statement: specialinvoke $r4.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r8) 

(declare-const var3874!1 var1833)
(declare-const var2563!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getXPathSupport/-298662966=([freemarker.ext.dom.NodeModel], freemarker.ext.dom.XPathSupport), var1833-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var554=freemarker.ext.dom.NodeModel, var3711=r1, var815=r0, var934=null_type, var3996=$z0, var921=freemarker.ext.dom.XPathSupport, var1901=r59, var1833=freemarker.template.TemplateModelException, var3874=$r4, var3766=$r5, var897=$r6, var3094=$r7, var2563=$r8}
; {freemarker.ext.dom.NodeModel=var554, r1=var3711, r0=var815, null_type=var934, $z0=var3996, freemarker.ext.dom.XPathSupport=var921, r59=var1901, freemarker.template.TemplateModelException=var1833, $r4=var3874, $r5=var3766, $r6=var897, $r7=var3094, $r8=var2563}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.dom.NodeModel;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@@");	if $z0 == 0 goto r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>();	r59 = virtualinvoke r1.<freemarker.ext.dom.NodeModel: freemarker.ext.dom.XPathSupport getXPathSupport()>();	if r59 != null goto $r2 = r1.<freemarker.ext.dom.NodeModel: org.w3c.dom.Node node>;	$r4 = new freemarker.template.TemplateModelException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No XPath support is available (add Apache Xalan or Jaxen as dependency). This is either malformed, or an XPath expression: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 3