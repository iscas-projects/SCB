(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var945 0)
(declare-sort var2279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2279) ClassObject)
(declare-fun cast-from-var945-to-var2279 (var945) var2279)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/191485936 (var945) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var945 var945)
(declare-const var2754 var945) ; Statement: r1 := @this: jdk.internal.dynalink.beans.DynamicMethod 
(assert (not (= var2754 null-var945)))
(define-const var3580 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3580)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3580!1 String)
(assert (= var3580!1 ""))
(assert true)
(define-const var1763 String (append/672562846 var3580!1 "[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3580!2 String)
(assert (= var3580!2 (str.++ var3580!1 "[")))
(assert true)
(define-const var178 ClassObject (getClass/1258963082 (cast-from-var945-to-var2279 var2754))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2458 String (getName/-1958580599 var178)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2573 String (append/672562846 var1763 var2458)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1763!1 String)
(assert (= var1763!1 (str.++ var1763 var2458)))
(assert true)
(define-const var1954 String (append/672562846 var2573 " ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2573!1 String)
(assert (= var2573!1 (str.++ var2573 " ")))
(assert true)
(define-const var475 String (getName/191485936 var2754)) ; Statement: $r6 = virtualinvoke r1.<jdk.internal.dynalink.beans.DynamicMethod: java.lang.String getName()>() 
(assert true)
(define-const var2547 String (append/672562846 var1954 var475)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1954!1 String)
(assert (= var1954!1 (str.++ var1954 var475)))
(assert true)
(define-const var3420 String (append/672562846 var2547 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2547!1 String)
(assert (= var2547!1 (str.++ var2547 "]")))
(assert true)
(define-const var3717 String (toString/-2075883882 var3420)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var945-to-var2279=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getName/191485936=([jdk.internal.dynalink.beans.DynamicMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var945=jdk.internal.dynalink.beans.DynamicMethod, var2754=r1, var3580=$r0, var1763=$r4, var2279=java.lang.Object, var178=$r2, var2458=$r3, var2573=$r5, var1954=$r7, var475=$r6, var2547=$r8, var3420=$r9, var3717=$r10}
; {jdk.internal.dynalink.beans.DynamicMethod=var945, r1=var2754, $r0=var3580, $r4=var1763, java.lang.Object=var2279, $r2=var178, $r3=var2458, $r5=var2573, $r7=var1954, $r6=var475, $r8=var2547, $r9=var3420, $r10=var3717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.dynalink.beans.DynamicMethod;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke r1.<jdk.internal.dynalink.beans.DynamicMethod: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1