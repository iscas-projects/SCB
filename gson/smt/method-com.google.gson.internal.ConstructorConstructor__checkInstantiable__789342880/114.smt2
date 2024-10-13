(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var1208_isInterface/-1826253995 (Int) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const var532 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var532 null-ClassObject)))
(assert true)
(define-const var739 Int (getModifiers/698981592 var532)) ; Statement: i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>() 
(define-const var172 Bool (var1208_isInterface/-1826253995 var739)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isInterface(int)>(i0) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <java.lang.reflect.Modifier: boolean isAbstract(int)>(i0) 
(assert (not (= (ite var172 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var306 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var306)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var306!1 String)
(assert (= var306!1 ""))
(assert true)
(define-const var573 String (append/672562846 var306!1 "Interfaces can\u0027t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ") 
(declare-const var306!2 String)
(assert (= var306!2 (str.++ var306!1 "Interfaces can\u0027t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ")))
(assert true)
(define-const var3343 String (getName/-1958580599 var532)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2341 String (append/672562846 var573 var3343)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var573!1 String)
(assert (= var573!1 (str.++ var573 var3343)))
(assert true)
(define-const var238 String (toString/-2075883882 var2341)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/698981592=([java.lang.Class], int), var1208_isInterface/-1826253995=([int], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var532=r0, var739=i0, var1208=java.lang.reflect.Modifier, var172=$z0, var306=$r6, var573=$r8, var3343=$r7, var2341=$r9, var238=$r10}
; {r0=var532, i0=var739, java.lang.reflect.Modifier=var1208, $z0=var172, $r6=var306, $r8=var573, $r7=var3343, $r9=var2341, $r10=var238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isInterface(int)>(i0);	if $z0 == 0 goto $z1 = staticinvoke <java.lang.reflect.Modifier: boolean isAbstract(int)>(i0);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2