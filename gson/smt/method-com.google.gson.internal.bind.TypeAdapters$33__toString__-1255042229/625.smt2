(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var520 0)
(declare-sort var1870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$base/-356231189 (var1469) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$sub/-356231189 (var1469) ClassObject)
(declare-fun val$typeAdapter/-356231189 (var1469) var520)
(declare-fun append/-1031950772 (String var1870) String)
(declare-fun cast-from-var520-to-var1870 (var520) var1870)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1469 var1469)
(declare-const var1550 var1469) ; Statement: r1 := @this: com.google.gson.internal.bind.TypeAdapters$33 
(assert (not (= var1550 null-var1469)))
(define-const var3318 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3318)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3318!1 String)
(assert (= var3318!1 ""))
(assert true)
(define-const var2002 String (append/672562846 var3318!1 "Factory[type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=") 
(declare-const var3318!2 String)
(assert (= var3318!2 (str.++ var3318!1 "Factory[type=")))
(define-const var1195 ClassObject (val$base/-356231189 var1550)) ; Statement: $r2 = r1.<com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$base> 
(assert true)
(define-const var1176 String (getName/-1958580599 var1195)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1660 String (append/672562846 var2002 var1176)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2002!1 String)
(assert (= var2002!1 (str.++ var2002 var1176)))
(assert true)
(define-const var1897 String (append/672562846 var1660 "+")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+") 
(declare-const var1660!1 String)
(assert (= var1660!1 (str.++ var1660 "+")))
(define-const var1260 ClassObject (val$sub/-356231189 var1550)) ; Statement: $r6 = r1.<com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$sub> 
(assert true)
(define-const var3821 String (getName/-1958580599 var1260)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1522 String (append/672562846 var1897 var3821)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1897!1 String)
(assert (= var1897!1 (str.++ var1897 var3821)))
(assert true)
(define-const var2766 String (append/672562846 var1522 ",adapter=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var1522!1 String)
(assert (= var1522!1 (str.++ var1522 ",adapter=")))
(define-const var959 var520 (val$typeAdapter/-356231189 var1550)) ; Statement: $r10 = r1.<com.google.gson.internal.bind.TypeAdapters$33: com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var1585 String (append/-1031950772 var2766 (cast-from-var520-to-var1870 var959))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2766!1 String)
(assert (str.prefixof var2766 var2766!1))
(assert true)
(define-const var1353 String (append/672562846 var1585 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1585!1 String)
(assert (= var1585!1 (str.++ var1585 "]")))
(assert true)
(define-const var238 String (toString/-2075883882 var1353)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$base/-356231189=([com.google.gson.internal.bind.TypeAdapters$33], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$sub/-356231189=([com.google.gson.internal.bind.TypeAdapters$33], java.lang.Class), val$typeAdapter/-356231189=([com.google.gson.internal.bind.TypeAdapters$33], com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var520-to-var1870=([com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1469=com.google.gson.internal.bind.TypeAdapters$33, var1550=r1, var3318=$r0, var2002=$r4, var1195=$r2, var1176=$r3, var1660=$r5, var1897=$r8, var1260=$r6, var3821=$r7, var1522=$r9, var2766=$r11, var520=com.google.gson.TypeAdapter, var959=$r10, var1870=java.lang.Object, var1585=$r12, var1353=$r13, var238=$r14}
; {com.google.gson.internal.bind.TypeAdapters$33=var1469, r1=var1550, $r0=var3318, $r4=var2002, $r2=var1195, $r3=var1176, $r5=var1660, $r8=var1897, $r6=var1260, $r7=var3821, $r9=var1522, $r11=var2766, com.google.gson.TypeAdapter=var520, $r10=var959, java.lang.Object=var1870, $r12=var1585, $r13=var1353, $r14=var238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.bind.TypeAdapters$33;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=");	$r2 = r1.<com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$base>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+");	$r6 = r1.<com.google.gson.internal.bind.TypeAdapters$33: java.lang.Class val$sub>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r10 = r1.<com.google.gson.internal.bind.TypeAdapters$33: com.google.gson.TypeAdapter val$typeAdapter>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1