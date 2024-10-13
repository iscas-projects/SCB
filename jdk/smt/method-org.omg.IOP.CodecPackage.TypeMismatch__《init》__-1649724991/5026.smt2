(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort var3942 0)
(declare-sort var3487 0)
(declare-sort var281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3487_id/1423850738 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var281 String) void)
(declare-fun cast-from-var622-to-var281 (var622) var281)
(declare-const null-var622 var622)
(declare-const null-String String)
(declare-const var2544 var622) ; Statement: r0 := @this: org.omg.IOP.CodecPackage.TypeMismatch 
(assert (not (= var2544 null-var622)))
(declare-const var3748 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3748 null-String)))
(define-const var2190 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2190)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2190!1 String)
(assert (= var2190!1 ""))
(define-const var709 String var3487_id/1423850738) ; Statement: $r2 = staticinvoke <org.omg.IOP.CodecPackage.TypeMismatchHelper: java.lang.String id()>() 
(assert true)
(define-const var3162 String (append/672562846 var2190!1 var709)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2190!2 String)
(assert (= var2190!2 (str.++ var2190!1 var709)))
(assert true)
(define-const var2004 String (append/672562846 var3162 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3162!1 String)
(assert (= var3162!1 (str.++ var3162 "  ")))
(assert true)
(define-const var1459 String (append/672562846 var2004 var3748)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2004!1 String)
(assert (= var2004!1 (str.++ var2004 var3748)))
(assert true)
(define-const var117 String (toString/-2075883882 var1459)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var622-to-var281 var2544) var117)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var2544!1 var622)
(declare-const var117!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3487_id/1423850738=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var622-to-var281=([org.omg.IOP.CodecPackage.TypeMismatch], org.omg.CORBA.UserException)}
; {var622=org.omg.IOP.CodecPackage.TypeMismatch, var2544=r0, var3748=r4, var3942=null_type, var2190=$r1, var3487=org.omg.IOP.CodecPackage.TypeMismatchHelper, var709=$r2, var3162=$r3, var2004=$r5, var1459=$r6, var117=$r7, var281=org.omg.CORBA.UserException}
; {org.omg.IOP.CodecPackage.TypeMismatch=var622, r0=var2544, r4=var3748, null_type=var3942, $r1=var2190, org.omg.IOP.CodecPackage.TypeMismatchHelper=var3487, $r2=var709, $r3=var3162, $r5=var2004, $r6=var1459, $r7=var117, org.omg.CORBA.UserException=var281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.IOP.CodecPackage.TypeMismatch;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.IOP.CodecPackage.TypeMismatchHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1