(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2895 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun acceptLarger/1068282467 (var2895) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var678) String)
(declare-fun cast-from-var2895-to-var678 (var2895) var678)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/1068282467 (var2895) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2895 var2895)
(declare-const var1260 var2895) ; Statement: r0 := @this: org.apache.commons.io.filefilter.SizeFileFilter 
(assert (not (= var1260 null-var2895)))
(define-const var2622 Bool (acceptLarger/1068282467 var1260)) ; Statement: $z0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: boolean acceptLarger> 
 ; Statement: if $z0 == 0 goto $r9 = "<" 
(assert (= (ite var2622 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2404 String "<") ; Statement: $r9 = "<" 
(assert true) ; Non Conditional
(define-const var292 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var292)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var292!1 String)
(assert (= var292!1 ""))
(assert true)
(define-const var3521 String (toString/-111084316 (cast-from-var2895-to-var678 var1260))) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
(define-const var1201 String (append/672562846 var292!1 var3521)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var292!2 String)
(assert (= var292!2 (str.++ var292!1 var3521)))
(assert true)
(define-const var1235 String (append/672562846 var1201 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1201!1 String)
(assert (= var1201!1 (str.++ var1201 "(")))
(assert true)
(define-const var2921 String (append/672562846 var1235 var2404)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1235!1 String)
(assert (= var1235!1 (str.++ var1235 var2404)))
(define-const var3939 Int (size/1068282467 var1260)) ; Statement: $l0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: long size> 
(assert true)
(define-const var1754 String (append/-901862667 var2921 var3939)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2921!1 String)
(assert (str.prefixof var2921 var2921!1))
(assert true)
(define-const var1765 String (append/672562846 var1754 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1754!1 String)
(assert (= var1754!1 (str.++ var1754 ")")))
(assert true)
(define-const var2247 String (toString/-2075883882 var1765)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {acceptLarger/1068282467=([org.apache.commons.io.filefilter.SizeFileFilter], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2895-to-var678=([org.apache.commons.io.filefilter.SizeFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), size/1068282467=([org.apache.commons.io.filefilter.SizeFileFilter], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2895=org.apache.commons.io.filefilter.SizeFileFilter, var1260=r0, var2622=$z0, var2404=$r9, var292=$r1, var678=org.apache.commons.io.filefilter.AbstractFileFilter, var3521=$r2, var1201=$r3, var1235=$r4, var2921=$r5, var3939=$l0, var1754=$r6, var1765=$r7, var2247=$r8}
; {org.apache.commons.io.filefilter.SizeFileFilter=var2895, r0=var1260, $z0=var2622, $r9=var2404, $r1=var292, org.apache.commons.io.filefilter.AbstractFileFilter=var678, $r2=var3521, $r3=var1201, $r4=var1235, $r5=var2921, $l0=var3939, $r6=var1754, $r7=var1765, $r8=var2247}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.SizeFileFilter;	$z0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: boolean acceptLarger>;	if $z0 == 0 goto $r9 = "<";	$r9 = "<";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$l0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: long size>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3