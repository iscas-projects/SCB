(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1068 0)
(declare-sort var2565 0)
(declare-sort var406 0)
(declare-sort var2567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var406_id/-65498558 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2567 String) void)
(declare-fun cast-from-var1068-to-var2567 (var1068) var2567)
(declare-const null-var1068 var1068)
(declare-const null-String String)
(declare-const var917 var1068) ; Statement: r0 := @this: org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCode 
(assert (not (= var917 null-var1068)))
(declare-const var2604 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2604 null-String)))
(define-const var3162 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3162)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3162!1 String)
(assert (= var3162!1 ""))
(define-const var1729 String var406_id/-65498558) ; Statement: $r2 = staticinvoke <org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCodeHelper: java.lang.String id()>() 
(assert true)
(define-const var1919 String (append/672562846 var3162!1 var1729)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3162!2 String)
(assert (= var3162!2 (str.++ var3162!1 var1729)))
(assert true)
(define-const var680 String (append/672562846 var1919 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 "  ")))
(assert true)
(define-const var1477 String (append/672562846 var680 var2604)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 var2604)))
(assert true)
(define-const var1747 String (toString/-2075883882 var1477)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var1068-to-var2567 var917) var1747)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var917!1 var1068)
(declare-const var1747!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var406_id/-65498558=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var1068-to-var2567=([org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCode], org.omg.CORBA.UserException)}
; {var1068=org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCode, var917=r0, var2604=r4, var2565=null_type, var3162=$r1, var406=org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCodeHelper, var1729=$r2, var1919=$r3, var680=$r5, var1477=$r6, var1747=$r7, var2567=org.omg.CORBA.UserException}
; {org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCode=var1068, r0=var917, r4=var2604, null_type=var2565, $r1=var3162, org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCodeHelper=var406, $r2=var1729, $r3=var1919, $r5=var680, $r6=var1477, $r7=var1747, org.omg.CORBA.UserException=var2567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCode;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.DynamicAny.DynAnyFactoryPackage.InconsistentTypeCodeHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1