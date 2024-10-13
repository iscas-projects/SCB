(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var306 0)
(declare-sort var3088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3088-init () var3088)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3088 String) void)
(declare-const null-var306 var306)
(declare-const null-Int Int)
(declare-const var1891 var306) ; Statement: r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext 
(assert (not (= var1891 null-var306)))
(declare-const var3005 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3005 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r8 = new freemarker.ext.jsp.FreeMarkerPageContext$TemplateHashModelExEnumeration;     case 2: goto $r6 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto r18 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(0);     case 4: goto $r1 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r11 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3005 4)) (and (not (= var3005 3)) (and (not (= var3005 2)) (and (not (= var3005 1)) true))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional    
(define-const var2906 var3088 var3088-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var982 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var982)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var982!1 String)
(assert (= var982!1 ""))
(assert true)
(define-const var335 String (append/672562846 var982!1 "Invalid scope ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope ") 
(declare-const var982!2 String)
(assert (= var982!2 (str.++ var982!1 "Invalid scope ")))
(assert true)
(define-const var3434 String (append/-1001720160 var335 var3005)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var335!1 String)
(assert (str.prefixof var335 var335!1))
(assert true)
(define-const var878 String (toString/-2075883882 var3434)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2906 var878)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var2906!1 var3088)
(declare-const var878!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3088-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var306=freemarker.ext.jsp.FreeMarkerPageContext, var1891=r0, var3005=i0, var3088=java.lang.IllegalArgumentException, var2906=$r11, var982=$r12, var335=$r13, var3434=$r14, var878=$r15}
; {freemarker.ext.jsp.FreeMarkerPageContext=var306, r0=var1891, i0=var3005, java.lang.IllegalArgumentException=var3088, $r11=var2906, $r12=var982, $r13=var335, $r14=var3434, $r15=var878}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext;	i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto $r8 = new freemarker.ext.jsp.FreeMarkerPageContext$TemplateHashModelExEnumeration;     case 2: goto $r6 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto r18 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(0);     case 4: goto $r1 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r11 = new java.lang.IllegalArgumentException; };	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 2