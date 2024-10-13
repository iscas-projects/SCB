(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var145 0)
(declare-sort var2684 0)
(declare-sort var655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2684) String)
(declare-fun cast-from-var145-to-var2684 (var145) var2684)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var655-init () var655)
(declare-fun <init>/-1092629202 (var655 String) void)
(declare-const null-var145 var145)
(declare-const null-Bool Bool)
(declare-const var2290 var145) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var2290 null-var145)))
(declare-const var188 var145) ; Statement: r4 := @parameter1: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var188 null-var145)))
(declare-const var91 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var91 null-Bool)))
(define-const var287 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var287)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var287!1 String)
(assert (= var287!1 ""))
(assert true)
(define-const var2633 String (append/672562846 var287!1 "Cannot get a ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ") 
(declare-const var287!2 String)
(assert (= var287!2 (str.++ var287!1 "Cannot get a ")))
(assert true)
(define-const var1776 String (append/-1031950772 var2633 (cast-from-var145-to-var2684 var2290))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2633!1 String)
(assert (str.prefixof var2633 var2633!1))
(assert true)
(define-const var796 String (append/672562846 var1776 " value from a ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ") 
(declare-const var1776!1 String)
(assert (= var1776!1 (str.++ var1776 " value from a ")))
(assert true)
(define-const var3641 String (append/-1031950772 var796 (cast-from-var145-to-var2684 var188))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var796!1 String)
(assert (str.prefixof var796 var796!1))
(assert true)
(define-const var1737 String (append/672562846 var3641 " ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3641!1 String)
(assert (= var3641!1 (str.++ var3641 " ")))
 ; Statement: if z0 == 0 goto $r12 = "" 
(assert (not (= (ite var91 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1372 String "formula ") ; Statement: $r12 = "formula " 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var277 String (append/672562846 var1737 var1372)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1737!1 String)
(assert (= var1737!1 (str.++ var1737 var1372)))
(assert true)
(define-const var3199 String (append/672562846 var277 "cell")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell") 
(declare-const var277!1 String)
(assert (= var277!1 (str.++ var277 "cell")))
(assert true)
(define-const var2359 String (toString/-2075883882 var3199)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var12 var655 var655-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var12 var2359)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var12!1 var655)
(declare-const var2359!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var145-to-var2684=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var655-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var145=org.apache.poi.ss.usermodel.CellType, var2290=r1, var188=r4, var91=z0, var287=$r0, var2633=$r2, var2684=java.lang.Object, var1776=$r3, var796=$r5, var3641=$r6, var1737=$r7, var1372=$r12, var277=$r8, var3199=$r9, var2359=$r11, var655=java.lang.IllegalStateException, var12=$r10}
; {org.apache.poi.ss.usermodel.CellType=var145, r1=var2290, r4=var188, z0=var91, $r0=var287, $r2=var2633, java.lang.Object=var2684, $r3=var1776, $r5=var796, $r6=var3641, $r7=var1737, $r12=var1372, $r8=var277, $r9=var3199, $r11=var2359, java.lang.IllegalStateException=var655, $r10=var12}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.poi.ss.usermodel.CellType;	r4 := @parameter1: org.apache.poi.ss.usermodel.CellType;	z0 := @parameter2: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get a ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value from a ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	if z0 == 0 goto $r12 = "";	$r12 = "formula ";	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cell");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalStateException;	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	return $r10
;block_num 3