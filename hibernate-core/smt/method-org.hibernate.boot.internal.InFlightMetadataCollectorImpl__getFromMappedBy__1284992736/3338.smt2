(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1586 0)
(declare-sort var3653 0)
(declare-sort var2713 0)
(declare-sort var3331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mappedByResolver/1317447214 (var1586) var2713)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2713_get/1088891777 (var2713 var3331) var3331)
(declare-fun cast-from-String-to-var3331 (String) var3331)
(declare-fun cast-from-var3331-to-String (var3331) String)
(declare-const null-var1586 var1586)
(declare-const null-String String)
(declare-const null-var2713 var2713)
(declare-const var2059 var1586) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var2059 null-var1586)))
(declare-const var3450 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3450 null-String)))
(declare-const var1632 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1632 null-String)))
(define-const var179 var2713 (mappedByResolver/1317447214 var2059)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver> 
(assert (not (= var179 null-var2713))) ; Cond: $r1 != null 
(define-const var233 var2713 (mappedByResolver/1317447214 var2059)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver> 
(define-const var3130 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3130)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3130!1 String)
(assert (= var3130!1 ""))
(assert true)
(define-const var1047 String (append/672562846 var3130!1 var3450)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3130!2 String)
(assert (= var3130!2 (str.++ var3130!1 var3450)))
(assert true)
(define-const var1465 String (append/672562846 var1047 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1047!1 String)
(assert (= var1047!1 (str.++ var1047 ".")))
(assert true)
(define-const var3235 String (append/672562846 var1465 var1632)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1465!1 String)
(assert (= var1465!1 (str.++ var1465 var1632)))
(assert true)
(define-const var175 String (toString/-2075883882 var3235)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1022 var3331 (var2713_get/1088891777 var233 (cast-from-String-to-var3331 var175))) ; Statement: $r10 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r9) 
(define-const var3357 String (cast-from-var3331-to-String var1022)) ; Statement: $r11 = (java.lang.String) $r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {mappedByResolver/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2713_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3331=([java.lang.String], java.lang.Object), cast-from-var3331-to-String=([java.lang.Object], java.lang.String)}
; {var1586=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var2059=r0, var3450=r4, var3653=null_type, var1632=r6, var2713=java.util.Map, var179=$r1, var233=$r3, var3130=$r2, var1047=$r5, var1465=$r7, var3235=$r8, var175=$r9, var3331=java.lang.Object, var1022=$r10, var3357=$r11}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var1586, r0=var2059, r4=var3450, null_type=var3653, r6=var1632, java.util.Map=var2713, $r1=var179, $r3=var233, $r2=var3130, $r5=var1047, $r7=var1465, $r8=var3235, $r9=var175, java.lang.Object=var3331, $r10=var1022, $r11=var3357}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r4 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver>;	$r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map mappedByResolver>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r9);	$r11 = (java.lang.String) $r10;	return $r11
;block_num 2