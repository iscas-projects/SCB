(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2117 0)
(declare-sort var1936 0)
(declare-sort var3959 0)
(declare-sort var3112 0)
(declare-sort var1795 0)
(declare-sort var3549 0)
(declare-sort var2788 0)
(declare-sort var2112 0)
(declare-sort var3231 0)
(declare-sort var473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun write/654681022 (var3959 String) void)
(declare-fun namespacePolicy/-719019462 (var2117) var1795)
(declare-fun var1795_access$000/165552159 (var1795) Bool)
(declare-fun var1936_getTagName/1916305756 (var1936) String)
(declare-fun var2788_getAttributes/1383780881 (var2788) var3549)
(declare-fun cast-from-var1936-to-var2788 (var1936) var2788)
(declare-fun var3549_getLength/1076084690 (var3549) Int)
(declare-fun nsURIByElement/-719019462 (var2117) var2112)
(declare-fun var2112_get/1088891777 (var2112 var3231) var3231)
(declare-fun cast-from-var1936-to-var3231 (var1936) var3231)
(declare-fun cast-from-var3231-to-var473 (var3231) var473)
(declare-fun removeNSDefinitions/-1571706093 (var2117 var1936) void)
(declare-fun arr-var3231-init () (Array Int var3231))
(declare-fun String_format/1339386452 (String (Array Int var3231)) String)
(declare-fun flush/-1623275180 (var3959) void)
(declare-const null-var2117 var2117)
(declare-const null-var1936 var1936)
(declare-const null-var3959 var3959)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var473 var473)
(declare-const var640 var2117) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter 
(assert (not (= var640 null-var2117)))
(declare-const var2639 var1936) ; Statement: r3 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2639 null-var1936)))
(declare-const var1019 var3959) ; Statement: r0 := @parameter1: java.io.Writer 
(assert (not (= var1019 null-var3959)))
(declare-const var3587 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3587 null-Int)))
(declare-const var43 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var43 null-String)))
(declare-const var1504 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1504 null-Bool)))
(define-const var3186 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("<") 
(assert (>= var3186 var3587)) ; Cond: i5 >= i0 
(assert true)
;(assert (write/654681022 var1019 "<")) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("<") 

(declare-const var1019!1 var3959)
(declare-const var643 String)
(define-const var92 var1795 (namespacePolicy/-719019462 var640)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy namespacePolicy> 
(define-const var2144 Bool (var1795_access$000/165552159 var92)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy: boolean access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy)>($r2) 
 ; Statement: if $z0 == 0 goto $r29 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert (= (ite var2144 1 0) 0)) ; Cond: $z0 == 0 
(define-const var743 String (var1936_getTagName/1916305756 var2639)) ; Statement: $r29 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
;(assert (write/654681022 var1019!1 var743)) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r29) 

(declare-const var1019!2 var3959)
(declare-const var743!1 String)
(define-const var2586 var3549 (var2788_getAttributes/1383780881 (cast-from-var1936-to-var2788 var2639))) ; Statement: $r30 = interfaceinvoke r3.<org.w3c.dom.Element: org.w3c.dom.NamedNodeMap getAttributes()>() 
(define-const var1466 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var1234 Int (var3549_getLength/1076084690 var2586)) ; Statement: $i7 = interfaceinvoke $r30.<org.w3c.dom.NamedNodeMap: int getLength()>() 
 ; Statement: if i6 >= $i7 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: java.util.Map nsURIByElement> 
