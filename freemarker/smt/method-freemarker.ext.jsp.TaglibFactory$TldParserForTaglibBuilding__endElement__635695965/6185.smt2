(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3748 0)
(declare-sort var1967 0)
(declare-sort var216 0)
(declare-sort var1686 0)
(declare-sort var5 0)
(declare-sort var3223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stack/-384195938 (var3748) var216)
(declare-fun peek/1027344839 (var216) var1686)
(declare-fun equals/-1650223740 (var1686 var1686) Bool)
(declare-fun cast-from-String-to-var1686 (String) var1686)
(declare-fun var5-init () var5)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var3748) var3223)
(declare-fun <init>/1580364285 (var5 String var3223) void)
(declare-const null-var3748 var3748)
(declare-const null-String String)
(declare-const var138 var3748) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var138 null-var3748)))
(declare-const var2027 String) ; Statement: r131 := @parameter0: java.lang.String 
(assert (not (= var2027 null-String)))
(declare-const var1322 String) ; Statement: r132 := @parameter1: java.lang.String 
(assert (not (= var1322 null-String)))
(declare-const var995 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var995 null-String)))
(define-const var2954 var216 (stack/-384195938 var138)) ; Statement: $r1 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.util.Stack stack> 
(assert true)
(define-const var388 var1686 (peek/1027344839 var2954)) ; Statement: $r3 = virtualinvoke $r1.<java.util.Stack: java.lang.Object peek()>() 
(assert true)
(define-const var1154 Bool (equals/-1650223740 var388 (cast-from-String-to-var1686 var995))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 0 goto $r4 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.util.Stack stack> 
(assert (not (not (= (ite var1154 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var788 var5 var5-init) ; Statement: $r83 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var2863 String String-init) ; Statement: $r84 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2863)) ; Statement: specialinvoke $r84.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2863!1 String)
(assert (= var2863!1 ""))
(assert true)
(define-const var1051 String (append/672562846 var2863!1 "Unbalanced tag nesting at \u0022")) ; Statement: $r85 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unbalanced tag nesting at \"") 
(declare-const var2863!2 String)
(assert (= var2863!2 (str.++ var2863!1 "Unbalanced tag nesting at \u0022")))
(assert true)
(define-const var287 String (append/672562846 var1051 var995)) ; Statement: $r86 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1051!1 String)
(assert (= var1051!1 (str.++ var1051 var995)))
(assert true)
(define-const var2152 String (append/672562846 var287 "\u0022 end-tag.")) ; Statement: $r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" end-tag.") 
(declare-const var287!1 String)
(assert (= var287!1 (str.++ var287 "\u0022 end-tag.")))
(assert true)
(define-const var3829 String (toString/-2075883882 var2152)) ; Statement: $r89 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2454 var3223 (locator/-384195938 var138)) ; Statement: $r88 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/1580364285 var788 var3829 var2454)) ; Statement: specialinvoke $r83.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator)>($r89, $r88) 

(declare-const var788!1 var5)
(declare-const var3829!1 String)
(declare-const var2454!1 var3223)
 ; Statement: throw $r83 
(check-sat)
(get-model)
(get-unsat-core)
; {stack/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], java.util.Stack), peek/1027344839=([java.util.Stack], java.lang.Object), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var1686=([java.lang.String], java.lang.Object), var5-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/1580364285=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator], void)}
; {var3748=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var138=r0, var2027=r131, var1967=null_type, var1322=r132, var995=r2, var216=java.util.Stack, var2954=$r1, var1686=java.lang.Object, var388=$r3, var1154=$z0, var5=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var788=$r83, var2863=$r84, var1051=$r85, var287=$r86, var2152=$r87, var3829=$r89, var3223=org.xml.sax.Locator, var2454=$r88}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var3748, r0=var138, r131=var2027, null_type=var1967, r132=var1322, r2=var995, java.util.Stack=var216, $r1=var2954, java.lang.Object=var1686, $r3=var388, $z0=var1154, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var5, $r83=var788, $r84=var2863, $r85=var1051, $r86=var287, $r87=var2152, $r89=var3829, org.xml.sax.Locator=var3223, $r88=var2454}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r131 := @parameter0: java.lang.String;	r132 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$r1 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.util.Stack stack>;	$r3 = virtualinvoke $r1.<java.util.Stack: java.lang.Object peek()>();	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>(r2);	if $z0 != 0 goto $r4 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: java.util.Stack stack>;	$r83 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r84 = new java.lang.StringBuilder;	specialinvoke $r84.<java.lang.StringBuilder: void <init>()>();	$r85 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unbalanced tag nesting at \"");	$r86 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" end-tag.");	$r89 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.String toString()>();	$r88 = r0.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r83.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator)>($r89, $r88);	throw $r83
;block_num 2