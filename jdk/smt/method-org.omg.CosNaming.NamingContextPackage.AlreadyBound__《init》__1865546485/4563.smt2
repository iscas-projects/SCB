(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var2597 0)
(declare-sort var3979 0)
(declare-sort var547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3979_id/-1137851610 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var547 String) void)
(declare-fun cast-from-var1910-to-var547 (var1910) var547)
(declare-const null-var1910 var1910)
(declare-const null-String String)
(declare-const var3793 var1910) ; Statement: r0 := @this: org.omg.CosNaming.NamingContextPackage.AlreadyBound 
(assert (not (= var3793 null-var1910)))
(declare-const var2823 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2823 null-String)))
(define-const var3846 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3846)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3846!1 String)
(assert (= var3846!1 ""))
(define-const var1755 String var3979_id/-1137851610) ; Statement: $r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.AlreadyBoundHelper: java.lang.String id()>() 
(assert true)
(define-const var411 String (append/672562846 var3846!1 var1755)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3846!2 String)
(assert (= var3846!2 (str.++ var3846!1 var1755)))
(assert true)
(define-const var2407 String (append/672562846 var411 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var411!1 String)
(assert (= var411!1 (str.++ var411 "  ")))
(assert true)
(define-const var502 String (append/672562846 var2407 var2823)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2407!1 String)
(assert (= var2407!1 (str.++ var2407 var2823)))
(assert true)
(define-const var179 String (toString/-2075883882 var502)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1910-to-var547 var3793) var179)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var3793!1 var1910)
(declare-const var179!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3979_id/-1137851610=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1910-to-var547=([org.omg.CosNaming.NamingContextPackage.AlreadyBound], org.omg.CORBA.UserException)}
; {var1910=org.omg.CosNaming.NamingContextPackage.AlreadyBound, var3793=r0, var2823=r4, var2597=null_type, var3846=$r1, var3979=org.omg.CosNaming.NamingContextPackage.AlreadyBoundHelper, var1755=$r2, var411=$r3, var2407=$r5, var502=$r6, var179=$r7, var547=org.omg.CORBA.UserException}
; {org.omg.CosNaming.NamingContextPackage.AlreadyBound=var1910, r0=var3793, r4=var2823, null_type=var2597, $r1=var3846, org.omg.CosNaming.NamingContextPackage.AlreadyBoundHelper=var3979, $r2=var1755, $r3=var411, $r5=var2407, $r6=var502, $r7=var179, org.omg.CORBA.UserException=var547}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CosNaming.NamingContextPackage.AlreadyBound;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.AlreadyBoundHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1