(assert (>= var1466 var1234)) ; Cond: i6 >= $i7 
(define-const var68 var2112 (nsURIByElement/-719019462 var640)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: java.util.Map nsURIByElement> 
(define-const var1106 var3231 (var2112_get/1088891777 var68 (cast-from-var1936-to-var3231 var2639))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var1351 var473 (cast-from-var3231-to-var473 var1106)) ; Statement: r37 = (java.util.List) $r5 
 ; Statement: if r37 == null goto (branch) 
(assert (= var1351 null-var473)) ; Cond: r37 == null 
 ; Statement: if z1 == 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: void removeNSDefinitions(org.w3c.dom.Element)>(r3) 
(assert (= (ite var1504 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (removeNSDefinitions/-1571706093 var640 var2639)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: void removeNSDefinitions(org.w3c.dom.Element)>(r3) 

(declare-const var640!1 var2117)
(declare-const var2639!1 var1936)
(define-const var1996 (Array Int var3231) arr-var3231-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(define-const var1015 String (String_format/1339386452 " />%n" var1996)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" />%n", $r6) 
(assert true)
;(assert (write/654681022 var1019!2 var1015)) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r7) 

(declare-const var1019!3 var3959)
(declare-const var1015!1 String)
(assert true)
;(assert (flush/-1623275180 var1019!3)) ; Statement: virtualinvoke r0.<java.io.Writer: void flush()>() 

(declare-const var1019!4 var3959)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {write/654681022=([java.io.Writer, java.lang.String], void), namespacePolicy/-719019462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy), var1795_access$000/165552159=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy], boolean), var1936_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var2788_getAttributes/1383780881=([org.w3c.dom.Node], org.w3c.dom.NamedNodeMap), cast-from-var1936-to-var2788=([org.w3c.dom.Element], org.w3c.dom.Node), var3549_getLength/1076084690=([org.w3c.dom.NamedNodeMap], int), nsURIByElement/-719019462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter], java.util.Map), var2112_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1936-to-var3231=([org.w3c.dom.Element], java.lang.Object), cast-from-var3231-to-var473=([java.lang.Object], java.util.List), removeNSDefinitions/-1571706093=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, org.w3c.dom.Element], void), arr-var3231-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), flush/-1623275180=([java.io.Writer], void)}
; {var2117=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, var640=r1, var1936=org.w3c.dom.Element, var2639=r3, var3959=java.io.Writer, var1019=r0, var3587=i0, var43=r26, var3112=null_type, var1504=z1, var3186=i5, var643="<", var1795=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy, var92=$r2, var2144=$z0, var743=$r29, var3549=org.w3c.dom.NamedNodeMap, var2788=org.w3c.dom.Node, var2586=$r30, var1466=i6, var1234=$i7, var2112=java.util.Map, var68=$r4, var3231=java.lang.Object, var1106=$r5, var473=java.util.List, var1351=r37, var1996=$r6, var1015=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter=var2117, r1=var640, org.w3c.dom.Element=var1936, r3=var2639, java.io.Writer=var3959, r0=var1019, i0=var3587, r26=var43, null_type=var3112, z1=var1504, i5=var3186, "<"=var643, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy=var1795, $r2=var92, $z0=var2144, $r29=var743, org.w3c.dom.NamedNodeMap=var3549, org.w3c.dom.Node=var2788, $r30=var2586, i6=var1466, $i7=var1234, java.util.Map=var2112, $r4=var68, java.lang.Object=var3231, $r5=var1106, java.util.List=var473, r37=var1351, $r6=var1996, $r7=var1015}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter;	r3 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: java.io.Writer;	i0 := @parameter2: int;	r26 := @parameter3: java.lang.String;	z1 := @parameter4: boolean;	i5 = 0;	if i5 >= i0 goto virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("<");	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("<");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy namespacePolicy>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy: boolean access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy)>($r2);	if $z0 == 0 goto $r29 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>();	$r29 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>();	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r29);	$r30 = interfaceinvoke r3.<org.w3c.dom.Element: org.w3c.dom.NamedNodeMap getAttributes()>();	i6 = 0;	$i7 = interfaceinvoke $r30.<org.w3c.dom.NamedNodeMap: int getLength()>();	if i6 >= $i7 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: java.util.Map nsURIByElement>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: java.util.Map nsURIByElement>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3);	r37 = (java.util.List) $r5;	if r37 == null goto (branch);	if z1 == 0 goto specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: void removeNSDefinitions(org.w3c.dom.Element)>(r3);	specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: void removeNSDefinitions(org.w3c.dom.Element)>(r3);	$r6 = newarray (java.lang.Object)[0];	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" />%n", $r6);	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r7);	virtualinvoke r0.<java.io.Writer: void flush()>();	return
;block_num 9