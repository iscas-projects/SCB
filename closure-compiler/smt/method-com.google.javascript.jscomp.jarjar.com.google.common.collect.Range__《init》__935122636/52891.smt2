(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2423 0)
(declare-sort var2914 0)
(declare-sort var3441 0)
(declare-sort var1986 0)
(declare-sort var1364 0)
(declare-sort var2814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-312429589 (var3441) void)
(declare-fun cast-from-var2423-to-var3441 (var2423) var3441)
(declare-fun var1364_checkNotNull/1446102589 (var1986) var1986)
(declare-fun cast-from-var2914-to-var1986 (var2914) var1986)
(declare-fun cast-from-var1986-to-var2914 (var1986) var2914)
(declare-fun lowerBound/1937425453 (var2423) var2914)
(declare-fun upperBound/1937425453 (var2423) var2914)
(declare-fun compareTo/-905745934 (var2914 var2914) Int)
(declare-fun var2814-init () var2814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2423_toString/1395850133 (var2914 var2914) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2814 String) void)
(declare-const null-var2423 var2423)
(declare-const null-var2914 var2914)
(declare-const var835 var2423) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range 
(assert (not (= var835 null-var2423)))
(declare-const var1045 var2914) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut 
(assert (not (= var1045 null-var2914)))
(declare-const var1853 var2914) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut 
(assert (not (= var1853 null-var2914)))
(assert true)
;(assert (<init>/-312429589 (cast-from-var2423-to-var3441 var835))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.RangeGwtSerializationDependencies: void <init>()>() 

(declare-const var835!1 var2423)
(define-const var1302 var1986 (var1364_checkNotNull/1446102589 (cast-from-var2914-to-var1986 var1045))) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 
(define-const var536 var2914 (cast-from-var1986-to-var2914 var1302)) ; Statement: $r3 = (com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut) $r2 
(declare-const var835!2 var2423)
(assert (not (= var835!2 null-var2423)))
(assert (= (lowerBound/1937425453 var835!2) var536)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound> = $r3 
(define-const var2195 var1986 (var1364_checkNotNull/1446102589 (cast-from-var2914-to-var1986 var1853))) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r4) 
(define-const var342 var2914 (cast-from-var1986-to-var2914 var2195)) ; Statement: $r6 = (com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut) $r5 
(declare-const var835!3 var2423)
(assert (not (= var835!3 null-var2423)))
(assert (= (upperBound/1937425453 var835!3) var342)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut upperBound> = $r6 
(assert true)
(define-const var977 Int (compareTo/-905745934 var1045 var1853)) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: int compareTo(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>(r4) 
 ; Statement: if $i0 > 0 goto $r9 = new java.lang.IllegalArgumentException 
(assert (> var977 0)) ; Cond: $i0 > 0 
(define-const var1632 var2814 var2814-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3154 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3154)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3154!1 String)
(assert (= var3154!1 ""))
(assert true)
(define-const var3387 String (append/672562846 var3154!1 "Invalid range: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid range: ") 
(declare-const var3154!2 String)
(assert (= var3154!2 (str.++ var3154!1 "Invalid range: ")))
(define-const var419 String (var2423_toString/1395850133 var1045 var1853)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: java.lang.String toString(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut,com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>(r1, r4) 
(assert true)
(define-const var1924 String (append/672562846 var3387 var419)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3387!1 String)
(assert (= var3387!1 (str.++ var3387 var419)))
(assert true)
(define-const var3202 String (toString/-2075883882 var1924)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1632 var3202)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var1632!1 var2814)
(declare-const var3202!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-312429589=([com.google.javascript.jscomp.jarjar.com.google.common.collect.RangeGwtSerializationDependencies], void), cast-from-var2423-to-var3441=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], com.google.javascript.jscomp.jarjar.com.google.common.collect.RangeGwtSerializationDependencies), var1364_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2914-to-var1986=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.Object), cast-from-var1986-to-var2914=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), lowerBound/1937425453=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), upperBound/1937425453=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut), compareTo/-905745934=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], int), var2814-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2423_toString/1395850133=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2423=com.google.javascript.jscomp.jarjar.com.google.common.collect.Range, var835=r0, var2914=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut, var1045=r1, var1853=r4, var3441=com.google.javascript.jscomp.jarjar.com.google.common.collect.RangeGwtSerializationDependencies, var1986=java.lang.Object, var1364=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1302=$r2, var536=$r3, var2195=$r5, var342=$r6, var977=$i0, var2814=java.lang.IllegalArgumentException, var1632=$r9, var3154=$r10, var3387=$r11, var419=$r12, var1924=$r13, var3202=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Range=var2423, r0=var835, com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut=var2914, r1=var1045, r4=var1853, com.google.javascript.jscomp.jarjar.com.google.common.collect.RangeGwtSerializationDependencies=var3441, java.lang.Object=var1986, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1364, $r2=var1302, $r3=var536, $r5=var2195, $r6=var342, $i0=var977, java.lang.IllegalArgumentException=var2814, $r9=var1632, $r10=var3154, $r11=var3387, $r12=var419, $r13=var1924, $r14=var3202}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: java.lang.String toString(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut,com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut;	r4 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.RangeGwtSerializationDependencies: void <init>()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r3 = (com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut) $r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut lowerBound> = $r3;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r4);	$r6 = (com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut) $r5;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut upperBound> = $r6;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut: int compareTo(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>(r4);	if $i0 > 0 goto $r9 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid range: ");	$r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Range: java.lang.String toString(com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut,com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut)>(r1, r4);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 2