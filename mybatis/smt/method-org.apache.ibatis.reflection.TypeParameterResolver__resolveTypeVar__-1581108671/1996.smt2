(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2332 0)
(declare-sort var2232 0)
(declare-sort var2906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2232-init () var2232)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2906_getClass/1258963082 (var2906) ClassObject)
(declare-fun cast-from-ClassObject-to-var2906 (ClassObject) var2906)
(declare-fun append/-1031950772 (String var2906) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2232 String) void)
(declare-const null-var2332 var2332)
(declare-const null-ClassObject ClassObject)
(declare-const var2707 var2332) ; Statement: r9 := @parameter0: java.lang.reflect.TypeVariable 
(assert (not (= var2707 null-var2332)))
(declare-const var1988 ClassObject) ; Statement: r0 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1988 null-ClassObject)))
(declare-const var3113 ClassObject) ; Statement: r8 := @parameter2: java.lang.Class 
(assert (not (= var3113 null-ClassObject)))
(define-const var1914 Bool true) ; Statement: $z0 = r0 instanceof java.lang.Class 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.reflect.ParameterizedType 
(assert (= (ite var1914 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2376 Bool true) ; Statement: $z1 = r0 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (= (ite var2376 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2570 var2232 var2232-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var340 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var340)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var340!1 String)
(assert (= var340!1 ""))
(assert true)
(define-const var745 String (append/672562846 var340!1 "The 2nd arg must be Class or ParameterizedType, but was: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The 2nd arg must be Class or ParameterizedType, but was: ") 
(declare-const var340!2 String)
(assert (= var340!2 (str.++ var340!1 "The 2nd arg must be Class or ParameterizedType, but was: ")))
(define-const var241 ClassObject (var2906_getClass/1258963082 (cast-from-ClassObject-to-var2906 var1988))) ; Statement: $r3 = interfaceinvoke r0.<java.lang.reflect.Type: java.lang.Class getClass()>() 
(assert true)
(define-const var1241 String (append/-1031950772 var745 (cast-from-ClassObject-to-var2906 var241))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var745!1 String)
(assert (str.prefixof var745 var745!1))
(assert true)
(define-const var686 String (toString/-2075883882 var1241)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2570 var686)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2570!1 var2232)
(declare-const var686!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2232-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2906_getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-ClassObject-to-var2906=([java.lang.reflect.Type], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2332=java.lang.reflect.TypeVariable, var2707=r9, var1988=r0, var3113=r8, var1914=$z0, var2376=$z1, var2232=java.lang.IllegalArgumentException, var2570=$r1, var340=$r2, var745=$r4, var2906=java.lang.Object, var241=$r3, var1241=$r5, var686=$r6}
; {java.lang.reflect.TypeVariable=var2332, r9=var2707, r0=var1988, r8=var3113, $z0=var1914, $z1=var2376, java.lang.IllegalArgumentException=var2232, $r1=var2570, $r2=var340, $r4=var745, java.lang.Object=var2906, $r3=var241, $r5=var1241, $r6=var686}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.lang.reflect.TypeVariable;	r0 := @parameter1: java.lang.reflect.Type;	r8 := @parameter2: java.lang.Class;	$z0 = r0 instanceof java.lang.Class;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.reflect.ParameterizedType;	$z1 = r0 instanceof java.lang.reflect.ParameterizedType;	if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The 2nd arg must be Class or ParameterizedType, but was: ");	$r3 = interfaceinvoke r0.<java.lang.reflect.Type: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3