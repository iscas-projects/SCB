(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var1542 0)
(declare-sort var618 0)
(declare-sort var3949 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var618_size/-959786421 (var618) Int)
(declare-fun var618_get/-1216255739 (var618 Int) var365)
(declare-fun cast-from-var365-to-String (var365) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var365) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2084 var2084)
(declare-const null-var1542 var1542)
(declare-const null-var618 var618)
(declare-const null-var3949 var3949)
(declare-const var298 var2084) ; Statement: r23 := @this: org.hibernate.dialect.function.ConvertFunction 
(assert (not (= var298 null-var2084)))
(declare-const var264 var1542) ; Statement: r24 := @parameter0: org.hibernate.type.Type 
(assert (not (= var264 null-var1542)))
(declare-const var2254 var618) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var2254 null-var618)))
(declare-const var3132 var3949) ; Statement: r25 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3132 null-var3949)))
(define-const var1300 Int (var618_size/-959786421 var2254)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 == 2 goto $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
(assert (= var1300 2)) ; Cond: $i0 == 2 
(define-const var3824 var365 (var618_get/-1216255739 var2254 1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
(define-const var1307 String (cast-from-var365-to-String var3824)) ; Statement: $r21 = (java.lang.String) $r1 
(define-const var3591 Int (var618_size/-959786421 var2254)) ; Statement: $i1 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i1 != 2 goto $r28 = new java.lang.StringBuilder 
(assert (not (not (= var3591 2)))) ; Negate: Cond: $i1 != 2  
(define-const var3757 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3757)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3757!1 String)
(assert (= var3757!1 ""))
(assert true)
(define-const var2396 String (append/672562846 var3757!1 "{fn convert(")) ; Statement: $r15 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{fn convert(") 
(declare-const var3757!2 String)
(assert (= var3757!2 (str.++ var3757!1 "{fn convert(")))
(define-const var3424 var365 (var618_get/-1216255739 var2254 0)) ; Statement: $r14 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(assert true)
(define-const var2864 String (append/-1031950772 var2396 var3424)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var2396!1 String)
(assert (str.prefixof var2396 var2396!1))
(assert true)
(define-const var1703 String (append/672562846 var2864 " , ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" , ") 
(declare-const var2864!1 String)
(assert (= var2864!1 (str.++ var2864 " , ")))
(assert true)
(define-const var718 String (append/672562846 var1703 var1307)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 var1307)))
(assert true)
(define-const var1537 String (append/672562846 var718 ")}")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")}") 
(declare-const var718!1 String)
(assert (= var718!1 (str.++ var718 ")}")))
(assert true)
(define-const var711 String (toString/-2075883882 var1537)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var618_size/-959786421=([java.util.List], int), var618_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var365-to-String=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2084=org.hibernate.dialect.function.ConvertFunction, var298=r23, var1542=org.hibernate.type.Type, var264=r24, var618=java.util.List, var2254=r0, var3949=org.hibernate.engine.spi.SessionFactoryImplementor, var3132=r25, var1300=$i0, var365=java.lang.Object, var3824=$r1, var1307=$r21, var3591=$i1, var3757=$r27, var2396=$r15, var3424=$r14, var2864=$r16, var1703=$r17, var718=$r18, var1537=$r19, var711=$r20}
; {org.hibernate.dialect.function.ConvertFunction=var2084, r23=var298, org.hibernate.type.Type=var1542, r24=var264, java.util.List=var618, r0=var2254, org.hibernate.engine.spi.SessionFactoryImplementor=var3949, r25=var3132, $i0=var1300, java.lang.Object=var365, $r1=var3824, $r21=var1307, $i1=var3591, $r27=var3757, $r15=var2396, $r14=var3424, $r16=var2864, $r17=var1703, $r18=var718, $r19=var1537, $r20=var711}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r23 := @this: org.hibernate.dialect.function.ConvertFunction;	r24 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r25 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 == 2 goto $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	$r21 = (java.lang.String) $r1;	$i1 = interfaceinvoke r0.<java.util.List: int size()>();	if $i1 != 2 goto $r28 = new java.lang.StringBuilder;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{fn convert(");	$r14 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" , ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")}");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 3