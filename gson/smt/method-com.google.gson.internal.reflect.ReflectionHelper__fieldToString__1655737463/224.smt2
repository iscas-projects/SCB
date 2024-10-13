(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/1477653585 (var1772) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1618348824 (var1772) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1772 var1772)
(declare-const var3068 var1772) ; Statement: r1 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3068 null-var1772)))
(define-const var2361 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2361)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2361!1 String)
(assert (= var2361!1 ""))
(assert true)
(define-const var3884 ClassObject (getDeclaringClass/1477653585 var3068)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var377 String (getName/-1958580599 var3884)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var841 String (append/672562846 var2361!1 var377)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2361!2 String)
(assert (= var2361!2 (str.++ var2361!1 var377)))
(assert true)
(define-const var1564 String (append/672562846 var841 "#")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var841!1 String)
(assert (= var841!1 (str.++ var841 "#")))
(assert true)
(define-const var2346 String (getName/1618348824 var3068)) ; Statement: $r5 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var3150 String (append/672562846 var1564 var2346)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1564!1 String)
(assert (= var1564!1 (str.++ var1564 var2346)))
(assert true)
(define-const var1814 String (toString/-2075883882 var3150)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1618348824=([java.lang.reflect.Field], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1772=java.lang.reflect.Field, var3068=r1, var2361=$r0, var3884=$r2, var377=$r3, var841=$r4, var1564=$r6, var2346=$r5, var3150=$r7, var1814=$r8}
; {java.lang.reflect.Field=var1772, r1=var3068, $r0=var2361, $r2=var3884, $r3=var377, $r4=var841, $r6=var1564, $r5=var2346, $r7=var3150, $r8=var1814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Field;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r5 = virtualinvoke r1.<java.lang.reflect.Field: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1