(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3543 0)
(declare-sort var3746 0)
(declare-sort var1187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1187) ClassObject)
(declare-fun cast-from-var3543-to-var1187 (var3543) var1187)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3543 var3543)
(declare-const null-String String)
(declare-const var3742 var3543) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite$Builder 
(assert (not (= var3742 null-var3543)))
(declare-const var1785 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1785 null-String)))
(define-const var922 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var922)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var922!1 String)
(assert (= var922!1 ""))
(assert true)
(define-const var1016 String (append/672562846 var922!1 "Reading ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reading ") 
(declare-const var922!2 String)
(assert (= var922!2 (str.++ var922!1 "Reading ")))
(assert true)
(define-const var2248 ClassObject (getClass/1258963082 (cast-from-var3543-to-var1187 var3742))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2012 String (getName/-1958580599 var2248)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1151 String (append/672562846 var1016 var2012)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1016!1 String)
(assert (= var1016!1 (str.++ var1016 var2012)))
(assert true)
(define-const var2507 String (append/672562846 var1151 " from a ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from a ") 
(declare-const var1151!1 String)
(assert (= var1151!1 (str.++ var1151 " from a ")))
(assert true)
(define-const var271 String (append/672562846 var2507 var1785)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2507!1 String)
(assert (= var2507!1 (str.++ var2507 var1785)))
(assert true)
(define-const var3191 String (append/672562846 var271 " threw an IOException (should never happen).")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" threw an IOException (should never happen).") 
(declare-const var271!1 String)
(assert (= var271!1 (str.++ var271 " threw an IOException (should never happen).")))
(assert true)
(define-const var3918 String (toString/-2075883882 var3191)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3543-to-var1187=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite$Builder], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3543=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite$Builder, var3742=r1, var1785=r6, var3746=null_type, var922=$r0, var1016=$r4, var1187=java.lang.Object, var2248=$r2, var2012=$r3, var1151=$r5, var2507=$r7, var271=$r8, var3191=$r9, var3918=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite$Builder=var3543, r1=var3742, r6=var1785, null_type=var3746, $r0=var922, $r4=var1016, java.lang.Object=var1187, $r2=var2248, $r3=var2012, $r5=var1151, $r7=var2507, $r8=var271, $r9=var3191, $r10=var3918}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite$Builder;	r6 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reading ");	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from a ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" threw an IOException (should never happen).");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1