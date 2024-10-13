(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2002 0)
(declare-sort var2527 0)
(declare-sort var3232 0)
(declare-sort var1026 0)
(declare-sort var2556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2556-init () var2556)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2556 String) void)
(declare-const null-var2002 var2002)
(declare-const null-String String)
(declare-const null-var3232 var3232)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1026 var1026)
(declare-const var1480 var2002) ; Statement: r15 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var1480 null-var2002)))
(declare-const var353 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var353 null-String)))
(declare-const var1326 var3232) ; Statement: r0 := @parameter1: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var1326 null-var3232)))
(declare-const var3588 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3588 null-String)))
(declare-const var1758 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var1758 null-ClassObject)))
(declare-const var892 var1026) ; Statement: r12 := @parameter4: javax.persistence.metamodel.PluralAttribute$CollectionType 
(assert (not (= var892 null-var1026)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var1326 null-var3232)) ; Cond: r0 == null 
(define-const var360 var2556 var2556-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2998 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2998)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2998!1 String)
(assert (= var2998!1 ""))
(assert true)
(define-const var1085 String (append/672562846 var2998!1 var353)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2998!2 String)
(assert (= var2998!2 (str.++ var2998!1 var353)))
(assert true)
(define-const var3450 String (append/672562846 var1085 " named ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" named ") 
(declare-const var1085!1 String)
(assert (= var1085!1 (str.++ var1085 " named ")))
(assert true)
(define-const var80 String (append/672562846 var3450 var3588)) ; Statement: $r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3450!1 String)
(assert (= var3450!1 (str.++ var3450 var3588)))
 ; Statement: if r4 == null goto $r19 = "" 
(assert (= var1758 null-ClassObject)) ; Cond: r4 == null 
(define-const var3106 String "") ; Statement: $r19 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var324 String (append/672562846 var80 var3106)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var80!1 String)
(assert (= var80!1 (str.++ var80 var3106)))
(assert true)
(define-const var2020 String (append/672562846 var324 " is not present")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not present") 
(declare-const var324!1 String)
(assert (= var324!1 (str.++ var324 " is not present")))
(assert true)
(define-const var1583 String (toString/-2075883882 var2020)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var360 var1583)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var360!1 var2556)
(declare-const var1583!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2556-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2002=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var1480=r15, var353=r2, var2527=null_type, var3232=javax.persistence.metamodel.PluralAttribute, var1326=r0, var3588=r3, var1758=r4, var1026=javax.persistence.metamodel.PluralAttribute$CollectionType, var892=r12, var2556=java.lang.IllegalArgumentException, var360=$r1, var2998=$r16, var1085=$r17, var3450=$r18, var80=$r5, var3106=$r19, var324=$r6, var2020=$r7, var1583=$r8}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var2002, r15=var1480, r2=var353, null_type=var2527, javax.persistence.metamodel.PluralAttribute=var3232, r0=var1326, r3=var3588, r4=var1758, javax.persistence.metamodel.PluralAttribute$CollectionType=var1026, r12=var892, java.lang.IllegalArgumentException=var2556, $r1=var360, $r16=var2998, $r17=var1085, $r18=var3450, $r5=var80, $r19=var3106, $r6=var324, $r7=var2020, $r8=var1583}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r15 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: javax.persistence.metamodel.PluralAttribute;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.Class;	r12 := @parameter4: javax.persistence.metamodel.PluralAttribute$CollectionType;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" named ");	$r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	if r4 == null goto $r19 = "";	$r19 = "";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not present");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 4