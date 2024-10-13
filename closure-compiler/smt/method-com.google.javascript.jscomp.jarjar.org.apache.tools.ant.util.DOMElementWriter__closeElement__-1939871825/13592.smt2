(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3101 0)
(declare-sort var43 0)
(declare-sort var616 0)
(declare-sort var3498 0)
(declare-sort var2236 0)
(declare-sort var3072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun write/654681022 (var616 String) void)
(declare-fun namespacePolicy/-719019462 (var3101) var2236)
(declare-fun var2236_access$000/165552159 (var2236) Bool)
(declare-fun var43_getTagName/1916305756 (var43) String)
(declare-fun arr-var3072-init () (Array Int var3072))
(declare-fun String_format/1339386452 (String (Array Int var3072)) String)
(declare-fun flush/-1623275180 (var616) void)
(declare-const null-var3101 var3101)
(declare-const null-var43 var43)
(declare-const null-var616 var616)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2360 var3101) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter 
(assert (not (= var2360 null-var3101)))
(declare-const var892 var43) ; Statement: r3 := @parameter0: org.w3c.dom.Element 
(assert (not (= var892 null-var43)))
(declare-const var419 var616) ; Statement: r0 := @parameter1: java.io.Writer 
(assert (not (= var419 null-var616)))
(declare-const var980 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var980 null-Int)))
(declare-const var2924 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var2924 null-String)))
(declare-const var1091 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1091 null-Bool)))
 ; Statement: if z0 == 0 goto virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("</") 
(assert (= (ite var1091 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (write/654681022 var419 "</")) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("</") 

(declare-const var419!1 var616)
(declare-const var2520 String)
(define-const var2254 var2236 (namespacePolicy/-719019462 var2360)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy namespacePolicy> 
(define-const var1139 Bool (var2236_access$000/165552159 var2254)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy: boolean access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy)>($r2) 
 ; Statement: if $z1 == 0 goto $r9 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert (= (ite var1139 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3703 String (var43_getTagName/1916305756 var892)) ; Statement: $r9 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
;(assert (write/654681022 var419!1 var3703)) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r9) 

(declare-const var419!2 var616)
(declare-const var3703!1 String)
(define-const var2803 (Array Int var3072) arr-var3072-init) ; Statement: $r10 = newarray (java.lang.Object)[0] 
(define-const var2805 String (String_format/1339386452 ">%n" var2803)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(">%n", $r10) 
(assert true)
;(assert (write/654681022 var419!2 var2805)) ; Statement: virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r11) 

(declare-const var419!3 var616)
(declare-const var2805!1 String)
(assert true)
;(assert (flush/-1623275180 var419!3)) ; Statement: virtualinvoke r0.<java.io.Writer: void flush()>() 

(declare-const var419!4 var616)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {write/654681022=([java.io.Writer, java.lang.String], void), namespacePolicy/-719019462=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy), var2236_access$000/165552159=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy], boolean), var43_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), arr-var3072-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), flush/-1623275180=([java.io.Writer], void)}
; {var3101=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, var2360=r1, var43=org.w3c.dom.Element, var892=r3, var616=java.io.Writer, var419=r0, var980=i0, var2924=r7, var3498=null_type, var1091=z0, var2520="</", var2236=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy, var2254=$r2, var1139=$z1, var3703=$r9, var3072=java.lang.Object, var2803=$r10, var2805=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter=var3101, r1=var2360, org.w3c.dom.Element=var43, r3=var892, java.io.Writer=var616, r0=var419, i0=var980, r7=var2924, null_type=var3498, z0=var1091, "</"=var2520, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy=var2236, $r2=var2254, $z1=var1139, $r9=var3703, java.lang.Object=var3072, $r10=var2803, $r11=var2805}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter;	r3 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: java.io.Writer;	i0 := @parameter2: int;	r7 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	if z0 == 0 goto virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("</");	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>("</");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy namespacePolicy>;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy: boolean access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter$XmlNamespacePolicy)>($r2);	if $z1 == 0 goto $r9 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>();	$r9 = interfaceinvoke r3.<org.w3c.dom.Element: java.lang.String getTagName()>();	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r9);	$r10 = newarray (java.lang.Object)[0];	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(">%n", $r10);	virtualinvoke r0.<java.io.Writer: void write(java.lang.String)>($r11);	virtualinvoke r0.<java.io.Writer: void flush()>();	return
;block_num 3