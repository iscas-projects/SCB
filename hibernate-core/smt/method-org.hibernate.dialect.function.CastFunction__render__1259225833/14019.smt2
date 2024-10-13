(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3033 0)
(declare-sort var3702 0)
(declare-sort var2255 0)
(declare-sort var298 0)
(declare-sort var3004 0)
(declare-sort var2580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2255_size/-959786421 (var2255) Int)
(declare-fun var3004-init () var3004)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3004 String) void)
(declare-fun cast-from-var3004-to-var2580 (var3004) var2580)
(declare-const null-var3033 var3033)
(declare-const null-var3702 var3702)
(declare-const null-var2255 var2255)
(declare-const null-var298 var298)
(declare-const var2745 var3033) ; Statement: r22 := @this: org.hibernate.dialect.function.CastFunction 
(assert (not (= var2745 null-var3033)))
(declare-const var1641 var3702) ; Statement: r23 := @parameter0: org.hibernate.type.Type 
(assert (not (= var1641 null-var3702)))
(declare-const var1196 var2255) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1196 null-var2255)))
(declare-const var3840 var298) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3840 null-var298)))
(define-const var1220 Int (var2255_size/-959786421 var1196)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 == 2 goto $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1) 
(assert (not (= var1220 2))) ; Negate: Cond: $i0 == 2  
(define-const var2640 var3004 var3004-init) ; Statement: $r26 = new org.hibernate.QueryException 
(define-const var3929 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3929)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3929!1 String)
(assert (= var3929!1 ""))
(assert true)
(define-const var1813 String (append/672562846 var3929!1 "cast() requires two arguments; found : ")) ; Statement: $r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast() requires two arguments; found : ") 
(declare-const var3929!2 String)
(assert (= var3929!2 (str.++ var3929!1 "cast() requires two arguments; found : ")))
(define-const var3536 Int (var2255_size/-959786421 var1196)) ; Statement: $i3 = interfaceinvoke r0.<java.util.List: int size()>() 
(assert true)
(define-const var3096 String (append/-1001720160 var1813 var3536)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1813!1 String)
(assert (str.prefixof var1813 var1813!1))
(assert true)
(define-const var3841 String (toString/-2075883882 var3096)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2640 var3841)) ; Statement: specialinvoke $r26.<org.hibernate.QueryException: void <init>(java.lang.String)>($r21) 

(declare-const var2640!1 var3004)
(declare-const var3841!1 String)
(define-const var2652 var2580 (cast-from-var3004-to-var2580 var2640!1)) ; Statement: $r29 = (java.lang.Throwable) $r26 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var2255_size/-959786421=([java.util.List], int), var3004-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3004-to-var2580=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3033=org.hibernate.dialect.function.CastFunction, var2745=r22, var3702=org.hibernate.type.Type, var1641=r23, var2255=java.util.List, var1196=r0, var298=org.hibernate.engine.spi.SessionFactoryImplementor, var3840=r3, var1220=$i0, var3004=org.hibernate.QueryException, var2640=$r26, var3929=$r25, var1813=$r19, var3536=$i3, var3096=$r20, var3841=$r21, var2580=java.lang.Throwable, var2652=$r29}
; {org.hibernate.dialect.function.CastFunction=var3033, r22=var2745, org.hibernate.type.Type=var3702, r23=var1641, java.util.List=var2255, r0=var1196, org.hibernate.engine.spi.SessionFactoryImplementor=var298, r3=var3840, $i0=var1220, org.hibernate.QueryException=var3004, $r26=var2640, $r25=var3929, $r19=var1813, $i3=var3536, $r20=var3096, $r21=var3841, java.lang.Throwable=var2580, $r29=var2652}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r22 := @this: org.hibernate.dialect.function.CastFunction;	r23 := @parameter0: org.hibernate.type.Type;	r0 := @parameter1: java.util.List;	r3 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 == 2 goto $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(1);	$r26 = new org.hibernate.QueryException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cast() requires two arguments; found : ");	$i3 = interfaceinvoke r0.<java.util.List: int size()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<org.hibernate.QueryException: void <init>(java.lang.String)>($r21);	$r29 = (java.lang.Throwable) $r26;	throw $r29
;block_num 2