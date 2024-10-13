(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3673 0)
(declare-sort var912 0)
(declare-sort var1178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1178-init () var1178)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1178 String) void)
(declare-const null-var3673 var3673)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1486 var3673) ; Statement: r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext 
(assert (not (= var1486 null-var3673)))
(declare-const var1745 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1745 null-String)))
(declare-const var633 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var633 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r7 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;     case 2: goto $r5 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto r33 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(0);     case 4: goto $r2 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r25 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var633 4)) (and (not (= var633 3)) (and (not (= var633 2)) (and (not (= var633 1)) true))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional    
(define-const var3723 var1178 var1178-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(define-const var1373 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1373)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1373!1 String)
(assert (= var1373!1 ""))
(assert true)
(define-const var3022 String (append/672562846 var1373!1 "Invalid scope ")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope ") 
(declare-const var1373!2 String)
(assert (= var1373!2 (str.++ var1373!1 "Invalid scope ")))
(assert true)
(define-const var1561 String (append/-1001720160 var3022 var633)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3022!1 String)
(assert (str.prefixof var3022 var3022!1))
(assert true)
(define-const var2656 String (toString/-2075883882 var1561)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3723 var2656)) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r29) 

(declare-const var3723!1 var1178)
(declare-const var2656!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var1178-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3673=freemarker.ext.jsp.FreeMarkerPageContext, var1486=r0, var1745=r1, var912=null_type, var633=i0, var1178=java.lang.IllegalArgumentException, var3723=$r25, var1373=$r26, var3022=$r27, var1561=$r28, var2656=$r29}
; {freemarker.ext.jsp.FreeMarkerPageContext=var3673, r0=var1486, r1=var1745, null_type=var912, i0=var633, java.lang.IllegalArgumentException=var1178, $r25=var3723, $r26=var1373, $r27=var3022, $r28=var1561, $r29=var2656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.FreeMarkerPageContext;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	tableswitch(i0) {     case 1: goto $r7 = r0.<freemarker.ext.jsp.FreeMarkerPageContext: freemarker.core.Environment environment>;     case 2: goto $r5 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletRequest getRequest()>();     case 3: goto r33 = specialinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.http.HttpSession getSession(boolean)>(0);     case 4: goto $r2 = virtualinvoke r0.<freemarker.ext.jsp.FreeMarkerPageContext: javax.servlet.ServletContext getServletContext()>();     default: goto $r25 = new java.lang.IllegalArgumentException; };	$r25 = new java.lang.IllegalArgumentException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid scope ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r29);	throw $r25
;block_num 2