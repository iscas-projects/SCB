(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var229 0)
(declare-sort var1047 0)
(declare-sort var20 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1047-init () var1047)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var20) ClassObject)
(declare-fun cast-from-var229-to-var20 (var229) var20)
(declare-fun String_valueOf/-333372740 (var20) String)
(declare-fun cast-from-ClassObject-to-var20 (ClassObject) var20)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var1047 String) void)
(declare-const null-var229 var229)
(declare-const var1078 var229) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var1078 null-var229)))
(declare-const var233 var229) ; Statement: r6 := @parameter0: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var233 null-var229)))
(define-const var85 var1047 var1047-init) ; Statement: $r0 = new java.lang.ClassCastException 
(define-const var783 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var783)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var783!1 String)
(assert (= var783!1 ""))
(assert true)
(define-const var1186 ClassObject (getClass/1258963082 (cast-from-var229-to-var20 var1078))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var3811 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var20 var1186))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r3) 
(assert true)
(define-const var1318 String (append/672562846 var783!1 var3811)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var783!2 String)
(assert (= var783!2 (str.++ var783!1 var3811)))
(assert true)
(define-const var211 String (append/672562846 var1318 " != ")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != ") 
(declare-const var1318!1 String)
(assert (= var1318!1 (str.++ var1318 " != ")))
(assert true)
(define-const var338 ClassObject (getClass/1258963082 (cast-from-var229-to-var20 var233))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2300 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var20 var338))) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r7) 
(assert true)
(define-const var3614 String (append/672562846 var211 var2300)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var211!1 String)
(assert (= var211!1 (str.++ var211 var2300)))
(assert true)
(define-const var714 String (toString/-2075883882 var3614)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 var85 var714)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r11) 

(declare-const var85!1 var1047)
(declare-const var714!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1047-init=([], java.lang.ClassCastException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var229-to-var20=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var20=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var229=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var1078=r2, var233=r6, var1047=java.lang.ClassCastException, var85=$r0, var783=$r1, var20=java.lang.Object, var1186=$r3, var3811=$r4, var1318=$r5, var211=$r9, var338=$r7, var2300=$r8, var3614=$r10, var714=$r11}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var229, r2=var1078, r6=var233, java.lang.ClassCastException=var1047, $r0=var85, $r1=var783, java.lang.Object=var20, $r3=var1186, $r4=var3811, $r5=var1318, $r9=var211, $r7=var338, $r8=var2300, $r10=var3614, $r11=var714}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	r6 := @parameter0: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	$r0 = new java.lang.ClassCastException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r3);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1