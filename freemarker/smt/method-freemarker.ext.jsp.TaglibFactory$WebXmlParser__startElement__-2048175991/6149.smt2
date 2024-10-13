(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var2196 0)
(declare-sort var724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cDataCollector/837522883 (var2331) String)
(declare-const null-var2331 var2331)
(declare-const null-String String)
(declare-const null-var724 var724)
(declare-const var63 var2331) ; Statement: r2 := @this: freemarker.ext.jsp.TaglibFactory$WebXmlParser 
(assert (not (= var63 null-var2331)))
(declare-const var3159 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3159 null-String)))
(declare-const var1728 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1728 null-String)))
(declare-const var575 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var575 null-String)))
(declare-const var570 var724) ; Statement: r7 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var570 null-var724)))
(define-const var324 String "taglib-uri") ; Statement: $r1 = "taglib-uri" 
(assert true)
(define-const var834 Bool (= var324 var575)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var834 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1307 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1307)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1307!1 String)
(assert (= var1307!1 ""))
(declare-const var63!1 var2331)
(assert (not (= var63!1 null-var2331)))
(assert (= (cDataCollector/837522883 var63!1) var1307!1)) ; Statement: r2.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.StringBuilder cDataCollector> = $r3 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cDataCollector/837522883=([freemarker.ext.jsp.TaglibFactory$WebXmlParser], java.lang.StringBuilder)}
; {var2331=freemarker.ext.jsp.TaglibFactory$WebXmlParser, var63=r2, var3159=r5, var2196=null_type, var1728=r6, var575=r0, var724=org.xml.sax.Attributes, var570=r7, var324=$r1, var834=$z0, var1307=$r3}
; {freemarker.ext.jsp.TaglibFactory$WebXmlParser=var2331, r2=var63, r5=var3159, null_type=var2196, r6=var1728, r0=var575, org.xml.sax.Attributes=var724, r7=var570, $r1=var324, $z0=var834, $r3=var1307}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r2 := @this: freemarker.ext.jsp.TaglibFactory$WebXmlParser;	r5 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r7 := @parameter3: org.xml.sax.Attributes;	$r1 = "taglib-uri";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r2.<freemarker.ext.jsp.TaglibFactory$WebXmlParser: java.lang.StringBuilder cDataCollector> = $r3;	return
;block_num 3