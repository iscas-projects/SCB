(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort var3666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getElementType/-455129228 (var3918) var3666)
(declare-fun getTypeClass/-1250152788 (var3666) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3918 var3918)
(declare-const var26 var3918) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.types.ArrayType 
(assert (not (= var26 null-var3918)))
(define-const var3483 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3483)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3483!1 String)
(assert (= var3483!1 ""))
(assert true)
(define-const var3337 String (append/672562846 var3483!1 "array<elementType=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("array<elementType=") 
(declare-const var3483!2 String)
(assert (= var3483!2 (str.++ var3483!1 "array<elementType=")))
(assert true)
(define-const var989 var3666 (getElementType/-455129228 var26)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ArrayType: jdk.nashorn.internal.codegen.types.Type getElementType()>() 
(assert true)
(define-const var533 ClassObject (getTypeClass/-1250152788 var989)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.Class getTypeClass()>() 
(assert true)
(define-const var2327 String (getSimpleName/-390194377 var533)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1295 String (append/672562846 var3337 var2327)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3337!1 String)
(assert (= var3337!1 (str.++ var3337 var2327)))
(assert true)
(define-const var2301 String (append/-1166366385 var1295 62)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var1295!1 String)
(assert (str.prefixof var1295 var1295!1))
(assert true)
(define-const var1944 String (toString/-2075883882 var2301)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getElementType/-455129228=([jdk.nashorn.internal.codegen.types.ArrayType], jdk.nashorn.internal.codegen.types.Type), getTypeClass/-1250152788=([jdk.nashorn.internal.codegen.types.Type], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3918=jdk.nashorn.internal.codegen.types.ArrayType, var26=r1, var3483=$r0, var3337=$r5, var3666=jdk.nashorn.internal.codegen.types.Type, var989=$r2, var533=$r3, var2327=$r4, var1295=$r6, var2301=$r7, var1944=$r8}
; {jdk.nashorn.internal.codegen.types.ArrayType=var3918, r1=var26, $r0=var3483, $r5=var3337, jdk.nashorn.internal.codegen.types.Type=var3666, $r2=var989, $r3=var533, $r4=var2327, $r6=var1295, $r7=var2301, $r8=var1944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.types.ArrayType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("array<elementType=");	$r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.ArrayType: jdk.nashorn.internal.codegen.types.Type getElementType()>();	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.types.Type: java.lang.Class getTypeClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1