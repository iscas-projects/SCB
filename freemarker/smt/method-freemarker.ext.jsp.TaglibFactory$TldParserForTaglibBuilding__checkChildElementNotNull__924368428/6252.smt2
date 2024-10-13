(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3107 0)
(declare-sort var1392 0)
(declare-sort var549 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var549-init () var549)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var3107) var3616)
(declare-fun <init>/1580364285 (var549 String var3616) void)
(declare-const null-var3107 var3107)
(declare-const null-String String)
(declare-const var886 var3107) ; Statement: r10 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var886 null-var3107)))
(declare-const var1145 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1145 null-String)))
(declare-const var498 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var498 null-String)))
(declare-const var2762 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2762 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (not (= var2762 null-String)))) ; Negate: Cond: r0 != null  
(define-const var3829 var549 var549-init) ; Statement: $r1 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var317 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var317)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var317!1 String)
(assert (= var317!1 ""))
(assert true)
(define-const var2010 String (append/672562846 var317!1 "Missing required \u0022")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing required \"") 
(declare-const var317!2 String)
(assert (= var317!2 (str.++ var317!1 "Missing required \u0022")))
(assert true)
(define-const var2930 String (append/672562846 var2010 var498)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2010!1 String)
(assert (= var2010!1 (str.++ var2010 var498)))
(assert true)
(define-const var1805 String (append/672562846 var2930 "\u0022 element inside the \u0022")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element inside the \"") 
(declare-const var2930!1 String)
(assert (= var2930!1 (str.++ var2930 "\u0022 element inside the \u0022")))
(assert true)
(define-const var1715 String (append/672562846 var1805 var1145)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1805!1 String)
(assert (= var1805!1 (str.++ var1805 var1145)))
(assert true)
(define-const var1561 String (append/672562846 var1715 "\u0022 element.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.") 
(declare-const var1715!1 String)
(assert (= var1715!1 (str.++ var1715 "\u0022 element.")))
(assert true)
(define-const var3854 String (toString/-2075883882 var1561)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var667 var3616 (locator/-384195938 var886)) ; Statement: $r11 = r10.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/1580364285 var3829 var3854 var667)) ; Statement: specialinvoke $r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator)>($r12, $r11) 

(declare-const var3829!1 var549)
(declare-const var3854!1 String)
(declare-const var667!1 var3616)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var549-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/1580364285=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator], void)}
; {var3107=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var886=r10, var1145=r6, var1392=null_type, var498=r3, var2762=r0, var549=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var3829=$r1, var317=$r2, var2010=$r4, var2930=$r5, var1805=$r7, var1715=$r8, var1561=$r9, var3854=$r12, var3616=org.xml.sax.Locator, var667=$r11}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var3107, r10=var886, r6=var1145, null_type=var1392, r3=var498, r0=var2762, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var549, $r1=var3829, $r2=var317, $r4=var2010, $r5=var2930, $r7=var1805, $r8=var1715, $r9=var1561, $r12=var3854, org.xml.sax.Locator=var3616, $r11=var667}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	if r0 != null goto return;	$r1 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing required \"");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element inside the \"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.");	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r10.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r1.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator)>($r12, $r11);	throw $r1
;block_num 2