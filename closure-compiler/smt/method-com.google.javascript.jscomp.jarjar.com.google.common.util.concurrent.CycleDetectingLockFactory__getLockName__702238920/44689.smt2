(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/-1926367255 (var2618) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1633728430 (var2618) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2618 var2618)
(declare-const var1712 var2618) ; Statement: r1 := @parameter0: java.lang.Enum 
(assert (not (= var1712 null-var2618)))
(define-const var1303 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1303)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1303!1 String)
(assert (= var1303!1 ""))
(assert true)
(define-const var519 ClassObject (getDeclaringClass/-1926367255 var1712)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Enum: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var3899 String (getSimpleName/-390194377 var519)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var206 String (append/672562846 var1303!1 var3899)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1303!2 String)
(assert (= var1303!2 (str.++ var1303!1 var3899)))
(assert true)
(define-const var3741 String (append/672562846 var206 ".")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var206!1 String)
(assert (= var206!1 (str.++ var206 ".")))
(assert true)
(define-const var3305 String (name/1633728430 var1712)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Enum: java.lang.String name()>() 
(assert true)
(define-const var2414 String (append/672562846 var3741 var3305)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3741!1 String)
(assert (= var3741!1 (str.++ var3741 var3305)))
(assert true)
(define-const var2489 String (toString/-2075883882 var2414)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/-1926367255=([java.lang.Enum], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1633728430=([java.lang.Enum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2618=java.lang.Enum, var1712=r1, var1303=$r0, var519=$r2, var3899=$r3, var206=$r4, var3741=$r6, var3305=$r5, var2414=$r7, var2489=$r8}
; {java.lang.Enum=var2618, r1=var1712, $r0=var1303, $r2=var519, $r3=var3899, $r4=var206, $r6=var3741, $r5=var3305, $r7=var2414, $r8=var2489}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Enum;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Enum: java.lang.Class getDeclaringClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke r1.<java.lang.Enum: java.lang.String name()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1