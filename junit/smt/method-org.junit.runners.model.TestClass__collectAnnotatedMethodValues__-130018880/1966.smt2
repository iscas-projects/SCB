(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1595 0)
(declare-sort var3863 0)
(declare-sort var3851 0)
(declare-sort var822 0)
(declare-sort var1603 0)
(declare-sort var524 0)
(declare-sort var2905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAnnotatedMethods/-73902987 (var1595 ClassObject) var822)
(declare-fun var822_iterator/-912451715 (var822) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3863)
(declare-fun cast-from-var3863-to-var1603 (var3863) var1603)
(declare-fun var2905-init () var2905)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/128190120 (var1603) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2905 String var524) void)
(declare-const null-var1595 var1595)
(declare-const null-var3863 var3863)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3851 var3851)
(declare-const null-var524 var524)
(declare-const var423 var1595) ; Statement: r0 := @this: org.junit.runners.model.TestClass 
(assert (not (= var423 null-var1595)))
(declare-const var3172 var3863) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var3172 null-var3863)))
(declare-const var2545 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var2545 null-ClassObject)))
(declare-const var1286 ClassObject) ; Statement: r6 := @parameter2: java.lang.Class 
(assert (not (= var1286 null-ClassObject)))
(declare-const var1466 var3851) ; Statement: r10 := @parameter3: org.junit.runners.model.MemberValueConsumer 
(assert (not (= var1466 null-var3851)))
(assert true)
(define-const var451 var822 (getAnnotatedMethods/-73902987 var423 var2545)) ; Statement: $r2 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.util.List getAnnotatedMethods(java.lang.Class)>(r1) 
(define-const var286 Iterator (var822_iterator/-912451715 var451)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1418 Bool (Iterator_hasNext/-1669924200 var286)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1418 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1811 var3863 (Iterator_next/-1124697587 var286)) ; Statement: $r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var286!1 Iterator)
(define-const var3446 var1603 (cast-from-var3863-to-var1603 var1811)) ; Statement: r5 = (org.junit.runners.model.FrameworkMethod) $r4 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var26 var524) ; Statement: $r12 := @caughtexception 
(assert (not (= var26 null-var524)))
(define-const var3337 var2905 var2905-init) ; Statement: $r13 = new java.lang.RuntimeException 
(define-const var3420 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3420)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3420!1 String)
(assert (= var3420!1 ""))
(assert true)
(define-const var2539 String (append/672562846 var3420!1 "Exception in ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception in ") 
(declare-const var3420!2 String)
(assert (= var3420!2 (str.++ var3420!1 "Exception in ")))
(assert true)
(define-const var645 String (getName/128190120 var3446)) ; Statement: $r15 = virtualinvoke r5.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>() 
(assert true)
(define-const var1260 String (append/672562846 var2539 var645)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2539!1 String)
(assert (= var2539!1 (str.++ var2539 var645)))
(assert true)
(define-const var2939 String (toString/-2075883882 var1260)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var3337 var2939 var26)) ; Statement: specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var3337!1 var2905)
(declare-const var2939!1 String)
(declare-const var26!1 var524)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotatedMethods/-73902987=([org.junit.runners.model.TestClass, java.lang.Class], java.util.List), var822_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3863-to-var1603=([java.lang.Object], org.junit.runners.model.FrameworkMethod), var2905-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/128190120=([org.junit.runners.model.FrameworkMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var1595=org.junit.runners.model.TestClass, var423=r0, var3863=java.lang.Object, var3172=r8, var2545=r1, var1286=r6, var3851=org.junit.runners.model.MemberValueConsumer, var1466=r10, var822=java.util.List, var451=$r2, var286=r3, var1418=$z0, var1811=$r4, var1603=org.junit.runners.model.FrameworkMethod, var3446=r5, var524=java.lang.Throwable, var26=$r12, var2905=java.lang.RuntimeException, var3337=$r13, var3420=$r14, var2539=$r16, var645=$r15, var1260=$r17, var2939=$r18}
; {org.junit.runners.model.TestClass=var1595, r0=var423, java.lang.Object=var3863, r8=var3172, r1=var2545, r6=var1286, org.junit.runners.model.MemberValueConsumer=var3851, r10=var1466, java.util.List=var822, $r2=var451, r3=var286, $z0=var1418, $r4=var1811, org.junit.runners.model.FrameworkMethod=var1603, r5=var3446, java.lang.Throwable=var524, $r12=var26, java.lang.RuntimeException=var2905, $r13=var3337, $r14=var3420, $r16=var2539, $r15=var645, $r17=var1260, $r18=var2939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.runners.model.TestClass;	r8 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Class;	r6 := @parameter2: java.lang.Class;	r10 := @parameter3: org.junit.runners.model.MemberValueConsumer;	$r2 = virtualinvoke r0.<org.junit.runners.model.TestClass: java.util.List getAnnotatedMethods(java.lang.Class)>(r1);	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	$r4 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r5 = (org.junit.runners.model.FrameworkMethod) $r4;	$r12 := @caughtexception;	$r13 = new java.lang.RuntimeException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception in ");	$r15 = virtualinvoke r5.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	throw $r13
;block_num 4