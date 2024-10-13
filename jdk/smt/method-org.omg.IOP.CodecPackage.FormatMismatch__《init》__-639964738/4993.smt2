(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1890 0)
(declare-sort var2446 0)
(declare-sort var2568 0)
(declare-sort var2028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2568_id/1688588335 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2028 String) void)
(declare-fun cast-from-var1890-to-var2028 (var1890) var2028)
(declare-const null-var1890 var1890)
(declare-const null-String String)
(declare-const var911 var1890) ; Statement: r0 := @this: org.omg.IOP.CodecPackage.FormatMismatch 
(assert (not (= var911 null-var1890)))
(declare-const var2852 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2852 null-String)))
(define-const var535 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var535)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var535!1 String)
(assert (= var535!1 ""))
(define-const var662 String var2568_id/1688588335) ; Statement: $r2 = staticinvoke <org.omg.IOP.CodecPackage.FormatMismatchHelper: java.lang.String id()>() 
(assert true)
(define-const var1399 String (append/672562846 var535!1 var662)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var535!2 String)
(assert (= var535!2 (str.++ var535!1 var662)))
(assert true)
(define-const var324 String (append/672562846 var1399 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1399!1 String)
(assert (= var1399!1 (str.++ var1399 "  ")))
(assert true)
(define-const var976 String (append/672562846 var324 var2852)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var324!1 String)
(assert (= var324!1 (str.++ var324 var2852)))
(assert true)
(define-const var750 String (toString/-2075883882 var976)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1890-to-var2028 var911) var750)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var911!1 var1890)
(declare-const var750!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2568_id/1688588335=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1890-to-var2028=([org.omg.IOP.CodecPackage.FormatMismatch], org.omg.CORBA.UserException)}
; {var1890=org.omg.IOP.CodecPackage.FormatMismatch, var911=r0, var2852=r4, var2446=null_type, var535=$r1, var2568=org.omg.IOP.CodecPackage.FormatMismatchHelper, var662=$r2, var1399=$r3, var324=$r5, var976=$r6, var750=$r7, var2028=org.omg.CORBA.UserException}
; {org.omg.IOP.CodecPackage.FormatMismatch=var1890, r0=var911, r4=var2852, null_type=var2446, $r1=var535, org.omg.IOP.CodecPackage.FormatMismatchHelper=var2568, $r2=var662, $r3=var1399, $r5=var324, $r6=var976, $r7=var750, org.omg.CORBA.UserException=var2028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.IOP.CodecPackage.FormatMismatch;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.IOP.CodecPackage.FormatMismatchHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1