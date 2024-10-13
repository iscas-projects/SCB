(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3198 0)
(declare-sort var1627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun componentType/13380338 (var3198) ClassObject)
(declare-fun var1627_typeToString/-1316259189 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3198 var3198)
(declare-const var2525 var3198) ; Statement: r1 := @this: com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl 
(assert (not (= var2525 null-var3198)))
(define-const var2757 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2757)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2757!1 String)
(assert (= var2757!1 ""))
(define-const var87 ClassObject (componentType/13380338 var2525)) ; Statement: $r2 = r1.<com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl: java.lang.reflect.Type componentType> 
(define-const var1993 String (var1627_typeToString/-1316259189 var87)) ; Statement: $r3 = staticinvoke <com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r2) 
(assert true)
(define-const var304 String (append/672562846 var2757!1 var1993)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2757!2 String)
(assert (= var2757!2 (str.++ var2757!1 var1993)))
(assert true)
(define-const var624 String (append/672562846 var304 "[]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var304!1 String)
(assert (= var304!1 (str.++ var304 "[]")))
(assert true)
(define-const var634 String (toString/-2075883882 var624)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), componentType/13380338=([com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl], java.lang.reflect.Type), var1627_typeToString/-1316259189=([java.lang.reflect.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3198=com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl, var2525=r1, var2757=$r0, var87=$r2, var1627=com.google.gson.internal.$Gson$Types, var1993=$r3, var304=$r4, var624=$r5, var634=$r6}
; {com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl=var3198, r1=var2525, $r0=var2757, $r2=var87, com.google.gson.internal.$Gson$Types=var1627, $r3=var1993, $r4=var304, $r5=var624, $r6=var634}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl: java.lang.reflect.Type componentType>;	$r3 = staticinvoke <com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1