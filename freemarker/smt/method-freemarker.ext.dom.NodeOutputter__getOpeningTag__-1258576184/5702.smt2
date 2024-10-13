(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1070 0)
(declare-sort var3362 0)
(declare-sort var3741 0)
(declare-sort var3784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun outputQualifiedName/2043439309 (var1070 var3741 String) void)
(declare-fun cast-from-var3362-to-var3741 (var3362) var3741)
(declare-fun namespaceDecl/-673924355 (var1070) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3741_getAttributes/1383780881 (var3741) var3784)
(declare-fun outputContent/1110647450 (var1070 var3784 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1070 var1070)
(declare-const null-var3362 var3362)
(declare-const var3396 var1070) ; Statement: r1 := @this: freemarker.ext.dom.NodeOutputter 
(assert (not (= var3396 null-var1070)))
(declare-const var3042 var3362) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3042 null-var3362)))
(define-const var1494 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1494)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1494!1 String)
(assert (= var1494!1 ""))
(assert true)
;(assert (append/-1166366385 var1494!1 60)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var1494!2 String)
(assert (str.prefixof var1494!1 var1494!2))
(assert true)
;(assert (outputQualifiedName/2043439309 var3396 (cast-from-var3362-to-var3741 var3042) var1494!2)) ; Statement: specialinvoke r1.<freemarker.ext.dom.NodeOutputter: void outputQualifiedName(org.w3c.dom.Node,java.lang.StringBuilder)>(r2, $r0) 

(declare-const var3396!1 var1070)
(declare-const var3042!1 var3362)
(declare-const var1494!3 String)
(define-const var3695 String (namespaceDecl/-673924355 var3396!1)) ; Statement: $r3 = r1.<freemarker.ext.dom.NodeOutputter: java.lang.String namespaceDecl> 
(assert true)
;(assert (append/672562846 var1494!3 var3695)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1494!4 String)
(assert (= var1494!4 (str.++ var1494!3 var3695)))
(define-const var3561 var3784 (var3741_getAttributes/1383780881 (cast-from-var3362-to-var3741 var3042!1))) ; Statement: $r4 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NamedNodeMap getAttributes()>() 
(assert true)
;(assert (outputContent/1110647450 var3396!1 var3561 var1494!4)) ; Statement: virtualinvoke r1.<freemarker.ext.dom.NodeOutputter: void outputContent(org.w3c.dom.NamedNodeMap,java.lang.StringBuilder)>($r4, $r0) 

(declare-const var3396!2 var1070)
(declare-const var3561!1 var3784)
(declare-const var1494!5 String)
(assert true)
;(assert (append/-1166366385 var1494!5 62)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1494!6 String)
(assert (str.prefixof var1494!5 var1494!6))
(assert true)
(define-const var3429 String (toString/-2075883882 var1494!6)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), outputQualifiedName/2043439309=([freemarker.ext.dom.NodeOutputter, org.w3c.dom.Node, java.lang.StringBuilder], void), cast-from-var3362-to-var3741=([org.w3c.dom.Element], org.w3c.dom.Node), namespaceDecl/-673924355=([freemarker.ext.dom.NodeOutputter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3741_getAttributes/1383780881=([org.w3c.dom.Node], org.w3c.dom.NamedNodeMap), outputContent/1110647450=([freemarker.ext.dom.NodeOutputter, org.w3c.dom.NamedNodeMap, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1070=freemarker.ext.dom.NodeOutputter, var3396=r1, var3362=org.w3c.dom.Element, var3042=r2, var1494=$r0, var3741=org.w3c.dom.Node, var3695=$r3, var3784=org.w3c.dom.NamedNodeMap, var3561=$r4, var3429=$r5}
; {freemarker.ext.dom.NodeOutputter=var1070, r1=var3396, org.w3c.dom.Element=var3362, r2=var3042, $r0=var1494, org.w3c.dom.Node=var3741, $r3=var3695, org.w3c.dom.NamedNodeMap=var3784, $r4=var3561, $r5=var3429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.dom.NodeOutputter;	r2 := @parameter0: org.w3c.dom.Element;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	specialinvoke r1.<freemarker.ext.dom.NodeOutputter: void outputQualifiedName(org.w3c.dom.Node,java.lang.StringBuilder)>(r2, $r0);	$r3 = r1.<freemarker.ext.dom.NodeOutputter: java.lang.String namespaceDecl>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NamedNodeMap getAttributes()>();	virtualinvoke r1.<freemarker.ext.dom.NodeOutputter: void outputContent(org.w3c.dom.NamedNodeMap,java.lang.StringBuilder)>($r4, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1