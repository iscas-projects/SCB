(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3011 0)
(declare-sort var3214 0)
(declare-sort var649 0)
(declare-sort var1634 0)
(declare-sort var3945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var649-init () var649)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1634) ClassObject)
(declare-fun cast-from-var3011-to-var1634 (var3011) var1634)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1706884495 (var649 String var3945) void)
(declare-fun cast-from-var3214-to-var3945 (var3214) var3945)
(declare-fun cast-from-var649-to-var3945 (var649) var3945)
(declare-const null-var3011 var3011)
(declare-const null-var3214 var3214)
(declare-const var846 var3011) ; Statement: r0 := @this: freemarker.ext.servlet.FreemarkerServlet 
(assert (not (= var846 null-var3011)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2033 var3214) ; Statement: $r1 := @caughtexception 
(assert (not (= var2033 null-var3214)))
(define-const var1688 var649 var649-init) ; Statement: $r11 = new javax.servlet.ServletException 
(define-const var2763 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2763)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2763!1 String)
(assert (= var2763!1 ""))
(assert true)
(define-const var3167 String (append/672562846 var2763!1 "Error while initializing ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while initializing ") 
(declare-const var2763!2 String)
(assert (= var2763!2 (str.++ var2763!1 "Error while initializing ")))
(assert true)
(define-const var2388 ClassObject (getClass/1258963082 (cast-from-var3011-to-var1634 var846))) ; Statement: $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var40 String (getName/-1958580599 var2388)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2175 String (append/672562846 var3167 var40)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3167!1 String)
(assert (= var3167!1 (str.++ var3167 var40)))
(assert true)
(define-const var3190 String (append/672562846 var2175 " servlet; see cause exception.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" servlet; see cause exception.") 
(declare-const var2175!1 String)
(assert (= var2175!1 (str.++ var2175 " servlet; see cause exception.")))
(assert true)
(define-const var2379 String (toString/-2075883882 var3190)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1706884495 var1688 var2379 (cast-from-var3214-to-var3945 var2033))) ; Statement: specialinvoke $r11.<javax.servlet.ServletException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r1) 

(declare-const var1688!1 var649)
(declare-const var2379!1 String)
(declare-const var2033!1 var3214)
(define-const var1689 var3945 (cast-from-var649-to-var3945 var1688!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var649-init=([], javax.servlet.ServletException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3011-to-var1634=([freemarker.ext.servlet.FreemarkerServlet], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1706884495=([javax.servlet.ServletException, java.lang.String, java.lang.Throwable], void), cast-from-var3214-to-var3945=([java.lang.Exception], java.lang.Throwable), cast-from-var649-to-var3945=([javax.servlet.ServletException], java.lang.Throwable)}
; {var3011=freemarker.ext.servlet.FreemarkerServlet, var846=r0, var3214=java.lang.Exception, var2033=$r1, var649=javax.servlet.ServletException, var1688=$r11, var2763=$r10, var3167=$r6, var1634=java.lang.Object, var2388=$r4, var40=$r5, var2175=$r7, var3190=$r8, var2379=$r9, var3945=java.lang.Throwable, var1689=$r12}
; {freemarker.ext.servlet.FreemarkerServlet=var3011, r0=var846, java.lang.Exception=var3214, $r1=var2033, javax.servlet.ServletException=var649, $r11=var1688, $r10=var2763, $r6=var3167, java.lang.Object=var1634, $r4=var2388, $r5=var40, $r7=var2175, $r8=var3190, $r9=var2379, java.lang.Throwable=var3945, $r12=var1689}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.servlet.FreemarkerServlet;	$r1 := @caughtexception;	$r11 = new javax.servlet.ServletException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while initializing ");	$r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" servlet; see cause exception.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<javax.servlet.ServletException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r1);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2