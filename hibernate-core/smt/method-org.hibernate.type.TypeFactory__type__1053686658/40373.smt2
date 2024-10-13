(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1260 0)
(declare-sort var126 0)
(declare-sort var2648 0)
(declare-sort var2928 0)
(declare-sort var825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2928-init () var2928)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var2928 String var825) void)
(declare-fun cast-from-var2648-to-var825 (var2648) var825)
(declare-fun cast-from-var2928-to-var825 (var2928) var825)
(declare-const null-var1260 var1260)
(declare-const null-ClassObject ClassObject)
(declare-const null-var126 var126)
(declare-const null-var2648 var2648)
(declare-const var1857 var1260) ; Statement: r6 := @this: org.hibernate.type.TypeFactory 
(assert (not (= var1857 null-var1260)))
(declare-const var1295 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1295 null-ClassObject)))
(declare-const var748 var126) ; Statement: r4 := @parameter1: java.util.Properties 
(assert (not (= var748 null-var126)))
(define-const var1435 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[1] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3807 var2648) ; Statement: $r8 := @caughtexception 
(assert (not (= var3807 null-var2648)))
(define-const var2558 var2928 var2928-init) ; Statement: $r17 = new org.hibernate.MappingException 
(define-const var1040 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1040)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1040!1 String)
(assert (= var1040!1 ""))
(assert true)
(define-const var1934 String (append/672562846 var1040!1 "Could not instantiate Type: ")) ; Statement: $r12 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate Type: ") 
(declare-const var1040!2 String)
(assert (= var1040!2 (str.++ var1040!1 "Could not instantiate Type: ")))
(assert true)
(define-const var1294 String (getName/-1958580599 var1295)) ; Statement: $r11 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1941 String (append/672562846 var1934 var1294)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1934!1 String)
(assert (= var1934!1 (str.++ var1934 var1294)))
(assert true)
(define-const var3586 String (toString/-2075883882 var1941)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var2558 var3586 (cast-from-var2648-to-var825 var3807))) ; Statement: specialinvoke $r17.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8) 

(declare-const var2558!1 var2928)
(declare-const var3586!1 String)
(declare-const var3807!1 var2648)
(define-const var3352 var825 (cast-from-var2928-to-var825 var2558!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var2928-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var2648-to-var825=([java.lang.Exception], java.lang.Throwable), cast-from-var2928-to-var825=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1260=org.hibernate.type.TypeFactory, var1857=r6, var1295=r0, var126=java.util.Properties, var748=r4, var1435=$r1, var2648=java.lang.Exception, var3807=$r8, var2928=org.hibernate.MappingException, var2558=$r17, var1040=$r16, var1934=$r12, var1294=$r11, var1941=$r13, var3586=$r14, var825=java.lang.Throwable, var3352=$r18}
; {org.hibernate.type.TypeFactory=var1260, r6=var1857, r0=var1295, java.util.Properties=var126, r4=var748, $r1=var1435, java.lang.Exception=var2648, $r8=var3807, org.hibernate.MappingException=var2928, $r17=var2558, $r16=var1040, $r12=var1934, $r11=var1294, $r13=var1941, $r14=var3586, java.lang.Throwable=var825, $r18=var3352}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.type.TypeFactory;	r0 := @parameter0: java.lang.Class;	r4 := @parameter1: java.util.Properties;	$r1 = newarray (java.lang.Class)[1];	$r8 := @caughtexception;	$r17 = new org.hibernate.MappingException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate Type: ");	$r11 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 2