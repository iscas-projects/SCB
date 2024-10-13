(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1943 0)
(declare-sort var450 0)
(declare-sort var3191 0)
(declare-sort var2850 0)
(declare-sort var3665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1943!class ClassObject)
(declare-fun <init>/-279557996 (var450) void)
(declare-fun cast-from-var1943-to-var450 (var1943) var450)
(declare-fun var2850-init () var2850)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var450) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var2850 String var3665) void)
(declare-fun cast-from-var3191-to-var3665 (var3191) var3665)
(declare-const null-var1943 var1943)
(declare-const null-var3191 var3191)
(declare-const var3577 var1943) ; Statement: r0 := @this: freemarker.ext.beans.DefaultMemberAccessPolicy 
(assert (not (= var3577 null-var1943)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1943-to-var450 var3577))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3577!1 var1943)
(define-const var640 ClassObject var1943!class) ; Statement: $r1 = class "Lfreemarker/ext/beans/DefaultMemberAccessPolicy;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3513 var3191) ; Statement: $r37 := @caughtexception 
(assert (not (= var3513 null-var3191)))
(define-const var1262 var2850 var2850-init) ; Statement: $r38 = new java.lang.IllegalStateException 
(define-const var3500 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3500)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3500!1 String)
(assert (= var3500!1 ""))
(assert true)
(define-const var336 String (append/672562846 var3500!1 "Couldn\u0027t init ")) ; Statement: $r42 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t init ") 
(declare-const var3500!2 String)
(assert (= var3500!2 (str.++ var3500!1 "Couldn\u0027t init ")))
(assert true)
(define-const var1070 ClassObject (getClass/1258963082 (cast-from-var1943-to-var450 var3577!1))) ; Statement: $r40 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1639 String (getName/-1958580599 var1070)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3143 String (append/672562846 var336 var1639)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var336!1 String)
(assert (= var336!1 (str.++ var336 var1639)))
(assert true)
(define-const var1946 String (append/672562846 var3143 " instance")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instance") 
(declare-const var3143!1 String)
(assert (= var3143!1 (str.++ var3143 " instance")))
(assert true)
(define-const var183 String (toString/-2075883882 var1946)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1262 var183 (cast-from-var3191-to-var3665 var3513))) ; Statement: specialinvoke $r38.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r45, $r37) 

(declare-const var1262!1 var2850)
(declare-const var183!1 String)
(declare-const var3513!1 var3191)
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1943-to-var450=([freemarker.ext.beans.DefaultMemberAccessPolicy], java.lang.Object), var2850-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var3191-to-var3665=([java.lang.Exception], java.lang.Throwable)}
; {var1943=freemarker.ext.beans.DefaultMemberAccessPolicy, var3577=r0, var450=java.lang.Object, var640=$r1, var3191=java.lang.Exception, var3513=$r37, var2850=java.lang.IllegalStateException, var1262=$r38, var3500=$r39, var336=$r42, var1070=$r40, var1639=$r41, var3143=$r43, var1946=$r44, var183=$r45, var3665=java.lang.Throwable}
; {freemarker.ext.beans.DefaultMemberAccessPolicy=var1943, r0=var3577, java.lang.Object=var450, $r1=var640, java.lang.Exception=var3191, $r37=var3513, java.lang.IllegalStateException=var2850, $r38=var1262, $r39=var3500, $r42=var336, $r40=var1070, $r41=var1639, $r43=var3143, $r44=var1946, $r45=var183, java.lang.Throwable=var3665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.DefaultMemberAccessPolicy;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = class "Lfreemarker/ext/beans/DefaultMemberAccessPolicy;";	$r37 := @caughtexception;	$r38 = new java.lang.IllegalStateException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t init ");	$r40 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r41 = virtualinvoke $r40.<java.lang.Class: java.lang.String getName()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" instance");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r38.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r45, $r37);	throw $r38
;block_num 2