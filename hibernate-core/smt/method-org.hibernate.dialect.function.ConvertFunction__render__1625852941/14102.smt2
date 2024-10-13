(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3088 0)
(declare-sort var3882 0)
(declare-sort var240 0)
(declare-sort var3539 0)
(declare-sort var2396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var240_size/-959786421 (var240) Int)
(declare-fun var240_get/-1216255739 (var240 Int) var2396)
(declare-fun cast-from-var2396-to-String (var2396) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2396) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3088 var3088)
(declare-const null-var3882 var3882)
(declare-const null-var240 var240)
(declare-const null-var3539 var3539)
(declare-const var1124 var3088) ; Statement: r23 := @this: org.hibernate.dialect.function.ConvertFunction 
(assert (not (= var1124 null-var3088)))
(declare-const var2273 var3882) ; Statement: r24 := @parameter0: org.hibernate.type.Type 
(assert (not (= var2273 null-var3882)))
(declare-const var477 var240) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var477 null-var240)))
(declare-const var2701 var3539) ; Statement: r25 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2701 null-var3539)))
(define-const var1525 Int (var240_size/-959786421 var477)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 == 2 goto $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
(assert (= var1525 2)) ; Cond: $i0 == 2 
(define-const var175 var2396 (var240_get/-1216255739 var477 1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
(define-const var2614 String (cast-from-var2396-to-String var175)) ; Statement: $r21 = (java.lang.String) $r1 
(define-const var58 Int (var240_size/-959786421 var477)) ; Statement: $i1 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i1 != 2 goto $r28 = new java.lang.StringBuilder 
(assert (not (= var58 2))) ; Cond: $i1 != 2 
(define-const var2470 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2470)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2470!1 String)
(assert (= var2470!1 ""))
(assert true)
(define-const var2478 String (append/672562846 var2470!1 "convert(")) ; Statement: $r4 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("convert(") 
(declare-const var2470!2 String)
(assert (= var2470!2 (str.++ var2470!1 "convert(")))
(define-const var652 var2396 (var240_get/-1216255739 var477 0)) ; Statement: $r3 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(assert true)
(define-const var2208 String (append/-1031950772 var2478 var652)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2478!1 String)
(assert (str.prefixof var2478 var2478!1))
(assert true)
(define-const var760 String (append/672562846 var2208 " , ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" , ") 
(declare-const var2208!1 String)
(assert (= var2208!1 (str.++ var2208 " , ")))
(assert true)
(define-const var3480 String (append/672562846 var760 var2614)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var760!1 String)
(assert (= var760!1 (str.++ var760 var2614)))
(assert true)
(define-const var3048 String (append/672562846 var3480 ",")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3480!1 String)
(assert (= var3480!1 (str.++ var3480 ",")))
(define-const var3230 var2396 (var240_get/-1216255739 var477 2)) ; Statement: $r8 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2) 
(assert true)
(define-const var1004 String (append/-1031950772 var3048 var3230)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3048!1 String)
(assert (str.prefixof var3048 var3048!1))
(assert true)
(define-const var2004 String (append/672562846 var1004 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1004!1 String)
(assert (= var1004!1 (str.++ var1004 ")")))
(assert true)
(define-const var1372 String (toString/-2075883882 var2004)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var240_size/-959786421=([java.util.List], int), var240_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2396-to-String=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3088=org.hibernate.dialect.function.ConvertFunction, var1124=r23, var3882=org.hibernate.type.Type, var2273=r24, var240=java.util.List, var477=r0, var3539=org.hibernate.engine.spi.SessionFactoryImplementor, var2701=r25, var1525=$i0, var2396=java.lang.Object, var175=$r1, var2614=$r21, var58=$i1, var2470=$r28, var2478=$r4, var652=$r3, var2208=$r5, var760=$r6, var3480=$r7, var3048=$r9, var3230=$r8, var1004=$r10, var2004=$r11, var1372=$r12}
; {org.hibernate.dialect.function.ConvertFunction=var3088, r23=var1124, org.hibernate.type.Type=var3882, r24=var2273, java.util.List=var240, r0=var477, org.hibernate.engine.spi.SessionFactoryImplementor=var3539, r25=var2701, $i0=var1525, java.lang.Object=var2396, $r1=var175, $r21=var2614, $i1=var58, $r28=var2470, $r4=var2478, $r3=var652, $r5=var2208, $r6=var760, $r7=var3480, $r9=var3048, $r8=var3230, $r10=var1004, $r11=var2004, $r12=var1372}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r23 := @this: org.hibernate.dialect.function.ConvertFunction;	r24 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r25 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 == 2 goto $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	$r21 = (java.lang.String) $r1;	$i1 = interfaceinvoke r0.<java.util.List: int size()>();	if $i1 != 2 goto $r28 = new java.lang.StringBuilder;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("convert(");	$r3 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" , ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r8 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 3