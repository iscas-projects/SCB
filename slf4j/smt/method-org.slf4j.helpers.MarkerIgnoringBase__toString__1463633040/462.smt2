(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3097 0)
(declare-sort var2937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2937) ClassObject)
(declare-fun cast-from-var3097-to-var2937 (var3097) var2937)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-77346371 (var3097) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3097 var3097)
(declare-const var2569 var3097) ; Statement: r1 := @this: org.slf4j.helpers.MarkerIgnoringBase 
(assert (not (= var2569 null-var3097)))
(define-const var1443 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1443)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1443!1 String)
(assert (= var1443!1 ""))
(assert true)
(define-const var2551 ClassObject (getClass/1258963082 (cast-from-var3097-to-var2937 var2569))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2905 String (getName/-1958580599 var2551)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var782 String (append/672562846 var1443!1 var2905)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1443!2 String)
(assert (= var1443!2 (str.++ var1443!1 var2905)))
(assert true)
(define-const var1159 String (append/672562846 var782 "(")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var782!1 String)
(assert (= var782!1 (str.++ var782 "(")))
(assert true)
(define-const var274 String (getName/-77346371 var2569)) ; Statement: $r5 = virtualinvoke r1.<org.slf4j.helpers.MarkerIgnoringBase: java.lang.String getName()>() 
(assert true)
(define-const var1340 String (append/672562846 var1159 var274)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1159!1 String)
(assert (= var1159!1 (str.++ var1159 var274)))
(assert true)
(define-const var3772 String (append/672562846 var1340 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1340!1 String)
(assert (= var1340!1 (str.++ var1340 ")")))
(assert true)
(define-const var1988 String (toString/-2075883882 var3772)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3097-to-var2937=([org.slf4j.helpers.MarkerIgnoringBase], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-77346371=([org.slf4j.helpers.MarkerIgnoringBase], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3097=org.slf4j.helpers.MarkerIgnoringBase, var2569=r1, var1443=$r0, var2937=java.lang.Object, var2551=$r2, var2905=$r3, var782=$r4, var1159=$r6, var274=$r5, var1340=$r7, var3772=$r8, var1988=$r9}
; {org.slf4j.helpers.MarkerIgnoringBase=var3097, r1=var2569, $r0=var1443, java.lang.Object=var2937, $r2=var2551, $r3=var2905, $r4=var782, $r6=var1159, $r5=var274, $r7=var1340, $r8=var3772, $r9=var1988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.slf4j.helpers.MarkerIgnoringBase;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke r1.<org.slf4j.helpers.MarkerIgnoringBase: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1