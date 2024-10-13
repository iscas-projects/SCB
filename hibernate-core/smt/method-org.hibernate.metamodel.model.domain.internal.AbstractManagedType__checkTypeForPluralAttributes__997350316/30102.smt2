(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2063 0)
(declare-sort var1503 0)
(declare-sort var484 0)
(declare-sort var244 0)
(declare-sort var217 0)
(declare-sort var1355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var217-init () var217)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1355) String)
(declare-fun cast-from-ClassObject-to-var1355 (ClassObject) var1355)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var217 String) void)
(declare-const null-var2063 var2063)
(declare-const null-String String)
(declare-const null-var484 var484)
(declare-const null-ClassObject ClassObject)
(declare-const null-var244 var244)
(declare-const var458 var2063) ; Statement: r15 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType 
(assert (not (= var458 null-var2063)))
(declare-const var1532 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1532 null-String)))
(declare-const var2184 var484) ; Statement: r0 := @parameter1: javax.persistence.metamodel.PluralAttribute 
(assert (not (= var2184 null-var484)))
(declare-const var263 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var263 null-String)))
(declare-const var3906 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var3906 null-ClassObject)))
(declare-const var674 var244) ; Statement: r12 := @parameter4: javax.persistence.metamodel.PluralAttribute$CollectionType 
(assert (not (= var674 null-var244)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var2184 null-var484)) ; Cond: r0 == null 
(define-const var569 var217 var217-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var564 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var564)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var564!1 String)
(assert (= var564!1 ""))
(assert true)
(define-const var646 String (append/672562846 var564!1 var1532)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var564!2 String)
(assert (= var564!2 (str.++ var564!1 var1532)))
(assert true)
(define-const var944 String (append/672562846 var646 " named ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" named ") 
(declare-const var646!1 String)
(assert (= var646!1 (str.++ var646 " named ")))
(assert true)
(define-const var725 String (append/672562846 var944 var263)) ; Statement: $r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var944!1 String)
(assert (= var944!1 (str.++ var944 var263)))
 ; Statement: if r4 == null goto $r19 = "" 
(assert (not (= var3906 null-ClassObject))) ; Negate: Cond: r4 == null  
(define-const var3068 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3068)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3068!1 String)
(assert (= var3068!1 ""))
(assert true)
(define-const var2769 String (append/672562846 var3068!1 " and of element type ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and of element type ") 
(declare-const var3068!2 String)
(assert (= var3068!2 (str.++ var3068!1 " and of element type ")))
(assert true)
(define-const var2022 String (append/-1031950772 var2769 (cast-from-ClassObject-to-var1355 var3906))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var2769!1 String)
(assert (str.prefixof var2769 var2769!1))
(assert true)
(define-const var341 String (toString/-2075883882 var2022)) ; Statement: $r19 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var365 String (append/672562846 var725 var341)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var725!1 String)
(assert (= var725!1 (str.++ var725 var341)))
(assert true)
(define-const var3683 String (append/672562846 var365 " is not present")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not present") 
(declare-const var365!1 String)
(assert (= var365!1 (str.++ var365 " is not present")))
(assert true)
(define-const var1254 String (toString/-2075883882 var3683)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var569 var1254)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var569!1 var217)
(declare-const var1254!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var217-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1355=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2063=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var458=r15, var1532=r2, var1503=null_type, var484=javax.persistence.metamodel.PluralAttribute, var2184=r0, var263=r3, var3906=r4, var244=javax.persistence.metamodel.PluralAttribute$CollectionType, var674=r12, var217=java.lang.IllegalArgumentException, var569=$r1, var564=$r16, var646=$r17, var944=$r18, var725=$r5, var3068=$r9, var2769=$r10, var1355=java.lang.Object, var2022=$r11, var341=$r19, var365=$r6, var3683=$r7, var1254=$r8}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var2063, r15=var458, r2=var1532, null_type=var1503, javax.persistence.metamodel.PluralAttribute=var484, r0=var2184, r3=var263, r4=var3906, javax.persistence.metamodel.PluralAttribute$CollectionType=var244, r12=var674, java.lang.IllegalArgumentException=var217, $r1=var569, $r16=var564, $r17=var646, $r18=var944, $r5=var725, $r9=var3068, $r10=var2769, java.lang.Object=var1355, $r11=var2022, $r19=var341, $r6=var365, $r7=var3683, $r8=var1254}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r15 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: javax.persistence.metamodel.PluralAttribute;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.Class;	r12 := @parameter4: javax.persistence.metamodel.PluralAttribute$CollectionType;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" named ");	$r5 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	if r4 == null goto $r19 = "";	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and of element type ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r19 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not present");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 4