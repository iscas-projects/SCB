(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var500 0)
(declare-sort var1355 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$type/1099874519 (var500) ClassObject)
(declare-fun var1355-init () var1355)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var34) String)
(declare-fun cast-from-ClassObject-to-var34 (ClassObject) var34)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1711549597 (var1355 String) void)
(declare-const null-var500 var500)
(declare-const var2219 var500) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6 
(assert (not (= var2219 null-var500)))
(define-const var2326 ClassObject (val$type/1099874519 var2219)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type> 
(define-const var3462 Bool true) ; Statement: $z0 = $r1 instanceof java.lang.reflect.ParameterizedType 
 ; Statement: if $z0 == 0 goto $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(assert (= (ite var3462 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2350 var1355 var1355-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(define-const var1271 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1271)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1271!1 String)
(assert (= var1271!1 ""))
(assert true)
(define-const var328 String (append/672562846 var1271!1 "Invalid EnumMap type: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumMap type: ") 
(declare-const var1271!2 String)
(assert (= var1271!2 (str.++ var1271!1 "Invalid EnumMap type: ")))
(define-const var716 ClassObject (val$type/1099874519 var2219)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type> 
(assert true)
(define-const var3336 String (toString/-522406933 (cast-from-ClassObject-to-var34 var716))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3224 String (append/672562846 var328 var3336)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var328!1 String)
(assert (= var328!1 (str.++ var328 var3336)))
(assert true)
(define-const var1451 String (toString/-2075883882 var3224)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1711549597 var2350 var1451)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8) 

(declare-const var2350!1 var1355)
(declare-const var1451!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {val$type/1099874519=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6], java.lang.reflect.Type), var1355-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var34=([java.lang.reflect.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1711549597=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, java.lang.String], void)}
; {var500=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6, var2219=r0, var2326=$r1, var3462=$z0, var1355=com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, var2350=$r2, var1271=$r3, var328=$r6, var716=$r4, var34=java.lang.Object, var3336=$r5, var3224=$r7, var1451=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6=var500, r0=var2219, $r1=var2326, $z0=var3462, com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException=var1355, $r2=var2350, $r3=var1271, $r6=var328, $r4=var716, java.lang.Object=var34, $r5=var3336, $r7=var3224, $r8=var1451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type>;	$z0 = $r1 instanceof java.lang.reflect.ParameterizedType;	if $z0 == 0 goto $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid EnumMap type: ");	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$6: java.lang.reflect.Type val$type>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 2