(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort var3684 0)
(declare-sort var2571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$type/1758936232 (var774) ClassObject)
(declare-fun var3684-init () var3684)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var2571) String)
(declare-fun cast-from-ClassObject-to-var2571 (ClassObject) var2571)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1993171084 (var3684 String) void)
(declare-const null-var774 var774)
(declare-const var1368 var774) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor$6 
(assert (not (= var1368 null-var774)))
(define-const var2090 ClassObject (val$type/1758936232 var1368)) ; Statement: $r1 = r0.<com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type> 
(define-const var730 Bool true) ; Statement: $z0 = $r1 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z0 == 0 goto $r2 = new com.google.gson.JsonIOException 
(assert (= (ite var730 1 0) 0)) ; Cond: $z0 == 0 
(define-const var228 var3684 var3684-init) ; Statement: $r2 = new com.google.gson.JsonIOException 
(define-const var736 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var736)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var736!1 String)
(assert (= var736!1 ""))
(assert true)
(define-const var229 String (append/672562846 var736!1 "Invalid EnumMap type: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumMap type: ") 
(declare-const var736!2 String)
(assert (= var736!2 (str.++ var736!1 "Invalid EnumMap type: ")))
(define-const var1602 ClassObject (val$type/1758936232 var1368)) ; Statement: $r4 = r0.<com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type> 
(assert true)
(define-const var1882 String (toString/-522406933 (cast-from-ClassObject-to-var2571 var1602))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var266 String (append/672562846 var229 var1882)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var229!1 String)
(assert (= var229!1 (str.++ var229 var1882)))
(assert true)
(define-const var2189 String (toString/-2075883882 var266)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1993171084 var228 var2189)) ; Statement: specialinvoke $r2.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8) 

(declare-const var228!1 var3684)
(declare-const var2189!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {val$type/1758936232=([com.google.gson.internal.ConstructorConstructor$6], java.lang.reflect.Type), var3684-init=([], com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var2571=([java.lang.reflect.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1993171084=([com.google.gson.JsonIOException, java.lang.String], void)}
; {var774=com.google.gson.internal.ConstructorConstructor$6, var1368=r0, var2090=$r1, var730=$z0, var3684=com.google.gson.JsonIOException, var228=$r2, var736=$r3, var229=$r6, var1602=$r4, var2571=java.lang.Object, var1882=$r5, var266=$r7, var2189=$r8}
; {com.google.gson.internal.ConstructorConstructor$6=var774, r0=var1368, $r1=var2090, $z0=var730, com.google.gson.JsonIOException=var3684, $r2=var228, $r3=var736, $r6=var229, $r4=var1602, java.lang.Object=var2571, $r5=var1882, $r7=var266, $r8=var2189}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor$6;	$r1 = r0.<com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type>;	$z0 = $r1 instanceof java.lang.reflect.ParameterizedType;	if $z0 == 0 goto $r2 = new com.google.gson.JsonIOException;	$r2 = new com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumMap type: ");	$r4 = r0.<com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2