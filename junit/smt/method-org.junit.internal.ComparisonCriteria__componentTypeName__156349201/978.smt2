(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun componentTypeName/156349201 (var2248 ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2248 var2248)
(declare-const null-ClassObject ClassObject)
(declare-const var2864 var2248) ; Statement: r4 := @this: org.junit.internal.ComparisonCriteria 
(assert (not (= var2864 null-var2248)))
(declare-const var2194 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2194 null-ClassObject)))
(assert true)
(define-const var1546 ClassObject (getComponentType/1960034130 var2194)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
(define-const var710 Bool (isArray/1369458484 var1546)) ; Statement: $z0 = virtualinvoke r1.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert (not (= (ite var710 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2228 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2228)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2228!1 String)
(assert (= var2228!1 ""))
(assert true)
(define-const var1890 String (componentTypeName/156349201 var2864 var1546)) ; Statement: $r5 = specialinvoke r4.<org.junit.internal.ComparisonCriteria: java.lang.String componentTypeName(java.lang.Class)>(r1) 
(assert true)
(define-const var919 String (append/672562846 var2228!1 var1890)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2228!2 String)
(assert (= var2228!2 (str.++ var2228!1 var1890)))
(assert true)
(define-const var3378 String (append/672562846 var919 "[]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var919!1 String)
(assert (= var919!1 (str.++ var919 "[]")))
(assert true)
(define-const var3452 String (toString/-2075883882 var3378)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getComponentType/1960034130=([java.lang.Class], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), componentTypeName/156349201=([org.junit.internal.ComparisonCriteria, java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2248=org.junit.internal.ComparisonCriteria, var2864=r4, var2194=r0, var1546=r1, var710=$z0, var2228=$r3, var1890=$r5, var919=$r6, var3378=$r7, var3452=$r8}
; {org.junit.internal.ComparisonCriteria=var2248, r4=var2864, r0=var2194, r1=var1546, $z0=var710, $r3=var2228, $r5=var1890, $r6=var919, $r7=var3378, $r8=var3452}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.junit.internal.ComparisonCriteria;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>();	$z0 = virtualinvoke r1.<java.lang.Class: boolean isArray()>();	if $z0 == 0 goto $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = specialinvoke r4.<org.junit.internal.ComparisonCriteria: java.lang.String componentTypeName(java.lang.Class)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2