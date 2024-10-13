(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3613 0)
(declare-sort var1852 0)
(declare-sort var459 0)
(declare-sort var1540 0)
(declare-sort var3624 0)
(declare-sort var3900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initializers/-1177927772 (var3613) var459)
(declare-fun var459_get/1088891777 (var459 var1540) var1540)
(declare-fun cast-from-String-to-var1540 (String) var1540)
(declare-fun cast-from-var1540-to-var3624 (var1540) var3624)
(declare-fun var3900-init () var3900)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1658509215 (var3900 String) void)
(declare-const null-var3613 var3613)
(declare-const null-String String)
(declare-const null-var3624 var3624)
(declare-const var193 var3613) ; Statement: r0 := @this: org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults 
(assert (not (= var193 null-var3613)))
(declare-const var804 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var804 null-String)))
(define-const var3233 var459 (initializers/-1177927772 var193)) ; Statement: $r2 = r0.<org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults: java.util.Map initializers> 
(define-const var1635 var1540 (var459_get/1088891777 var3233 (cast-from-String-to-var1540 var804))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2054 var3624 (cast-from-var1540-to-var3624 var1635)) ; Statement: r4 = (org.apache.commons.lang3.concurrent.BackgroundInitializer) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2054 null-var3624)))) ; Negate: Cond: r4 != null  
(define-const var1345 var3900 var3900-init) ; Statement: $r5 = new java.util.NoSuchElementException 
(define-const var56 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var56)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var56!1 String)
(assert (= var56!1 ""))
(assert true)
(define-const var2813 String (append/672562846 var56!1 "No child initializer with name ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No child initializer with name ") 
(declare-const var56!2 String)
(assert (= var56!2 (str.++ var56!1 "No child initializer with name ")))
(assert true)
(define-const var2567 String (append/672562846 var2813 var804)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2813!1 String)
(assert (= var2813!1 (str.++ var2813 var804)))
(assert true)
(define-const var990 String (toString/-2075883882 var2567)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1658509215 var1345 var990)) ; Statement: specialinvoke $r5.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r9) 

(declare-const var1345!1 var3900)
(declare-const var990!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {initializers/-1177927772=([org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults], java.util.Map), var459_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1540=([java.lang.String], java.lang.Object), cast-from-var1540-to-var3624=([java.lang.Object], org.apache.commons.lang3.concurrent.BackgroundInitializer), var3900-init=([], java.util.NoSuchElementException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1658509215=([java.util.NoSuchElementException, java.lang.String], void)}
; {var3613=org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults, var193=r0, var804=r1, var1852=null_type, var459=java.util.Map, var3233=$r2, var1540=java.lang.Object, var1635=$r3, var3624=org.apache.commons.lang3.concurrent.BackgroundInitializer, var2054=r4, var3900=java.util.NoSuchElementException, var1345=$r5, var56=$r6, var2813=$r7, var2567=$r8, var990=$r9}
; {org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults=var3613, r0=var193, r1=var804, null_type=var1852, java.util.Map=var459, $r2=var3233, java.lang.Object=var1540, $r3=var1635, org.apache.commons.lang3.concurrent.BackgroundInitializer=var3624, r4=var2054, java.util.NoSuchElementException=var3900, $r5=var1345, $r6=var56, $r7=var2813, $r8=var2567, $r9=var990}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults: java.util.Map initializers>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.commons.lang3.concurrent.BackgroundInitializer) $r3;	if r4 != null goto return r4;	$r5 = new java.util.NoSuchElementException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No child initializer with name ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.util.NoSuchElementException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2