(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3449 0)
(declare-sort var3067 0)
(declare-sort var183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var183-init () var183)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var183 String) void)
(declare-const null-var3449 var3449)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1328 var3449) ; Statement: r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext 
(assert (not (= var1328 null-var3449)))
(declare-const var2322 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2322 null-String)))
(declare-const var609 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var609 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r5 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;     case 2: goto $r4 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto r3 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(0);     case 4: goto $r2 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var609 4)) (and (not (= var609 3)) (and (not (= var609 2)) (and (not (= var609 1)) true))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional    
(define-const var818 var183 var183-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1095 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1095)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1095!1 String)
(assert (= var1095!1 ""))
(assert true)
(define-const var762 String (append/672562846 var1095!1 "Invalid scope: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope: ") 
(declare-const var1095!2 String)
(assert (= var1095!2 (str.++ var1095!1 "Invalid scope: ")))
(assert true)
(define-const var890 String (append/-1001720160 var762 var609)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var762!1 String)
(assert (str.prefixof var762 var762!1))
(assert true)
(define-const var393 String (toString/-2075883882 var890)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var818 var393)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var818!1 var183)
(declare-const var393!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var183-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3449=freemarker.ext.jsp.FreeMarkerPageContext, var1328=r0, var2322=r1, var3067=null_type, var609=i0, var183=java.lang.IllegalArgumentException, var818=$r7, var1095=$r8, var762=$r9, var890=$r10, var393=$r11}
; {freemarker.ext.jsp.FreeMarkerPageContext=var3449, r0=var1328, r1=var2322, null_type=var3067, i0=var609, java.lang.IllegalArgumentException=var183, $r7=var818, $r8=var1095, $r9=var762, $r10=var890, $r11=var393}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	tableswitch(i0) {     case 1: goto $r5 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;     case 2: goto $r4 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto r3 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(0);     case 4: goto $r2 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2