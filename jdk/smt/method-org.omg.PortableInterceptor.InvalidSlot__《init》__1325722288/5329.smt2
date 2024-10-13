(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var665 0)
(declare-sort var2074 0)
(declare-sort var1970 0)
(declare-sort var2409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1970_id/1105159585 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var2409 String) void)
(declare-fun cast-from-var665-to-var2409 (var665) var2409)
(declare-const null-var665 var665)
(declare-const null-String String)
(declare-const var1828 var665) ; Statement: r0 := @this: org.omg.PortableInterceptor.InvalidSlot 
(assert (not (= var1828 null-var665)))
(declare-const var3965 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3965 null-String)))
(define-const var3721 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3721)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3721!1 String)
(assert (= var3721!1 ""))
(define-const var3243 String var1970_id/1105159585) ; Statement: $r2 = staticinvoke <org.omg.PortableInterceptor.InvalidSlotHelper: java.lang.String id()>() 
(assert true)
(define-const var1779 String (append/672562846 var3721!1 var3243)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3721!2 String)
(assert (= var3721!2 (str.++ var3721!1 var3243)))
(assert true)
(define-const var3229 String (append/672562846 var1779 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1779!1 String)
(assert (= var1779!1 (str.++ var1779 "  ")))
(assert true)
(define-const var1937 String (append/672562846 var3229 var3965)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3229!1 String)
(assert (= var3229!1 (str.++ var3229 var3965)))
(assert true)
(define-const var1976 String (toString/-2075883882 var1937)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var665-to-var2409 var1828) var1976)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1828!1 var665)
(declare-const var1976!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1970_id/1105159585=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var665-to-var2409=([org.omg.PortableInterceptor.InvalidSlot], org.omg.CORBA.UserException)}
; {var665=org.omg.PortableInterceptor.InvalidSlot, var1828=r0, var3965=r4, var2074=null_type, var3721=$r1, var1970=org.omg.PortableInterceptor.InvalidSlotHelper, var3243=$r2, var1779=$r3, var3229=$r5, var1937=$r6, var1976=$r7, var2409=org.omg.CORBA.UserException}
; {org.omg.PortableInterceptor.InvalidSlot=var665, r0=var1828, r4=var3965, null_type=var2074, $r1=var3721, org.omg.PortableInterceptor.InvalidSlotHelper=var1970, $r2=var3243, $r3=var1779, $r5=var3229, $r6=var1937, $r7=var1976, org.omg.CORBA.UserException=var2409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.PortableInterceptor.InvalidSlot;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.PortableInterceptor.InvalidSlotHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1