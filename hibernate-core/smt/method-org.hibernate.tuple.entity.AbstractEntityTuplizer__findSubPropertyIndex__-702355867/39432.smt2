(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var888 0)
(declare-sort var1642 0)
(declare-sort var949 0)
(declare-sort var1450 0)
(declare-sort var3903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyNames/259401778 (var1642) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1450-init () var1450)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1450 String) void)
(declare-fun cast-from-var1450-to-var3903 (var1450) var3903)
(declare-const null-var888 var888)
(declare-const null-var1642 var1642)
(declare-const null-String String)
(declare-const var2926 var888) ; Statement: r9 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer 
(assert (not (= var2926 null-var888)))
(declare-const var1950 var1642) ; Statement: r0 := @parameter0: org.hibernate.type.ComponentType 
(assert (not (= var1950 null-var1642)))
(declare-const var2692 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2692 null-String)))
(assert true)
(define-const var2761 (Array Int String) (getPropertyNames/259401778 var1950)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.type.ComponentType: java.lang.String[] getPropertyNames()>() 
(define-const var1598 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var297 Int (getLength-Arr-String-1 var2761)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r11 = new org.hibernate.MappingException 
(assert (>= var1598 var297)) ; Cond: i1 >= $i0 
(define-const var2592 var1450 var1450-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var2425 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2425)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2425!1 String)
(assert (= var2425!1 ""))
(assert true)
(define-const var1418 String (append/672562846 var2425!1 "component property not found: ")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component property not found: ") 
(declare-const var2425!2 String)
(assert (= var2425!2 (str.++ var2425!1 "component property not found: ")))
(assert true)
(define-const var2967 String (append/672562846 var1418 var2692)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1418!1 String)
(assert (= var1418!1 (str.++ var1418 var2692)))
(assert true)
(define-const var3382 String (toString/-2075883882 var2967)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2592 var3382)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var2592!1 var1450)
(declare-const var3382!1 String)
(define-const var952 var3903 (cast-from-var1450-to-var3903 var2592!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyNames/259401778=([org.hibernate.type.ComponentType], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1450-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1450-to-var3903=([org.hibernate.MappingException], java.lang.Throwable)}
; {var888=org.hibernate.tuple.entity.AbstractEntityTuplizer, var2926=r9, var1642=org.hibernate.type.ComponentType, var1950=r0, var2692=r4, var949=null_type, var2761=r1, var1598=i1, var297=$i0, var1450=org.hibernate.MappingException, var2592=$r11, var2425=$r10, var1418=$r5, var2967=$r6, var3382=$r7, var3903=java.lang.Throwable, var952=$r12}
; {org.hibernate.tuple.entity.AbstractEntityTuplizer=var888, r9=var2926, org.hibernate.type.ComponentType=var1642, r0=var1950, r4=var2692, null_type=var949, r1=var2761, i1=var1598, $i0=var297, org.hibernate.MappingException=var1450, $r11=var2592, $r10=var2425, $r5=var1418, $r6=var2967, $r7=var3382, java.lang.Throwable=var3903, $r12=var952}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.tuple.entity.AbstractEntityTuplizer;	r0 := @parameter0: org.hibernate.type.ComponentType;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.type.ComponentType: java.lang.String[] getPropertyNames()>();	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto $r11 = new org.hibernate.MappingException;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("component property not found: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 3