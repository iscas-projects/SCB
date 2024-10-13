(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1618 0)
(declare-sort var3638 0)
(declare-sort var1763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var1618-to-var3638 (var1618) var3638)
(declare-fun var1763_fieldToString/1655737463 (var3638) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1618 var1618)
(declare-const null-Bool Bool)
(declare-const var1355 var1618) ; Statement: r0 := @parameter0: java.lang.reflect.AccessibleObject 
(assert (not (= var1355 null-var1618)))
(declare-const var2594 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2594 null-Bool)))
(define-const var657 Bool false) ; Statement: $z0 = r0 instanceof java.lang.reflect.Field 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.reflect.Method 
(assert (not (= (ite var657 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1825 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1825)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1825!1 String)
(assert (= var1825!1 ""))
(assert true)
(define-const var2788 String (append/672562846 var1825!1 "field \u0027")) ; Statement: $r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field \'") 
(declare-const var1825!2 String)
(assert (= var1825!2 (str.++ var1825!1 "field \u0027")))
(define-const var228 var3638 (cast-from-var1618-to-var3638 var1355)) ; Statement: $r28 = (java.lang.reflect.Field) r0 
(define-const var3258 String (var1763_fieldToString/1655737463 var228)) ; Statement: $r29 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String fieldToString(java.lang.reflect.Field)>($r28) 
(assert true)
(define-const var3217 String (append/672562846 var2788 var3258)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2788!1 String)
(assert (= var2788!1 (str.++ var2788 var3258)))
(assert true)
(define-const var3776 String (append/672562846 var3217 "\u0027")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3217!1 String)
(assert (= var3217!1 (str.++ var3217 "\u0027")))
(assert true)
(define-const var658 String (toString/-2075883882 var3776)) ; Statement: r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z3 == 0 goto return r33 
(assert (= (ite var2594 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return r33 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var1618-to-var3638=([java.lang.reflect.AccessibleObject], java.lang.reflect.Field), var1763_fieldToString/1655737463=([java.lang.reflect.Field], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1618=java.lang.reflect.AccessibleObject, var1355=r0, var2594=z3, var657=$z0, var1825=$r27, var2788=$r30, var3638=java.lang.reflect.Field, var228=$r28, var1763=com.google.gson.internal.reflect.ReflectionHelper, var3258=$r29, var3217=$r31, var3776=$r32, var658=r33}
; {java.lang.reflect.AccessibleObject=var1618, r0=var1355, z3=var2594, $z0=var657, $r27=var1825, $r30=var2788, java.lang.reflect.Field=var3638, $r28=var228, com.google.gson.internal.reflect.ReflectionHelper=var1763, $r29=var3258, $r31=var3217, $r32=var3776, r33=var658}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.AccessibleObject;	z3 := @parameter1: boolean;	$z0 = r0 instanceof java.lang.reflect.Field;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.reflect.Method;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("field \'");	$r28 = (java.lang.reflect.Field) r0;	$r29 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String fieldToString(java.lang.reflect.Field)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= (branch)];	if z3 == 0 goto return r33;	return r33
;block_num 4