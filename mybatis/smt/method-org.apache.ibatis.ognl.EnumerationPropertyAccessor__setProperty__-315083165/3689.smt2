(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1515 0)
(declare-sort var3420 0)
(declare-sort var1549 0)
(declare-sort var2384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2384-init () var2384)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1549) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2384 String) void)
(declare-const null-var1515 var1515)
(declare-const null-var3420 var3420)
(declare-const null-var1549 var1549)
(declare-const var3662 var1515) ; Statement: r7 := @this: org.apache.ibatis.ognl.EnumerationPropertyAccessor 
(assert (not (= var3662 null-var1515)))
(declare-const var2595 var3420) ; Statement: r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2595 null-var3420)))
(declare-const var3964 var1549) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var3964 null-var1549)))
(declare-const var860 var1549) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var860 null-var1549)))
(declare-const var29 var1549) ; Statement: r10 := @parameter3: java.lang.Object 
(assert (not (= var29 null-var1549)))
(define-const var276 var2384 var2384-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3766 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3766)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3766!1 String)
(assert (= var3766!1 ""))
(assert true)
(define-const var2706 String (append/672562846 var3766!1 "can\u0027t set property ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t set property ") 
(declare-const var3766!2 String)
(assert (= var3766!2 (str.++ var3766!1 "can\u0027t set property ")))
(assert true)
(define-const var2875 String (append/-1031950772 var2706 var860)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2706!1 String)
(assert (str.prefixof var2706 var2706!1))
(assert true)
(define-const var1570 String (append/672562846 var2875 " on Enumeration")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on Enumeration") 
(declare-const var2875!1 String)
(assert (= var2875!1 (str.++ var2875 " on Enumeration")))
(assert true)
(define-const var2748 String (toString/-2075883882 var1570)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var276 var2748)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var276!1 var2384)
(declare-const var2748!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2384-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1515=org.apache.ibatis.ognl.EnumerationPropertyAccessor, var3662=r7, var3420=org.apache.ibatis.ognl.OgnlContext, var2595=r8, var1549=java.lang.Object, var3964=r9, var860=r2, var29=r10, var2384=java.lang.IllegalArgumentException, var276=$r0, var3766=$r1, var2706=$r3, var2875=$r4, var1570=$r5, var2748=$r6}
; {org.apache.ibatis.ognl.EnumerationPropertyAccessor=var1515, r7=var3662, org.apache.ibatis.ognl.OgnlContext=var3420, r8=var2595, java.lang.Object=var1549, r9=var3964, r2=var860, r10=var29, java.lang.IllegalArgumentException=var2384, $r0=var276, $r1=var3766, $r3=var2706, $r4=var2875, $r5=var1570, $r6=var2748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.ognl.EnumerationPropertyAccessor;	r8 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	r10 := @parameter3: java.lang.Object;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t set property ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on Enumeration");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1