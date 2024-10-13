(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2870 0)
(declare-sort var2597 0)
(declare-sort var3975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2597-init () var2597)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3975) ClassObject)
(declare-fun cast-from-var2870-to-var3975 (var2870) var3975)
(declare-fun append/-1031950772 (String var3975) String)
(declare-fun cast-from-ClassObject-to-var3975 (ClassObject) var3975)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var2597 String) void)
(declare-const null-var2870 var2870)
(declare-const var354 var2870) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var354 null-var2870)))
(define-const var3858 var2597 var2597-init) ; Statement: $r0 = new java.lang.ClassCastException 
(define-const var241 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var241)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var241!1 String)
(assert (= var241!1 ""))
(assert true)
(define-const var3936 ClassObject (getClass/1258963082 (cast-from-var2870-to-var3975 var354))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2957 String (append/-1031950772 var241!1 (cast-from-ClassObject-to-var3975 var3936))) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var241!2 String)
(assert (str.prefixof var241!1 var241!2))
(assert true)
(define-const var2541 String (append/672562846 var2957 " doesn\u0027t provide files")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t provide files") 
(declare-const var2957!1 String)
(assert (= var2957!1 (str.++ var2957 " doesn\u0027t provide files")))
(assert true)
(define-const var2189 String (toString/-2075883882 var2541)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 var3858 var2189)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r6) 

(declare-const var3858!1 var2597)
(declare-const var2189!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2597-init=([], java.lang.ClassCastException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2870-to-var3975=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3975=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var2870=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var354=r2, var2597=java.lang.ClassCastException, var3858=$r0, var241=$r1, var3975=java.lang.Object, var3936=$r3, var2957=$r4, var2541=$r5, var2189=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2870, r2=var354, java.lang.ClassCastException=var2597, $r0=var3858, $r1=var241, java.lang.Object=var3975, $r3=var3936, $r4=var2957, $r5=var2541, $r6=var2189}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$r0 = new java.lang.ClassCastException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t provide files");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1