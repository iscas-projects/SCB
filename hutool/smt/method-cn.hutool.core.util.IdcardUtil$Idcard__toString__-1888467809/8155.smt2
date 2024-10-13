(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1869 0)
(declare-sort var1197 0)
(declare-sort var2091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun provinceCode/1693110335 (var1869) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cityCode/1693110335 (var1869) String)
(declare-fun birthDate/1693110335 (var1869) var1197)
(declare-fun append/-1031950772 (String var2091) String)
(declare-fun cast-from-var1197-to-var2091 (var1197) var2091)
(declare-fun gender/1693110335 (var1869) Int)
(declare-fun cast-from-Int-to-var2091 (Int) var2091)
(declare-fun age/1693110335 (var1869) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1869 var1869)
(declare-const var130 var1869) ; Statement: r1 := @this: cn.hutool.core.util.IdcardUtil$Idcard 
(assert (not (= var130 null-var1869)))
(define-const var1275 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1275)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1275!1 String)
(assert (= var1275!1 ""))
(assert true)
(define-const var1908 String (append/672562846 var1275!1 "Idcard{provinceCode=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Idcard{provinceCode=\'") 
(declare-const var1275!2 String)
(assert (= var1275!2 (str.++ var1275!1 "Idcard{provinceCode=\u0027")))
(define-const var3004 String (provinceCode/1693110335 var130)) ; Statement: $r2 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: java.lang.String provinceCode> 
(assert true)
(define-const var3624 String (append/672562846 var1908 var3004)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1908!1 String)
(assert (= var1908!1 (str.++ var1908 var3004)))
(assert true)
(define-const var1458 String (append/-1166366385 var3624 39)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3624!1 String)
(assert (str.prefixof var3624 var3624!1))
(assert true)
(define-const var2217 String (append/672562846 var1458 ", cityCode=\u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cityCode=\'") 
(declare-const var1458!1 String)
(assert (= var1458!1 (str.++ var1458 ", cityCode=\u0027")))
(define-const var3962 String (cityCode/1693110335 var130)) ; Statement: $r6 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: java.lang.String cityCode> 
(assert true)
(define-const var3069 String (append/672562846 var2217 var3962)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2217!1 String)
(assert (= var2217!1 (str.++ var2217 var3962)))
(assert true)
(define-const var110 String (append/-1166366385 var3069 39)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3069!1 String)
(assert (str.prefixof var3069 var3069!1))
(assert true)
(define-const var507 String (append/672562846 var110 ", birthDate=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", birthDate=") 
(declare-const var110!1 String)
(assert (= var110!1 (str.++ var110 ", birthDate=")))
(define-const var590 var1197 (birthDate/1693110335 var130)) ; Statement: $r10 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: cn.hutool.core.date.DateTime birthDate> 
(assert true)
(define-const var3778 String (append/-1031950772 var507 (cast-from-var1197-to-var2091 var590))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var507!1 String)
(assert (str.prefixof var507 var507!1))
(assert true)
(define-const var442 String (append/672562846 var3778 ", gender=")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", gender=") 
(declare-const var3778!1 String)
(assert (= var3778!1 (str.++ var3778 ", gender=")))
(define-const var2028 Int (gender/1693110335 var130)) ; Statement: $r13 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: java.lang.Integer gender> 
(assert true)
(define-const var3955 String (append/-1031950772 var442 (cast-from-Int-to-var2091 var2028))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var442!1 String)
(assert (str.prefixof var442 var442!1))
(assert true)
(define-const var3251 String (append/672562846 var3955 ", age=")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", age=") 
(declare-const var3955!1 String)
(assert (= var3955!1 (str.++ var3955 ", age=")))
(define-const var3698 Int (age/1693110335 var130)) ; Statement: $i0 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: int age> 
(assert true)
(define-const var3428 String (append/-1001720160 var3251 var3698)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3251!1 String)
(assert (str.prefixof var3251 var3251!1))
(assert true)
(define-const var3665 String (append/-1166366385 var3428 125)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3428!1 String)
(assert (str.prefixof var3428 var3428!1))
(assert true)
(define-const var910 String (toString/-2075883882 var3665)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), provinceCode/1693110335=([cn.hutool.core.util.IdcardUtil$Idcard], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cityCode/1693110335=([cn.hutool.core.util.IdcardUtil$Idcard], java.lang.String), birthDate/1693110335=([cn.hutool.core.util.IdcardUtil$Idcard], cn.hutool.core.date.DateTime), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1197-to-var2091=([cn.hutool.core.date.DateTime], java.lang.Object), gender/1693110335=([cn.hutool.core.util.IdcardUtil$Idcard], java.lang.Integer), cast-from-Int-to-var2091=([java.lang.Integer], java.lang.Object), age/1693110335=([cn.hutool.core.util.IdcardUtil$Idcard], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1869=cn.hutool.core.util.IdcardUtil$Idcard, var130=r1, var1275=$r0, var1908=$r3, var3004=$r2, var3624=$r4, var1458=$r5, var2217=$r7, var3962=$r6, var3069=$r8, var110=$r9, var507=$r11, var1197=cn.hutool.core.date.DateTime, var590=$r10, var2091=java.lang.Object, var3778=$r12, var442=$r14, var2028=$r13, var3955=$r15, var3251=$r16, var3698=$i0, var3428=$r17, var3665=$r18, var910=$r19}
; {cn.hutool.core.util.IdcardUtil$Idcard=var1869, r1=var130, $r0=var1275, $r3=var1908, $r2=var3004, $r4=var3624, $r5=var1458, $r7=var2217, $r6=var3962, $r8=var3069, $r9=var110, $r11=var507, cn.hutool.core.date.DateTime=var1197, $r10=var590, java.lang.Object=var2091, $r12=var3778, $r14=var442, $r13=var2028, $r15=var3955, $r16=var3251, $i0=var3698, $r17=var3428, $r18=var3665, $r19=var910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.util.IdcardUtil$Idcard;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Idcard{provinceCode=\'");	$r2 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: java.lang.String provinceCode>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cityCode=\'");	$r6 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: java.lang.String cityCode>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", birthDate=");	$r10 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: cn.hutool.core.date.DateTime birthDate>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", gender=");	$r13 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: java.lang.Integer gender>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", age=");	$i0 = r1.<cn.hutool.core.util.IdcardUtil$Idcard: int age>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 1