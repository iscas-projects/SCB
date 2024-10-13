(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var392 0)
(declare-sort var547 0)
(declare-sort var3142 0)
(declare-sort var3224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lowerBound/1937425453 (var392) var547)
(declare-fun upperBound/1937425453 (var392) var547)
(declare-fun compareTo/-905745934 (var547 var547) Int)
(declare-fun var3142-init () var3142)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3224) String)
(declare-fun cast-from-var392-to-var3224 (var392) var3224)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3142 String) void)
(declare-const null-var392 var392)
(declare-const var3760 var392) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range 
(assert (not (= var3760 null-var392)))
(declare-const var1942 var392) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range 
(assert (not (= var1942 null-var392)))
(define-const var3928 var547 (lowerBound/1937425453 var3760)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound> 
(define-const var3612 var547 (upperBound/1937425453 var1942)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut upperBound> 
(assert true)
(define-const var2404 Int (compareTo/-905745934 var3928 var3612)) ; Statement: $i0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: int compareTo(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>($r2) 
 ; Statement: if $i0 >= 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound> 
(assert (not (>= var2404 0))) ; Negate: Cond: $i0 >= 0  
(define-const var354 var547 (lowerBound/1937425453 var1942)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound> 
(define-const var1909 var547 (upperBound/1937425453 var3760)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut upperBound> 
(assert true)
(define-const var35 Int (compareTo/-905745934 var354 var1909)) ; Statement: $i2 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: int compareTo(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>($r10) 
 ; Statement: if $i2 >= 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound> 
(assert (not (>= var35 0))) ; Negate: Cond: $i2 >= 0  
(define-const var1796 var3142 var3142-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var3803 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3803)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3803!1 String)
(assert (= var3803!1 ""))
(assert true)
(define-const var1227 String (append/672562846 var3803!1 "Ranges have a nonempty intersection: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ranges have a nonempty intersection: ") 
(declare-const var3803!2 String)
(assert (= var3803!2 (str.++ var3803!1 "Ranges have a nonempty intersection: ")))
(assert true)
(define-const var3477 String (append/-1031950772 var1227 (cast-from-var392-to-var3224 var3760))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1227!1 String)
(assert (str.prefixof var1227 var1227!1))
(assert true)
(define-const var3339 String (append/672562846 var3477 ", ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3477!1 String)
(assert (= var3477!1 (str.++ var3477 ", ")))
(assert true)
(define-const var2108 String (append/-1031950772 var3339 (cast-from-var392-to-var3224 var1942))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3339!1 String)
(assert (str.prefixof var3339 var3339!1))
(assert true)
(define-const var726 String (toString/-2075883882 var2108)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1796 var726)) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var1796!1 var3142)
(declare-const var726!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {lowerBound/1937425453=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), upperBound/1937425453=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), compareTo/-905745934=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], int), var3142-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var392-to-var3224=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var392=com.google.javascript.jscomp.jarjar.com.google.common.collect.Range, var3760=r0, var1942=r1, var547=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var3928=$r3, var3612=$r2, var2404=$i0, var354=$r11, var1909=$r10, var35=$i2, var3142=java.lang.IllegalArgumentException, var1796=$r12, var3803=$r13, var1227=$r14, var3224=java.lang.Object, var3477=$r15, var3339=$r16, var2108=$r17, var726=$r18}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Range=var392, r0=var3760, r1=var1942, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var547, $r3=var3928, $r2=var3612, $i0=var2404, $r11=var354, $r10=var1909, $i2=var35, java.lang.IllegalArgumentException=var3142, $r12=var1796, $r13=var3803, $r14=var1227, java.lang.Object=var3224, $r15=var3477, $r16=var3339, $r17=var2108, $r18=var726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut upperBound>;	$i0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: int compareTo(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>($r2);	if $i0 >= 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound>;	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound>;	$r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut upperBound>;	$i2 = virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: int compareTo(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>($r10);	if $i2 >= 0 goto $r5 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound>;	$r12 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Ranges have a nonempty intersection: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r12
;block_num 3