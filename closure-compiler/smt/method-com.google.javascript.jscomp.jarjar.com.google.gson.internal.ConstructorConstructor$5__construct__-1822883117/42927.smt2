(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var81 0)
(declare-sort var401 0)
(declare-sort var965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$type/1099874518 (var81) ClassObject)
(declare-fun var401-init () var401)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var965) String)
(declare-fun cast-from-ClassObject-to-var965 (ClassObject) var965)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1711549597 (var401 String) void)
(declare-const null-var81 var81)
(declare-const var918 var81) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5 
(assert (not (= var918 null-var81)))
(define-const var636 ClassObject (val$type/1099874518 var918)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type> 
(define-const var2661 Bool true) ; Statement: $z0 = $r1 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z0 == 0 goto $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(assert (= (ite var2661 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3553 var401 var401-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(define-const var1009 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1009)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1009!1 String)
(assert (= var1009!1 ""))
(assert true)
(define-const var3975 String (append/672562846 var1009!1 "Invalid EnumSet type: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumSet type: ") 
(declare-const var1009!2 String)
(assert (= var1009!2 (str.++ var1009!1 "Invalid EnumSet type: ")))
(define-const var2471 ClassObject (val$type/1099874518 var918)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type> 
(assert true)
(define-const var188 String (toString/-522406933 (cast-from-ClassObject-to-var965 var2471))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2615 String (append/672562846 var3975 var188)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3975!1 String)
(assert (= var3975!1 (str.++ var3975 var188)))
(assert true)
(define-const var2101 String (toString/-2075883882 var2615)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1711549597 var3553 var2101)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8) 

(declare-const var3553!1 var401)
(declare-const var2101!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {val$type/1099874518=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5], java.lang.reflect.Type), var401-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var965=([java.lang.reflect.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1711549597=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, java.lang.String], void)}
; {var81=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5, var918=r0, var636=$r1, var2661=$z0, var401=com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, var3553=$r2, var1009=$r3, var3975=$r6, var2471=$r4, var965=java.lang.Object, var188=$r5, var2615=$r7, var2101=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5=var81, r0=var918, $r1=var636, $z0=var2661, com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException=var401, $r2=var3553, $r3=var1009, $r6=var3975, $r4=var2471, java.lang.Object=var965, $r5=var188, $r7=var2615, $r8=var2101}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type>;	$z0 = $r1 instanceof java.lang.reflect.ParameterizedType;	if $z0 == 0 goto $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumSet type: ");	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$5: java.lang.reflect.Type val$type>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2