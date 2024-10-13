(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var589 0)
(declare-sort var1680 0)
(declare-sort var2132 0)
(declare-sort var2486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2132_id/-178610085 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2486 String) void)
(declare-fun cast-from-var589-to-var2486 (var589) var2486)
(declare-fun name/902916804 (var589) String)
(declare-const null-var589 var589)
(declare-const null-String String)
(declare-const var749 var589) ; Statement: r0 := @this: org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName 
(assert (not (= var749 null-var589)))
(declare-const var2579 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2579 null-String)))
(declare-const var2291 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2291 null-String)))
(define-const var1995 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1995)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1995!1 String)
(assert (= var1995!1 ""))
(define-const var3199 String var2132_id/-178610085) ; Statement: $r2 = staticinvoke <org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateNameHelper: java.lang.String id()>() 
(assert true)
(define-const var353 String (append/672562846 var1995!1 var3199)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1995!2 String)
(assert (= var1995!2 (str.++ var1995!1 var3199)))
(assert true)
(define-const var2931 String (append/672562846 var353 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var353!1 String)
(assert (= var353!1 (str.++ var353 "  ")))
(assert true)
(define-const var1775 String (append/672562846 var2931 var2579)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2931!1 String)
(assert (= var2931!1 (str.++ var2931 var2579)))
(assert true)
(define-const var963 String (toString/-2075883882 var1775)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var589-to-var2486 var749) var963)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var749!1 var589)
(declare-const var963!1 String)
(declare-const var749!2 var589)
(assert (not (= var749!2 null-var589)))
(assert (= (name/902916804 var749!2) null-String)) ; Statement: r0.<org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName: java.lang.String name> = null 
(declare-const var749!3 var589)
(assert (not (= var749!3 null-var589)))
(assert (= (name/902916804 var749!3) var2291)) ; Statement: r0.<org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName: java.lang.String name> = r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2132_id/-178610085=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var589-to-var2486=([org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName], org.omg.CORBA.UserException), name/902916804=([org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName], java.lang.String)}
; {var589=org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName, var749=r0, var2579=r4, var1680=null_type, var2291=r8, var1995=$r1, var2132=org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateNameHelper, var3199=$r2, var353=$r3, var2931=$r5, var1775=$r6, var963=$r7, var2486=org.omg.CORBA.UserException}
; {org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName=var589, r0=var749, r4=var2579, null_type=var1680, r8=var2291, $r1=var1995, org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateNameHelper=var2132, $r2=var3199, $r3=var353, $r5=var2931, $r6=var1775, $r7=var963, org.omg.CORBA.UserException=var2486}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName;	r4 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateNameHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	r0.<org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName: java.lang.String name> = null;	r0.<org.omg.PortableInterceptor.ORBInitInfoPackage.DuplicateName: java.lang.String name> = r8;	return
;block_num 1