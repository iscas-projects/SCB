(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2075 0)
(declare-sort var2108 0)
(declare-sort var1425 0)
(declare-sort var3499 0)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1425-init () var1425)
(declare-fun var3499-init () var3499)
(declare-fun <init>/814598262 (var3499 String) void)
(declare-fun <init>/186014028 (var1425 var2900) void)
(declare-fun cast-from-var3499-to-var2900 (var3499) var2900)
(declare-fun setSystemId/587323028 (var1425 String) void)
(declare-const null-var2075 var2075)
(declare-const null-String String)
(declare-const var332 var2075) ; Statement: r8 := @this: jdk.internal.util.xml.PropertiesDefaultHandler 
(assert (not (= var332 null-var2075)))
(declare-const var3380 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var3380 null-String)))
(declare-const var3830 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3830 null-String)))
(assert true)
(define-const var2255 Bool (= var3830 "http://java.sun.com/dtd/properties.dtd")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://java.sun.com/dtd/properties.dtd") 
 ; Statement: if $z0 == 0 goto $r1 = new jdk.internal.org.xml.sax.SAXException 
(assert (not (= (ite var2255 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1428 var1425 var1425-init) ; Statement: $r6 = new jdk.internal.org.xml.sax.InputSource 
(define-const var1557 var3499 var3499-init) ; Statement: $r7 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var1557 "<?xml version=\u00221.0\u0022 encoding=\u0022UTF-8\u0022?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \u00221.0\u0022><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>")) ; Statement: specialinvoke $r7.<java.io.StringReader: void <init>(java.lang.String)>("<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>") 

(declare-const var1557!1 var3499)
(declare-const var1351 String)
(assert true)
;(assert (<init>/186014028 var1428 (cast-from-var3499-to-var2900 var1557!1))) ; Statement: specialinvoke $r6.<jdk.internal.org.xml.sax.InputSource: void <init>(java.io.Reader)>($r7) 

(declare-const var1428!1 var1425)
(declare-const var1557!2 var3499)
(assert true)
;(assert (setSystemId/587323028 var1428!1 "http://java.sun.com/dtd/properties.dtd")) ; Statement: virtualinvoke $r6.<jdk.internal.org.xml.sax.InputSource: void setSystemId(java.lang.String)>("http://java.sun.com/dtd/properties.dtd") 

(declare-const var1428!2 var1425)
(declare-const var1126 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1425-init=([], jdk.internal.org.xml.sax.InputSource), var3499-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), <init>/186014028=([jdk.internal.org.xml.sax.InputSource, java.io.Reader], void), cast-from-var3499-to-var2900=([java.io.StringReader], java.io.Reader), setSystemId/587323028=([jdk.internal.org.xml.sax.InputSource, java.lang.String], void)}
; {var2075=jdk.internal.util.xml.PropertiesDefaultHandler, var332=r8, var3380=r9, var2108=null_type, var3830=r0, var2255=$z0, var1425=jdk.internal.org.xml.sax.InputSource, var1428=$r6, var3499=java.io.StringReader, var1557=$r7, var1351="<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>", var2900=java.io.Reader, var1126="http://java.sun.com/dtd/properties.dtd"}
; {jdk.internal.util.xml.PropertiesDefaultHandler=var2075, r8=var332, r9=var3380, null_type=var2108, r0=var3830, $z0=var2255, jdk.internal.org.xml.sax.InputSource=var1425, $r6=var1428, java.io.StringReader=var3499, $r7=var1557, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>"=var1351, java.io.Reader=var2900, "http://java.sun.com/dtd/properties.dtd"=var1126}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: jdk.internal.util.xml.PropertiesDefaultHandler;	r9 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://java.sun.com/dtd/properties.dtd");	if $z0 == 0 goto $r1 = new jdk.internal.org.xml.sax.SAXException;	$r6 = new jdk.internal.org.xml.sax.InputSource;	$r7 = new java.io.StringReader;	specialinvoke $r7.<java.io.StringReader: void <init>(java.lang.String)>("<?xml version=\"1.0\" encoding=\"UTF-8\"?><!-- DTD for properties --><!ELEMENT properties ( comment?, entry* ) ><!ATTLIST properties version CDATA #FIXED \"1.0\"><!ELEMENT comment (#PCDATA) ><!ELEMENT entry (#PCDATA) ><!ATTLIST entry  key CDATA #REQUIRED>");	specialinvoke $r6.<jdk.internal.org.xml.sax.InputSource: void <init>(java.io.Reader)>($r7);	virtualinvoke $r6.<jdk.internal.org.xml.sax.InputSource: void setSystemId(java.lang.String)>("http://java.sun.com/dtd/properties.dtd");	return $r6
;block_num 2