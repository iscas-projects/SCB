(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1318 0)
(declare-sort var821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var821_getDeclaringClass/893815379 (var821) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var821_getName/-545027370 (var821) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1318 var1318)
(declare-const null-var821 var821)
(declare-const var3782 var1318) ; Statement: r9 := @this: org.hibernate.metamodel.internal.AttributeFactory$BaseAttributeMetadata 
(assert (not (= var3782 null-var1318)))
(declare-const var3318 var821) ; Statement: r1 := @parameter0: java.lang.reflect.Member 
(assert (not (= var3318 null-var821)))
(define-const var196 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var196)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var196!1 String)
(assert (= var196!1 ""))
(define-const var67 ClassObject (var821_getDeclaringClass/893815379 var3318)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2528 String (getName/-1958580599 var67)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var155 String (append/672562846 var196!1 var2528)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var196!2 String)
(assert (= var196!2 (str.++ var196!1 var2528)))
(assert true)
(define-const var700 String (append/-1166366385 var155 35)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var155!1 String)
(assert (str.prefixof var155 var155!1))
(define-const var3070 String (var821_getName/-545027370 var3318)) ; Statement: $r5 = interfaceinvoke r1.<java.lang.reflect.Member: java.lang.String getName()>() 
(assert true)
(define-const var117 String (append/672562846 var700 var3070)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var700!1 String)
(assert (= var700!1 (str.++ var700 var3070)))
(assert true)
(define-const var436 String (toString/-2075883882 var117)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var821_getDeclaringClass/893815379=([java.lang.reflect.Member], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var821_getName/-545027370=([java.lang.reflect.Member], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1318=org.hibernate.metamodel.internal.AttributeFactory$BaseAttributeMetadata, var3782=r9, var821=java.lang.reflect.Member, var3318=r1, var196=$r0, var67=$r2, var2528=$r3, var155=$r4, var700=$r6, var3070=$r5, var117=$r7, var436=$r8}
; {org.hibernate.metamodel.internal.AttributeFactory$BaseAttributeMetadata=var1318, r9=var3782, java.lang.reflect.Member=var821, r1=var3318, $r0=var196, $r2=var67, $r3=var2528, $r4=var155, $r6=var700, $r5=var3070, $r7=var117, $r8=var436}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.metamodel.internal.AttributeFactory$BaseAttributeMetadata;	r1 := @parameter0: java.lang.reflect.Member;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<java.lang.reflect.Member: java.lang.Class getDeclaringClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r5 = interfaceinvoke r1.<java.lang.reflect.Member: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1