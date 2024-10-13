(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var3643 0)
(declare-sort var965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$type/1758936231 (var120) ClassObject)
(declare-fun var3643-init () var3643)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var965) String)
(declare-fun cast-from-ClassObject-to-var965 (ClassObject) var965)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1993171084 (var3643 String) void)
(declare-const null-var120 var120)
(declare-const var1672 var120) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor$5 
(assert (not (= var1672 null-var120)))
(define-const var3185 ClassObject (val$type/1758936231 var1672)) ; Statement: $r1 = r0.<com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type> 
(define-const var2959 Bool true) ; Statement: $z0 = $r1 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z0 == 0 goto $r2 = new com.google.gson.JsonIOException 
(assert (= (ite var2959 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1832 var3643 var3643-init) ; Statement: $r2 = new com.google.gson.JsonIOException 
(define-const var3928 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3928)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3928!1 String)
(assert (= var3928!1 ""))
(assert true)
(define-const var526 String (append/672562846 var3928!1 "Invalid EnumSet type: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumSet type: ") 
(declare-const var3928!2 String)
(assert (= var3928!2 (str.++ var3928!1 "Invalid EnumSet type: ")))
(define-const var419 ClassObject (val$type/1758936231 var1672)) ; Statement: $r4 = r0.<com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type> 
(assert true)
(define-const var2574 String (toString/-522406933 (cast-from-ClassObject-to-var965 var419))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3192 String (append/672562846 var526 var2574)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var526!1 String)
(assert (= var526!1 (str.++ var526 var2574)))
(assert true)
(define-const var3933 String (toString/-2075883882 var3192)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1993171084 var1832 var3933)) ; Statement: specialinvoke $r2.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8) 

(declare-const var1832!1 var3643)
(declare-const var3933!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {val$type/1758936231=([com.google.gson.internal.ConstructorConstructor$5], java.lang.reflect.Type), var3643-init=([], com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var965=([java.lang.reflect.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1993171084=([com.google.gson.JsonIOException, java.lang.String], void)}
; {var120=com.google.gson.internal.ConstructorConstructor$5, var1672=r0, var3185=$r1, var2959=$z0, var3643=com.google.gson.JsonIOException, var1832=$r2, var3928=$r3, var526=$r6, var419=$r4, var965=java.lang.Object, var2574=$r5, var3192=$r7, var3933=$r8}
; {com.google.gson.internal.ConstructorConstructor$5=var120, r0=var1672, $r1=var3185, $z0=var2959, com.google.gson.JsonIOException=var3643, $r2=var1832, $r3=var3928, $r6=var526, $r4=var419, java.lang.Object=var965, $r5=var2574, $r7=var3192, $r8=var3933}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor$5;	$r1 = r0.<com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type>;	$z0 = $r1 instanceof java.lang.reflect.ParameterizedType;	if $z0 == 0 goto $r2 = new com.google.gson.JsonIOException;	$r2 = new com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumSet type: ");	$r4 = r0.<com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2