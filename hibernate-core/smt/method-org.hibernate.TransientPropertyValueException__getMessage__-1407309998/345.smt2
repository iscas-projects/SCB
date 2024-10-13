(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2116 0)
(declare-sort var2539 0)
(declare-sort var2973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/918716458 (var2539) String)
(declare-fun cast-from-var2116-to-var2539 (var2116) var2539)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyOwnerEntityName/-367408649 (var2116) String)
(declare-fun propertyName/-367408649 (var2116) String)
(declare-fun var2973_qualify/-1563731603 (String String) String)
(declare-fun transientEntityName/-367408649 (var2116) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2116 var2116)
(declare-const var2730 var2116) ; Statement: r1 := @this: org.hibernate.TransientPropertyValueException 
(assert (not (= var2730 null-var2116)))
(define-const var1927 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1927)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1927!1 String)
(assert (= var1927!1 ""))
(assert true)
(define-const var2 String (getMessage/918716458 (cast-from-var2116-to-var2539 var2730))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.TransientObjectException: java.lang.String getMessage()>() 
(assert true)
(define-const var1908 String (append/672562846 var1927!1 var2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1927!2 String)
(assert (= var1927!2 (str.++ var1927!1 var2)))
(assert true)
(define-const var308 String (append/672562846 var1908 " : ")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var1908!1 String)
(assert (= var1908!1 (str.++ var1908 " : ")))
(define-const var2402 String (propertyOwnerEntityName/-367408649 var2730)) ; Statement: $r5 = r1.<org.hibernate.TransientPropertyValueException: java.lang.String propertyOwnerEntityName> 
(define-const var607 String (propertyName/-367408649 var2730)) ; Statement: $r4 = r1.<org.hibernate.TransientPropertyValueException: java.lang.String propertyName> 
(define-const var3711 String (var2973_qualify/-1563731603 var2402 var607)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r5, $r4) 
(assert true)
(define-const var629 String (append/672562846 var308 var3711)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var308!1 String)
(assert (= var308!1 (str.++ var308 var3711)))
(assert true)
(define-const var1073 String (append/672562846 var629 " -> ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var629!1 String)
(assert (= var629!1 (str.++ var629 " -> ")))
(define-const var584 String (transientEntityName/-367408649 var2730)) ; Statement: $r9 = r1.<org.hibernate.TransientPropertyValueException: java.lang.String transientEntityName> 
(assert true)
(define-const var333 String (append/672562846 var1073 var584)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 var584)))
(assert true)
(define-const var399 String (toString/-2075883882 var333)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/918716458=([javax.persistence.PersistenceException], java.lang.String), cast-from-var2116-to-var2539=([org.hibernate.TransientPropertyValueException], javax.persistence.PersistenceException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyOwnerEntityName/-367408649=([org.hibernate.TransientPropertyValueException], java.lang.String), propertyName/-367408649=([org.hibernate.TransientPropertyValueException], java.lang.String), var2973_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), transientEntityName/-367408649=([org.hibernate.TransientPropertyValueException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2116=org.hibernate.TransientPropertyValueException, var2730=r1, var1927=$r0, var2539=javax.persistence.PersistenceException, var2=$r2, var1908=$r3, var308=$r7, var2402=$r5, var607=$r4, var2973=org.hibernate.internal.util.StringHelper, var3711=$r6, var629=$r8, var1073=$r10, var584=$r9, var333=$r11, var399=$r12}
; {org.hibernate.TransientPropertyValueException=var2116, r1=var2730, $r0=var1927, javax.persistence.PersistenceException=var2539, $r2=var2, $r3=var1908, $r7=var308, $r5=var2402, $r4=var607, org.hibernate.internal.util.StringHelper=var2973, $r6=var3711, $r8=var629, $r10=var1073, $r9=var584, $r11=var333, $r12=var399}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.TransientPropertyValueException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.TransientObjectException: java.lang.String getMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	$r5 = r1.<org.hibernate.TransientPropertyValueException: java.lang.String propertyOwnerEntityName>;	$r4 = r1.<org.hibernate.TransientPropertyValueException: java.lang.String propertyName>;	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>($r5, $r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r9 = r1.<org.hibernate.TransientPropertyValueException: java.lang.String transientEntityName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1