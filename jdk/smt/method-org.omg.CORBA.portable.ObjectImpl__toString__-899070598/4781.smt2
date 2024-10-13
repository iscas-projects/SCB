(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2536 0)
(declare-sort var1034 0)
(declare-sort var1779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun __delegate/836300890 (var2536) var1034)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1779) ClassObject)
(declare-fun cast-from-var2536-to-var1779 (var2536) var1779)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2536 var2536)
(declare-const null-var1034 var1034)
(declare-const var3489 var2536) ; Statement: r0 := @this: org.omg.CORBA.portable.ObjectImpl 
(assert (not (= var3489 null-var2536)))
(define-const var483 var1034 (__delegate/836300890 var3489)) ; Statement: $r1 = r0.<org.omg.CORBA.portable.ObjectImpl: org.omg.CORBA.portable.Delegate __delegate> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var483 null-var1034)) ; Cond: $r1 == null 
(define-const var3246 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3246)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3246!1 String)
(assert (= var3246!1 ""))
(assert true)
(define-const var3155 ClassObject (getClass/1258963082 (cast-from-var2536-to-var1779 var3489))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var153 String (getName/-1958580599 var3155)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3590 String (append/672562846 var3246!1 var153)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3246!2 String)
(assert (= var3246!2 (str.++ var3246!1 var153)))
(assert true)
(define-const var96 String (append/672562846 var3590 ": no delegate set")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": no delegate set") 
(declare-const var3590!1 String)
(assert (= var3590!1 (str.++ var3590 ": no delegate set")))
(assert true)
(define-const var2163 String (toString/-2075883882 var96)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {__delegate/836300890=([org.omg.CORBA.portable.ObjectImpl], org.omg.CORBA.portable.Delegate), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2536-to-var1779=([org.omg.CORBA.portable.ObjectImpl], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2536=org.omg.CORBA.portable.ObjectImpl, var3489=r0, var1034=org.omg.CORBA.portable.Delegate, var483=$r1, var3246=$r2, var1779=java.lang.Object, var3155=$r3, var153=$r4, var3590=$r5, var96=$r6, var2163=$r7}
; {org.omg.CORBA.portable.ObjectImpl=var2536, r0=var3489, org.omg.CORBA.portable.Delegate=var1034, $r1=var483, $r2=var3246, java.lang.Object=var1779, $r3=var3155, $r4=var153, $r5=var3590, $r6=var96, $r7=var2163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.CORBA.portable.ObjectImpl;	$r1 = r0.<org.omg.CORBA.portable.ObjectImpl: org.omg.CORBA.portable.Delegate __delegate>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": no delegate set");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2