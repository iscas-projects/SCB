(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var3799 0)
(declare-sort var504 0)
(declare-sort var2164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var504!class ClassObject)
(declare-fun getAnnotatedMethods/-73902987 (var3547 ClassObject) var3799)
(declare-fun var3799_iterator/-912451715 (var3799) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2164-init () var2164)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1384225025 (var3547) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var2164 String) void)
(declare-const null-var3547 var3547)
(declare-const var406 var3547) ; Statement: r0 := @parameter0: org.junit.runners.model.TestClass 
(assert (not (= var406 null-var3547)))
(assert true)
(define-const var2788 var3799 (getAnnotatedMethods/-73902987 var406 var504!class)) ; Statement: r1 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.util.List getAnnotatedMethods(java.lang.Class)>(class "Lorg/junit/runners/Parameterized$Parameters;") 
(define-const var3615 Iterator (var3799_iterator/-912451715 var2788)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2465 Bool (Iterator_hasNext/-1669924200 var3615)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.Exception 
(assert (= (ite var2465 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2805 var2164 var2164-init) ; Statement: $r3 = new java.lang.Exception 
(define-const var517 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var517)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var517!1 String)
(assert (= var517!1 ""))
(assert true)
(define-const var1297 String (append/672562846 var517!1 "No public static parameters method on class ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No public static parameters method on class ") 
(declare-const var517!2 String)
(assert (= var517!2 (str.++ var517!1 "No public static parameters method on class ")))
(assert true)
(define-const var3686 String (getName/1384225025 var406)) ; Statement: $r5 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.lang.String getName()>() 
(assert true)
(define-const var3139 String (append/672562846 var1297 var3686)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1297!1 String)
(assert (= var1297!1 (str.++ var1297 var3686)))
(assert true)
(define-const var1006 String (toString/-2075883882 var3139)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var2805 var1006)) ; Statement: specialinvoke $r3.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var2805!1 var2164)
(declare-const var1006!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotatedMethods/-73902987=([org.junit.runners.model.TestClass, java.lang.Class], java.util.List), var3799_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2164-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1384225025=([org.junit.runners.model.TestClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var3547=org.junit.runners.model.TestClass, var406=r0, var3799=java.util.List, var504=org.junit.runners.Parameterized$Parameters, var2788=r1, var3615=r2, var2465=$z0, var2164=java.lang.Exception, var2805=$r3, var517=$r4, var1297=$r6, var3686=$r5, var3139=$r7, var1006=$r8}
; {org.junit.runners.model.TestClass=var3547, r0=var406, java.util.List=var3799, org.junit.runners.Parameterized$Parameters=var504, r1=var2788, r2=var3615, $z0=var2465, java.lang.Exception=var2164, $r3=var2805, $r4=var517, $r6=var1297, $r5=var3686, $r7=var3139, $r8=var1006}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.junit.runners.model.TestClass;	r1 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.util.List getAnnotatedMethods(java.lang.Class)>(class "Lorg/junit/runners/Parameterized$Parameters;");	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = new java.lang.Exception;	$r3 = new java.lang.Exception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No public static parameters method on class ");	$r5 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.Exception: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 3