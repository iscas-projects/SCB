(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3997 0)
(declare-sort var205 0)
(declare-sort var2534 0)
(declare-sort var3055 0)
(declare-sort var91 0)
(declare-sort var3812 0)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3812-init () var3812)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2534) String)
(declare-fun cast-from-var91-to-var2534 (var91) var2534)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var3812 String var892) void)
(declare-fun cast-from-var91-to-var892 (var91) var892)
(declare-const null-var3997 var3997)
(declare-const null-String String)
(declare-const null-var2534 var2534)
(declare-const null-var3055 var3055)
(declare-const null-var91 var91)
(declare-const var3374 var3997) ; Statement: r0 := @this: org.apache.ibatis.parsing.XPathParser 
(assert (not (= var3374 null-var3997)))
(declare-const var1403 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1403 null-String)))
(declare-const var3892 var2534) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3892 null-var2534)))
(declare-const var2081 var3055) ; Statement: r3 := @parameter2: javax.xml.namespace.QName 
(assert (not (= var2081 null-var3055)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1805 var91) ; Statement: $r6 := @caughtexception 
(assert (not (= var1805 null-var91)))
(define-const var3528 var3812 var3812-init) ; Statement: $r7 = new org.apache.ibatis.builder.BuilderException 
(define-const var2388 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2388)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2388!1 String)
(assert (= var2388!1 ""))
(assert true)
(define-const var3253 String (append/672562846 var2388!1 "Error evaluating XPath.  Cause: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error evaluating XPath.  Cause: ") 
(declare-const var2388!2 String)
(assert (= var2388!2 (str.++ var2388!1 "Error evaluating XPath.  Cause: ")))
(assert true)
(define-const var1060 String (append/-1031950772 var3253 (cast-from-var91-to-var2534 var1805))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3253!1 String)
(assert (str.prefixof var3253 var3253!1))
(assert true)
(define-const var110 String (toString/-2075883882 var1060)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var3528 var110 (cast-from-var91-to-var892 var1805))) ; Statement: specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6) 

(declare-const var3528!1 var3812)
(declare-const var110!1 String)
(declare-const var1805!1 var91)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3812-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var91-to-var2534=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var91-to-var892=([java.lang.Exception], java.lang.Throwable)}
; {var3997=org.apache.ibatis.parsing.XPathParser, var3374=r0, var1403=r1, var205=null_type, var2534=java.lang.Object, var3892=r2, var3055=javax.xml.namespace.QName, var2081=r3, var91=java.lang.Exception, var1805=$r6, var3812=org.apache.ibatis.builder.BuilderException, var3528=$r7, var2388=$r8, var3253=$r9, var1060=$r10, var110=$r11, var892=java.lang.Throwable}
; {org.apache.ibatis.parsing.XPathParser=var3997, r0=var3374, r1=var1403, null_type=var205, java.lang.Object=var2534, r2=var3892, javax.xml.namespace.QName=var3055, r3=var2081, java.lang.Exception=var91, $r6=var1805, org.apache.ibatis.builder.BuilderException=var3812, $r7=var3528, $r8=var2388, $r9=var3253, $r10=var1060, $r11=var110, java.lang.Throwable=var892}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.parsing.XPathParser;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: javax.xml.namespace.QName;	$r6 := @caughtexception;	$r7 = new org.apache.ibatis.builder.BuilderException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error evaluating XPath.  Cause: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6);	throw $r7
;block_num 2