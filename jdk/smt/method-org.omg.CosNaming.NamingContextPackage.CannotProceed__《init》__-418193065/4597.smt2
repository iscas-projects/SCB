(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2249 0)
(declare-sort var3405 0)
(declare-sort var2459 0)
(declare-sort var1432 0)
(declare-sort var725 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var725_id/-1502684511 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var1876 String) void)
(declare-fun cast-from-var2249-to-var1876 (var2249) var1876)
(declare-fun cxt/-1693137014 (var2249) var2459)
(declare-fun rest_of_name/-1693137014 (var2249) (Array Int var1432))
(declare-const null-var2249 var2249)
(declare-const null-String String)
(declare-const null-var2459 var2459)
(declare-const null-__Array__Int__var1432__ (Array Int var1432))
(declare-const var1776 var2249) ; Statement: r0 := @this: org.omg.CosNaming.NamingContextPackage.CannotProceed 
(assert (not (= var1776 null-var2249)))
(declare-const var399 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var399 null-String)))
(declare-const var3954 var2459) ; Statement: r8 := @parameter1: org.omg.CosNaming.NamingContext 
(assert (not (= var3954 null-var2459)))
(declare-const var3320 (Array Int var1432)) ; Statement: r9 := @parameter2: org.omg.CosNaming.NameComponent[] 
(assert (not (= var3320 null-__Array__Int__var1432__)))
(define-const var194 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var194)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var194!1 String)
(assert (= var194!1 ""))
(define-const var103 String var725_id/-1502684511) ; Statement: $r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.CannotProceedHelper: java.lang.String id()>() 
(assert true)
(define-const var3975 String (append/672562846 var194!1 var103)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var194!2 String)
(assert (= var194!2 (str.++ var194!1 var103)))
(assert true)
(define-const var470 String (append/672562846 var3975 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3975!1 String)
(assert (= var3975!1 (str.++ var3975 "  ")))
(assert true)
(define-const var1423 String (append/672562846 var470 var399)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var470!1 String)
(assert (= var470!1 (str.++ var470 var399)))
(assert true)
(define-const var1484 String (toString/-2075883882 var1423)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var2249-to-var1876 var1776) var1484)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1776!1 var2249)
(declare-const var1484!1 String)
(declare-const var1776!2 var2249)
(assert (not (= var1776!2 null-var2249)))
(assert (= (cxt/-1693137014 var1776!2) null-var2459)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NamingContext cxt> = null 
(declare-const var1776!3 var2249)
(assert (not (= var1776!3 null-var2249)))
(assert (= (rest_of_name/-1693137014 var1776!3) null-__Array__Int__var1432__)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NameComponent[] rest_of_name> = null 
(declare-const var1776!4 var2249)
(assert (not (= var1776!4 null-var2249)))
(assert (= (cxt/-1693137014 var1776!4) var3954)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NamingContext cxt> = r8 
(declare-const var1776!5 var2249)
(assert (not (= var1776!5 null-var2249)))
(assert (= (rest_of_name/-1693137014 var1776!5) var3320)) ; Statement: r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NameComponent[] rest_of_name> = r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var725_id/-1502684511=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var2249-to-var1876=([org.omg.CosNaming.NamingContextPackage.CannotProceed], org.omg.CORBA.UserException), cxt/-1693137014=([org.omg.CosNaming.NamingContextPackage.CannotProceed], org.omg.CosNaming.NamingContext), rest_of_name/-1693137014=([org.omg.CosNaming.NamingContextPackage.CannotProceed], org.omg.CosNaming.NameComponent[])}
; {var2249=org.omg.CosNaming.NamingContextPackage.CannotProceed, var1776=r0, var399=r4, var3405=null_type, var2459=org.omg.CosNaming.NamingContext, var3954=r8, var1432=org.omg.CosNaming.NameComponent, var3320=r9, var194=$r1, var725=org.omg.CosNaming.NamingContextPackage.CannotProceedHelper, var103=$r2, var3975=$r3, var470=$r5, var1423=$r6, var1484=$r7, var1876=org.omg.CORBA.UserException}
; {org.omg.CosNaming.NamingContextPackage.CannotProceed=var2249, r0=var1776, r4=var399, null_type=var3405, org.omg.CosNaming.NamingContext=var2459, r8=var3954, org.omg.CosNaming.NameComponent=var1432, r9=var3320, $r1=var194, org.omg.CosNaming.NamingContextPackage.CannotProceedHelper=var725, $r2=var103, $r3=var3975, $r5=var470, $r6=var1423, $r7=var1484, org.omg.CORBA.UserException=var1876}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CosNaming.NamingContextPackage.CannotProceed;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: org.omg.CosNaming.NamingContext;	r9 := @parameter2: org.omg.CosNaming.NameComponent[];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.CannotProceedHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NamingContext cxt> = null;	r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NameComponent[] rest_of_name> = null;	r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NamingContext cxt> = r8;	r0.<org.omg.CosNaming.NamingContextPackage.CannotProceed: org.omg.CosNaming.NameComponent[] rest_of_name> = r9;	return
;block_num 1