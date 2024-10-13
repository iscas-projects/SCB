(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3719 0)
(declare-sort var3324 0)
(declare-sort var441 0)
(declare-sort var1667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/1594745010 (String var1667) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var441-to-var1667 (var441) var1667)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3719 var3719)
(declare-const null-String String)
(declare-const null-var441 var441)
(declare-const var2905 var3719) ; Statement: r9 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var2905 null-var3719)))
(declare-const var412 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var412 null-String)))
(declare-const var2840 var441) ; Statement: r3 := @parameter1: java.util.List 
(assert (not (= var2840 null-var441)))
(define-const var1315 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1315)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1315!1 String)
(assert (= var1315!1 ""))
(assert true)
(define-const var2613 String (append/672562846 var1315!1 var412)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1315!2 String)
(assert (= var1315!2 (str.++ var1315!1 var412)))
(assert true)
(define-const var1179 String (append/672562846 var2613 " with hint (")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with hint (") 
(declare-const var2613!1 String)
(assert (= var2613!1 (str.++ var2613 " with hint (")))
(define-const var1135 String (String_join/1594745010 (cast-from-String-to-String ",") (cast-from-var441-to-var1667 var2840))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(",", r3) 
(assert true)
(define-const var1112 String (append/672562846 var1179 var1135)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1179!1 String)
(assert (= var1179!1 (str.++ var1179 var1135)))
(assert true)
(define-const var2154 String (append/672562846 var1112 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1112!1 String)
(assert (= var1112!1 (str.++ var1112 ")")))
(assert true)
(define-const var3892 String (toString/-2075883882 var2154)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var441-to-var1667=([java.util.List], java.lang.Iterable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3719=org.hibernate.dialect.AbstractHANADialect, var2905=r9, var412=r1, var3324=null_type, var441=java.util.List, var2840=r3, var1315=$r0, var2613=$r2, var1179=$r5, var1667=java.lang.Iterable, var1135=$r4, var1112=$r6, var2154=$r7, var3892=$r8}
; {org.hibernate.dialect.AbstractHANADialect=var3719, r9=var2905, r1=var412, null_type=var3324, java.util.List=var441, r3=var2840, $r0=var1315, $r2=var2613, $r5=var1179, java.lang.Iterable=var1667, $r4=var1135, $r6=var1112, $r7=var2154, $r8=var3892}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with hint (");	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(",", r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1