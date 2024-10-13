(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var534 0)
(declare-sort var3079 0)
(declare-sort var2303 0)
(declare-sort var2704 0)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toPropertiesString/-1547681379 (var534) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3079_getShortClassNameOfObject/-1665341662 (var2303) String)
(declare-fun cast-from-var534-to-var2303 (var534) var2303)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2704_identityHashCode/1096208673 (var2303) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun incompatibleImprovements/-302782480 (var534) var1341)
(declare-fun append/-1031950772 (String var2303) String)
(declare-fun cast-from-var1341-to-var2303 (var1341) var2303)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var534 var534)
(declare-const var868 var534) ; Statement: r0 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var868 null-var534)))
(assert true)
(define-const var1582 String (toPropertiesString/-1547681379 var868)) ; Statement: r1 = virtualinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.String toPropertiesString()>() 
(define-const var1542 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1542)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1542!1 String)
(assert (= var1542!1 ""))
(define-const var3715 String (var3079_getShortClassNameOfObject/-1665341662 (cast-from-var534-to-var2303 var868))) ; Statement: $r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0) 
(assert true)
(define-const var796 String (append/672562846 var1542!1 var3715)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1542!2 String)
(assert (= var1542!2 (str.++ var1542!1 var3715)))
(assert true)
(define-const var3852 String (append/672562846 var796 "@")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 "@")))
(define-const var3197 Int (var2704_identityHashCode/1096208673 (cast-from-var534-to-var2303 var868))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var3241 String (append/-1001720160 var3852 var3197)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3852!1 String)
(assert (str.prefixof var3852 var3852!1))
(assert true)
(define-const var2126 String (append/672562846 var3241 "(")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3241!1 String)
(assert (= var3241!1 (str.++ var3241 "(")))
(define-const var206 var1341 (incompatibleImprovements/-302782480 var868)) ; Statement: $r7 = r0.<freemarker.ext.beans.BeansWrapper: freemarker.template.Version incompatibleImprovements> 
(assert true)
(define-const var2102 String (append/-1031950772 var2126 (cast-from-var1341-to-var2303 var206))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2126!1 String)
(assert (str.prefixof var2126 var2126!1))
(assert true)
(define-const var1359 String (append/672562846 var2102 ", ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2102!1 String)
(assert (= var2102!1 (str.++ var2102 ", ")))
(assert true)
(define-const var1942 Int (length/-134980193 var1582)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 == 0 goto $r17 = "" 
(assert (= var1942 0)) ; Cond: $i1 == 0 
(define-const var1382 String "") ; Statement: $r17 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3129 String (append/672562846 var1359 var1382)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1359!1 String)
(assert (= var1359!1 (str.++ var1359 var1382)))
(assert true)
(define-const var2149 String (append/672562846 var3129 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3129!1 String)
(assert (= var3129!1 (str.++ var3129 ")")))
(assert true)
(define-const var2622 String (toString/-2075883882 var2149)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {toPropertiesString/-1547681379=([freemarker.ext.beans.BeansWrapper], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3079_getShortClassNameOfObject/-1665341662=([java.lang.Object], java.lang.String), cast-from-var534-to-var2303=([freemarker.ext.beans.BeansWrapper], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2704_identityHashCode/1096208673=([java.lang.Object], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), incompatibleImprovements/-302782480=([freemarker.ext.beans.BeansWrapper], freemarker.template.Version), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1341-to-var2303=([freemarker.template.Version], java.lang.Object), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var534=freemarker.ext.beans.BeansWrapper, var868=r0, var1582=r1, var1542=$r2, var3079=freemarker.template.utility.ClassUtil, var2303=java.lang.Object, var3715=$r3, var796=$r4, var3852=$r5, var2704=java.lang.System, var3197=$i0, var3241=$r6, var2126=$r8, var1341=freemarker.template.Version, var206=$r7, var2102=$r9, var1359=$r10, var1942=$i1, var1382=$r17, var3129=$r11, var2149=$r12, var2622=$r13}
; {freemarker.ext.beans.BeansWrapper=var534, r0=var868, r1=var1582, $r2=var1542, freemarker.template.utility.ClassUtil=var3079, java.lang.Object=var2303, $r3=var3715, $r4=var796, $r5=var3852, java.lang.System=var2704, $i0=var3197, $r6=var3241, $r8=var2126, freemarker.template.Version=var1341, $r7=var206, $r9=var2102, $r10=var1359, $i1=var1942, $r17=var1382, $r11=var3129, $r12=var2149, $r13=var2622}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.BeansWrapper;	r1 = virtualinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.String toPropertiesString()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r7 = r0.<freemarker.ext.beans.BeansWrapper: freemarker.template.Version incompatibleImprovements>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 == 0 goto $r17 = "";	$r17 = "";	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3