(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1836 0)
(declare-sort var623 0)
(declare-sort var622 0)
(declare-sort var2502 0)
(declare-sort var1156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2502-init () var2502)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1156) ClassObject)
(declare-fun cast-from-var1836-to-var1156 (var1836) var1156)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1247810213 (var2502 String) void)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const null-var622 var622)
(declare-const var1792 var1836) ; Statement: r0 := @parameter0: java.lang.annotation.Annotation 
(assert (not (= var1792 null-var1836)))
(declare-const var3003 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3003 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1178 var622) ; Statement: $r17 := @caughtexception 
(assert (not (= var1178 null-var622)))
(define-const var77 var2502 var2502-init) ; Statement: $r18 = new java.lang.InternalError 
(define-const var2959 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2959)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2959!1 String)
(assert (= var2959!1 ""))
(assert true)
(define-const var3190 String (append/672562846 var2959!1 "Could not loacate method ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not loacate method ") 
(declare-const var2959!2 String)
(assert (= var2959!2 (str.++ var2959!1 "Could not loacate method ")))
(assert true)
(define-const var2220 String (append/672562846 var3190 var3003)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3190!1 String)
(assert (= var3190!1 (str.++ var3190 var3003)))
(assert true)
(define-const var342 String (append/672562846 var2220 " in annotation ")) ; Statement: $r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in annotation ") 
(declare-const var2220!1 String)
(assert (= var2220!1 (str.++ var2220 " in annotation ")))
(assert true)
(define-const var1975 ClassObject (getClass/1258963082 (cast-from-var1836-to-var1156 var1792))) ; Statement: $r22 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2476 String (getName/-1958580599 var1975)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2010 String (append/672562846 var342 var2476)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var342!1 String)
(assert (= var342!1 (str.++ var342 var2476)))
(assert true)
(define-const var2644 String (toString/-2075883882 var2010)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1247810213 var77 var2644)) ; Statement: specialinvoke $r18.<java.lang.InternalError: void <init>(java.lang.String)>($r26) 

(declare-const var77!1 var2502)
(declare-const var2644!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2502-init=([], java.lang.InternalError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1836-to-var1156=([java.lang.annotation.Annotation], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1247810213=([java.lang.InternalError, java.lang.String], void)}
; {var1836=java.lang.annotation.Annotation, var1792=r0, var3003=r1, var623=null_type, var622=java.lang.NoSuchMethodException, var1178=$r17, var2502=java.lang.InternalError, var77=$r18, var2959=$r19, var3190=$r20, var2220=$r21, var342=$r24, var1156=java.lang.Object, var1975=$r22, var2476=$r23, var2010=$r25, var2644=$r26}
; {java.lang.annotation.Annotation=var1836, r0=var1792, r1=var3003, null_type=var623, java.lang.NoSuchMethodException=var622, $r17=var1178, java.lang.InternalError=var2502, $r18=var77, $r19=var2959, $r20=var3190, $r21=var2220, $r24=var342, java.lang.Object=var1156, $r22=var1975, $r23=var2476, $r25=var2010, $r26=var2644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.annotation.Annotation;	r1 := @parameter1: java.lang.String;	$r17 := @caughtexception;	$r18 = new java.lang.InternalError;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not loacate method ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r24 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in annotation ");	$r22 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r23 = virtualinvoke $r22.<java.lang.Class: java.lang.String getName()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.InternalError: void <init>(java.lang.String)>($r26);	throw $r18
;block_num 2