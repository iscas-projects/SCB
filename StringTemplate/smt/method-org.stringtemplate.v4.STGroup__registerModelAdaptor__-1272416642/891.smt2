(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort var953 0)
(declare-sort var2611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun var2611-init () var2611)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2611 String) void)
(declare-const null-var2106 var2106)
(declare-const null-ClassObject ClassObject)
(declare-const null-var953 var953)
(declare-const var2501 var2106) ; Statement: r1 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var2501 null-var2106)))
(declare-const var2722 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2722 null-ClassObject)))
(declare-const var819 var953) ; Statement: r2 := @parameter1: org.stringtemplate.v4.ModelAdaptor 
(assert (not (= var819 null-var953)))
(assert true)
(define-const var3366 Bool (isPrimitive/-473230874 var2722)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map adaptors> 
(assert (not (= (ite var3366 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1866 var2611 var2611-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1007 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1007)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1007!1 String)
(assert (= var1007!1 ""))
(assert true)
(define-const var3663 String (append/672562846 var1007!1 "can\u0027t register ModelAdaptor for primitive type ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t register ModelAdaptor for primitive type ") 
(declare-const var1007!2 String)
(assert (= var1007!2 (str.++ var1007!1 "can\u0027t register ModelAdaptor for primitive type ")))
(assert true)
(define-const var770 String (getSimpleName/-390194377 var2722)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3204 String (append/672562846 var3663 var770)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3663!1 String)
(assert (= var3663!1 (str.++ var3663 var770)))
(assert true)
(define-const var1253 String (toString/-2075883882 var3204)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1866 var1253)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var1866!1 var2611)
(declare-const var1253!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), var2611-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2106=org.stringtemplate.v4.STGroup, var2501=r1, var2722=r0, var953=org.stringtemplate.v4.ModelAdaptor, var819=r2, var3366=$z0, var2611=java.lang.IllegalArgumentException, var1866=$r4, var1007=$r5, var3663=$r7, var770=$r6, var3204=$r8, var1253=$r9}
; {org.stringtemplate.v4.STGroup=var2106, r1=var2501, r0=var2722, org.stringtemplate.v4.ModelAdaptor=var953, r2=var819, $z0=var3366, java.lang.IllegalArgumentException=var2611, $r4=var1866, $r5=var1007, $r7=var3663, $r6=var770, $r8=var3204, $r9=var1253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: java.lang.Class;	r2 := @parameter1: org.stringtemplate.v4.ModelAdaptor;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r3 = r1.<org.stringtemplate.v4.STGroup: java.util.Map adaptors>;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("can\'t register ModelAdaptor for primitive type ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2