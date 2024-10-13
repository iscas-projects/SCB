(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3666 0)
(declare-sort var3790 0)
(declare-sort var1006 0)
(declare-sort var2227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2227-init () var2227)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2227 String) void)
(declare-const null-var3666 var3666)
(declare-const null-String String)
(declare-const null-var1006 var1006)
(declare-const null-Int Int)
(declare-const var1555 var3666) ; Statement: r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext 
(assert (not (= var1555 null-var3666)))
(declare-const var969 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var969 null-String)))
(declare-const var3670 var1006) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3670 null-var1006)))
(declare-const var3772 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3772 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r7 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;     case 2: goto $r5 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto $r4 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(1);     case 4: goto $r3 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r9 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3772 4)) (and (not (= var3772 3)) (and (not (= var3772 2)) (and (not (= var3772 1)) true))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional    
(define-const var2321 var2227 var2227-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3819 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3819)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3819!1 String)
(assert (= var3819!1 ""))
(assert true)
(define-const var665 String (append/672562846 var3819!1 "Invalid scope ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope ") 
(declare-const var3819!2 String)
(assert (= var3819!2 (str.++ var3819!1 "Invalid scope ")))
(assert true)
(define-const var3103 String (append/-1001720160 var665 var3772)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var665!1 String)
(assert (str.prefixof var665 var665!1))
(assert true)
(define-const var753 String (toString/-2075883882 var3103)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2321 var753)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var2321!1 var2227)
(declare-const var753!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2227-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3666=freemarker.ext.jsp.FreeMarkerPageContext, var1555=r0, var969=r1, var3790=null_type, var1006=java.lang.Object, var3670=r2, var3772=i0, var2227=java.lang.IllegalArgumentException, var2321=$r9, var3819=$r10, var665=$r11, var3103=$r12, var753=$r13}
; {freemarker.ext.jsp.FreeMarkerPageContext=var3666, r0=var1555, r1=var969, null_type=var3790, java.lang.Object=var1006, r2=var3670, i0=var3772, java.lang.IllegalArgumentException=var2227, $r9=var2321, $r10=var3819, $r11=var665, $r12=var3103, $r13=var753}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	i0 := @parameter2: int;	tableswitch(i0) {     case 1: goto $r7 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;     case 2: goto $r5 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto $r4 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(1);     case 4: goto $r3 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r9 = new java.lang.IllegalArgumentException; };	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 2