(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3950 0)
(declare-sort var3032 0)
(declare-sort var719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3950!class ClassObject)
(declare-fun getGenericSuperclass/-1469059380 (ClassObject) ClassObject)
(declare-fun cast-from-ClassObject-to-var3032 (ClassObject) var3032)
(declare-fun var719-init () var719)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3032) ClassObject)
(declare-fun cast-from-var3950-to-var3032 (var3950) var3032)
(declare-fun append/-1031950772 (String var3032) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/601790313 (var719 String) void)
(declare-const null-var3950 var3950)
(declare-const null-ClassObject ClassObject)
(declare-const var2992 var3950) ; Statement: r7 := @this: org.apache.ibatis.type.TypeReference 
(assert (not (= var2992 null-var3950)))
(declare-const var439 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var439 null-ClassObject)))
(assert true)
(define-const var842 ClassObject (getGenericSuperclass/-1469059380 var439)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>() 
(define-const var3695 Bool true) ; Statement: $z0 = r1 instanceof java.lang.Class 
 ; Statement: if $z0 == 0 goto $r2 = (java.lang.reflect.ParameterizedType) r1 
(assert (not (= (ite var3695 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if class "Lorg/apache/ibatis/type/TypeReference;" == r1 goto $r5 = new org.apache.ibatis.type.TypeException 
(assert (= (cast-from-ClassObject-to-var3032 var3950!class) (cast-from-ClassObject-to-var3032 var842))) ; Cond: class "Lorg/apache/ibatis/type/TypeReference;" == r1 
(define-const var3805 var719 var719-init) ; Statement: $r5 = new org.apache.ibatis.type.TypeException 
(define-const var3285 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3285)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3285!1 String)
(assert (= var3285!1 ""))
(assert true)
(define-const var2518 String (append/672562846 var3285!1 "\u0027")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3285!2 String)
(assert (= var3285!2 (str.++ var3285!1 "\u0027")))
(assert true)
(define-const var1471 ClassObject (getClass/1258963082 (cast-from-var3950-to-var3032 var2992))) ; Statement: $r8 = virtualinvoke r7.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3611 String (append/-1031950772 var2518 (cast-from-ClassObject-to-var3032 var1471))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var2518!1 String)
(assert (str.prefixof var2518 var2518!1))
(assert true)
(define-const var1074 String (append/672562846 var3611 "\u0027 extends TypeReference but misses the type parameter. Remove the extension or add a type parameter to it.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' extends TypeReference but misses the type parameter. Remove the extension or add a type parameter to it.") 
(declare-const var3611!1 String)
(assert (= var3611!1 (str.++ var3611 "\u0027 extends TypeReference but misses the type parameter. Remove the extension or add a type parameter to it.")))
(assert true)
(define-const var308 String (toString/-2075883882 var1074)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/601790313 var3805 var308)) ; Statement: specialinvoke $r5.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String)>($r12) 

(declare-const var3805!1 var719)
(declare-const var308!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getGenericSuperclass/-1469059380=([java.lang.Class], java.lang.reflect.Type), cast-from-ClassObject-to-var3032=([java.lang.Class], java.lang.Object), var719-init=([], org.apache.ibatis.type.TypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3950-to-var3032=([org.apache.ibatis.type.TypeReference], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/601790313=([org.apache.ibatis.type.TypeException, java.lang.String], void)}
; {var3950=org.apache.ibatis.type.TypeReference, var2992=r7, var439=r0, var842=r1, var3695=$z0, var3032=java.lang.Object, var719=org.apache.ibatis.type.TypeException, var3805=$r5, var3285=$r6, var2518=$r9, var1471=$r8, var3611=$r10, var1074=$r11, var308=$r12}
; {org.apache.ibatis.type.TypeReference=var3950, r7=var2992, r0=var439, r1=var842, $z0=var3695, java.lang.Object=var3032, org.apache.ibatis.type.TypeException=var719, $r5=var3805, $r6=var3285, $r9=var2518, $r8=var1471, $r10=var3611, $r11=var1074, $r12=var308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.ibatis.type.TypeReference;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Type getGenericSuperclass()>();	$z0 = r1 instanceof java.lang.Class;	if $z0 == 0 goto $r2 = (java.lang.reflect.ParameterizedType) r1;	if class "Lorg/apache/ibatis/type/TypeReference;" == r1 goto $r5 = new org.apache.ibatis.type.TypeException;	$r5 = new org.apache.ibatis.type.TypeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r8 = virtualinvoke r7.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' extends TypeReference but misses the type parameter. Remove the extension or add a type parameter to it.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.type.TypeException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 3