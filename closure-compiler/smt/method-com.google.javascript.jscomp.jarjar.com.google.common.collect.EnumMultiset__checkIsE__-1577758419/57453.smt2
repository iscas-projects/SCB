(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var973 0)
(declare-sort var3789 0)
(declare-sort var95 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var95_checkNotNull/1446102589 (var3789) var3789)
(declare-fun isActuallyE/-817329468 (var973 var3789) Bool)
(declare-fun var3859-init () var3859)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1167695942 (var973) ClassObject)
(declare-fun append/-1031950772 (String var3789) String)
(declare-fun cast-from-ClassObject-to-var3789 (ClassObject) var3789)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/7803314 (var3859 String) void)
(declare-const null-var973 var973)
(declare-const null-var3789 var3789)
(declare-const var919 var973) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset 
(assert (not (= var919 null-var973)))
(declare-const var1758 var3789) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1758 null-var3789)))
;(assert (var95_checkNotNull/1446102589 var1758)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1758!1 var3789)
(assert true)
(define-const var2405 Bool (isActuallyE/-817329468 var919 var1758!1)) ; Statement: $z0 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset: boolean isActuallyE(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2405 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2033 var3859 var3859-init) ; Statement: $r2 = new java.lang.ClassCastException 
(define-const var1514 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1514)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1514!1 String)
(assert (= var1514!1 ""))
(assert true)
(define-const var1250 String (append/672562846 var1514!1 "Expected an ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected an ") 
(declare-const var1514!2 String)
(assert (= var1514!2 (str.++ var1514!1 "Expected an ")))
(define-const var3339 ClassObject (type/-1167695942 var919)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset: java.lang.Class type> 
(assert true)
(define-const var1324 String (append/-1031950772 var1250 (cast-from-ClassObject-to-var3789 var3339))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1250!1 String)
(assert (str.prefixof var1250 var1250!1))
(assert true)
(define-const var1035 String (append/672562846 var1324 " but got ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but got ") 
(declare-const var1324!1 String)
(assert (= var1324!1 (str.++ var1324 " but got ")))
(assert true)
(define-const var928 String (append/-1031950772 var1035 var1758!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1035!1 String)
(assert (str.prefixof var1035 var1035!1))
(assert true)
(define-const var3422 String (toString/-2075883882 var928)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/7803314 var2033 var3422)) ; Statement: specialinvoke $r2.<java.lang.ClassCastException: void <init>(java.lang.String)>($r9) 

(declare-const var2033!1 var3859)
(declare-const var3422!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var95_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), isActuallyE/-817329468=([com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset, java.lang.Object], boolean), var3859-init=([], java.lang.ClassCastException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1167695942=([com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3789=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var973=com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset, var919=r1, var3789=java.lang.Object, var1758=r0, var95=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2405=$z0, var3859=java.lang.ClassCastException, var2033=$r2, var1514=$r3, var1250=$r5, var3339=$r4, var1324=$r6, var1035=$r7, var928=$r8, var3422=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset=var973, r1=var919, java.lang.Object=var3789, r0=var1758, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var95, $z0=var2405, java.lang.ClassCastException=var3859, $r2=var2033, $r3=var1514, $r5=var1250, $r4=var3339, $r6=var1324, $r7=var1035, $r8=var928, $r9=var3422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset;	r0 := @parameter0: java.lang.Object;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset: boolean isActuallyE(java.lang.Object)>(r0);	if $z0 != 0 goto return;	$r2 = new java.lang.ClassCastException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected an ");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset: java.lang.Class type>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" but got ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.ClassCastException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2