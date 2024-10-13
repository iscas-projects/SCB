(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1492 0)
(declare-sort var930 0)
(declare-sort var358 0)
(declare-sort var5 0)
(declare-sort var248 0)
(declare-sort var1705 0)
(declare-sort var3525 0)
(declare-sort var2584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2584!class ClassObject)
(declare-fun getPropertyDefinition/-1779499678 (var1492) var5)
(declare-fun var5_isRuntimeModifiable/1406227529 (var5) Bool)
(declare-fun arr-var930-init () (Array Int var930))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var5_getName/94229745 (var5) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var930 (String) var930)
(declare-fun var248_getString/1500902777 (String (Array Int var930)) String)
(declare-fun var3525_createException/361149092 (ClassObject String) var1705)
(declare-fun cast-from-var1705-to-var2584 (var1705) var2584)
(declare-const null-var1492 var1492)
(declare-const null-var930 var930)
(declare-const null-var358 var358)
(declare-const null-__Array__Int__var930__ (Array Int var930))
(declare-const var152 var1492) ; Statement: r0 := @this: com.mysql.cj.conf.AbstractRuntimeProperty 
(assert (not (= var152 null-var1492)))
(declare-const var1392 var930) ; Statement: r13 := @parameter0: java.lang.Object 
(assert (not (= var1392 null-var930)))
(declare-const var1225 var358) ; Statement: r14 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var1225 null-var358)))
(assert true)
(define-const var3333 var5 (getPropertyDefinition/-1779499678 var152)) ; Statement: $r1 = virtualinvoke r0.<com.mysql.cj.conf.AbstractRuntimeProperty: com.mysql.cj.conf.PropertyDefinition getPropertyDefinition()>() 
(define-const var3154 Bool (var5_isRuntimeModifiable/1406227529 var3333)) ; Statement: $z0 = interfaceinvoke $r1.<com.mysql.cj.conf.PropertyDefinition: boolean isRuntimeModifiable()>() 
 ; Statement: if $z0 == 0 goto $r2 = newarray (java.lang.Object)[1] 
(assert (= (ite var3154 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3916 (Array Int var930) arr-var930-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(define-const var1818 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1818)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1818!1 String)
(assert (= var1818!1 ""))
(assert true)
(define-const var1415 String (append/672562846 var1818!1 "\u0027")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1818!2 String)
(assert (= var1818!2 (str.++ var1818!1 "\u0027")))
(assert true)
(define-const var2200 var5 (getPropertyDefinition/-1779499678 var152)) ; Statement: $r4 = virtualinvoke r0.<com.mysql.cj.conf.AbstractRuntimeProperty: com.mysql.cj.conf.PropertyDefinition getPropertyDefinition()>() 
(define-const var3954 String (var5_getName/94229745 var2200)) ; Statement: $r5 = interfaceinvoke $r4.<com.mysql.cj.conf.PropertyDefinition: java.lang.String getName()>() 
(assert true)
(define-const var2445 String (append/672562846 var1415 var3954)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1415!1 String)
(assert (= var1415!1 (str.++ var1415 var3954)))
(assert true)
(define-const var2838 String (append/672562846 var2445 "\u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2445!1 String)
(assert (= var2445!1 (str.++ var2445 "\u0027")))
(assert true)
(define-const var2038 String (toString/-2075883882 var2838)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3916!1 (Array Int var930))
(assert (not (= var3916!1 null-__Array__Int__var930__)))
(assert (= (select var3916!1 0) (cast-from-String-to-var930 var2038))) ; Statement: $r2[0] = $r9 
(define-const var3591 String (var248_getString/1500902777 "ConnectionProperties.dynamicChangeIsNotAllowed" var3916!1)) ; Statement: $r10 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("ConnectionProperties.dynamicChangeIsNotAllowed", $r2) 
(define-const var3911 var1705 (var3525_createException/361149092 var2584!class var3591)) ; Statement: $r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/PropertyNotModifiableException;", $r10) 
(define-const var3004 var2584 (cast-from-var1705-to-var2584 var3911)) ; Statement: $r12 = (com.mysql.cj.exceptions.PropertyNotModifiableException) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyDefinition/-1779499678=([com.mysql.cj.conf.AbstractRuntimeProperty], com.mysql.cj.conf.PropertyDefinition), var5_isRuntimeModifiable/1406227529=([com.mysql.cj.conf.PropertyDefinition], boolean), arr-var930-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var5_getName/94229745=([com.mysql.cj.conf.PropertyDefinition], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var930=([java.lang.String], java.lang.Object), var248_getString/1500902777=([java.lang.String, java.lang.Object[]], java.lang.String), var3525_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var1705-to-var2584=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.PropertyNotModifiableException)}
; {var1492=com.mysql.cj.conf.AbstractRuntimeProperty, var152=r0, var930=java.lang.Object, var1392=r13, var358=com.mysql.cj.exceptions.ExceptionInterceptor, var1225=r14, var5=com.mysql.cj.conf.PropertyDefinition, var3333=$r1, var3154=$z0, var3916=$r2, var1818=$r3, var1415=$r6, var2200=$r4, var3954=$r5, var2445=$r7, var2838=$r8, var2038=$r9, var248=com.mysql.cj.Messages, var3591=$r10, var1705=com.mysql.cj.exceptions.CJException, var3525=com.mysql.cj.exceptions.ExceptionFactory, var2584=com.mysql.cj.exceptions.PropertyNotModifiableException, var3911=$r11, var3004=$r12}
; {com.mysql.cj.conf.AbstractRuntimeProperty=var1492, r0=var152, java.lang.Object=var930, r13=var1392, com.mysql.cj.exceptions.ExceptionInterceptor=var358, r14=var1225, com.mysql.cj.conf.PropertyDefinition=var5, $r1=var3333, $z0=var3154, $r2=var3916, $r3=var1818, $r6=var1415, $r4=var2200, $r5=var3954, $r7=var2445, $r8=var2838, $r9=var2038, com.mysql.cj.Messages=var248, $r10=var3591, com.mysql.cj.exceptions.CJException=var1705, com.mysql.cj.exceptions.ExceptionFactory=var3525, com.mysql.cj.exceptions.PropertyNotModifiableException=var2584, $r11=var3911, $r12=var3004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.conf.AbstractRuntimeProperty;	r13 := @parameter0: java.lang.Object;	r14 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor;	$r1 = virtualinvoke r0.<com.mysql.cj.conf.AbstractRuntimeProperty: com.mysql.cj.conf.PropertyDefinition getPropertyDefinition()>();	$z0 = interfaceinvoke $r1.<com.mysql.cj.conf.PropertyDefinition: boolean isRuntimeModifiable()>();	if $z0 == 0 goto $r2 = newarray (java.lang.Object)[1];	$r2 = newarray (java.lang.Object)[1];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke r0.<com.mysql.cj.conf.AbstractRuntimeProperty: com.mysql.cj.conf.PropertyDefinition getPropertyDefinition()>();	$r5 = interfaceinvoke $r4.<com.mysql.cj.conf.PropertyDefinition: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r2[0] = $r9;	$r10 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String,java.lang.Object[])>("ConnectionProperties.dynamicChangeIsNotAllowed", $r2);	$r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/PropertyNotModifiableException;", $r10);	$r12 = (com.mysql.cj.exceptions.PropertyNotModifiableException) $r11;	throw $r12
;block_num 2