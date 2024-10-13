(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1543 0)
(declare-sort var53 0)
(declare-sort var200 0)
(declare-sort var2305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var200_id/1737982170 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2305 String) void)
(declare-fun cast-from-var1543-to-var2305 (var1543) var2305)
(declare-const null-var1543 var1543)
(declare-const null-String String)
(declare-const var166 var1543) ; Statement: r0 := @this: org.omg.CosNaming.NamingContextPackage.NotEmpty 
(assert (not (= var166 null-var1543)))
(declare-const var2168 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2168 null-String)))
(define-const var541 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var541)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var541!1 String)
(assert (= var541!1 ""))
(define-const var2570 String var200_id/1737982170) ; Statement: $r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.NotEmptyHelper: java.lang.String id()>() 
(assert true)
(define-const var2687 String (append/672562846 var541!1 var2570)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var541!2 String)
(assert (= var541!2 (str.++ var541!1 var2570)))
(assert true)
(define-const var1435 String (append/672562846 var2687 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2687!1 String)
(assert (= var2687!1 (str.++ var2687 "  ")))
(assert true)
(define-const var1684 String (append/672562846 var1435 var2168)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1435!1 String)
(assert (= var1435!1 (str.++ var1435 var2168)))
(assert true)
(define-const var764 String (toString/-2075883882 var1684)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1543-to-var2305 var166) var764)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var166!1 var1543)
(declare-const var764!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var200_id/1737982170=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1543-to-var2305=([org.omg.CosNaming.NamingContextPackage.NotEmpty], org.omg.CORBA.UserException)}
; {var1543=org.omg.CosNaming.NamingContextPackage.NotEmpty, var166=r0, var2168=r4, var53=null_type, var541=$r1, var200=org.omg.CosNaming.NamingContextPackage.NotEmptyHelper, var2570=$r2, var2687=$r3, var1435=$r5, var1684=$r6, var764=$r7, var2305=org.omg.CORBA.UserException}
; {org.omg.CosNaming.NamingContextPackage.NotEmpty=var1543, r0=var166, r4=var2168, null_type=var53, $r1=var541, org.omg.CosNaming.NamingContextPackage.NotEmptyHelper=var200, $r2=var2570, $r3=var2687, $r5=var1435, $r6=var1684, $r7=var764, org.omg.CORBA.UserException=var2305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CosNaming.NamingContextPackage.NotEmpty;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.CosNaming.NamingContextPackage.NotEmptyHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1