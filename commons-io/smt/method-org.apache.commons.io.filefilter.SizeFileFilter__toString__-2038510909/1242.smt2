(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2310 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun acceptLarger/1068282467 (var2310) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var213) String)
(declare-fun cast-from-var2310-to-var213 (var2310) var213)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/1068282467 (var2310) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2310 var2310)
(declare-const var3788 var2310) ; Statement: r0 := @this: org.apache.commons.io.filefilter.SizeFileFilter 
(assert (not (= var3788 null-var2310)))
(define-const var1968 Bool (acceptLarger/1068282467 var3788)) ; Statement: $z0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: boolean acceptLarger> 
 ; Statement: if $z0 == 0 goto $r9 = "<" 
(assert (not (= (ite var1968 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2883 String ">=") ; Statement: $r9 = ">=" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1477 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1477)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1477!1 String)
(assert (= var1477!1 ""))
(assert true)
(define-const var3215 String (toString/-111084316 (cast-from-var2310-to-var213 var3788))) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
(define-const var2305 String (append/672562846 var1477!1 var3215)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1477!2 String)
(assert (= var1477!2 (str.++ var1477!1 var3215)))
(assert true)
(define-const var867 String (append/672562846 var2305 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2305!1 String)
(assert (= var2305!1 (str.++ var2305 "(")))
(assert true)
(define-const var3747 String (append/672562846 var867 var2883)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var867!1 String)
(assert (= var867!1 (str.++ var867 var2883)))
(define-const var2010 Int (size/1068282467 var3788)) ; Statement: $l0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: long size> 
(assert true)
(define-const var3429 String (append/-901862667 var3747 var2010)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3747!1 String)
(assert (str.prefixof var3747 var3747!1))
(assert true)
(define-const var245 String (append/672562846 var3429 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3429!1 String)
(assert (= var3429!1 (str.++ var3429 ")")))
(assert true)
(define-const var3370 String (toString/-2075883882 var245)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {acceptLarger/1068282467=([org.apache.commons.io.filefilter.SizeFileFilter], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2310-to-var213=([org.apache.commons.io.filefilter.SizeFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), size/1068282467=([org.apache.commons.io.filefilter.SizeFileFilter], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2310=org.apache.commons.io.filefilter.SizeFileFilter, var3788=r0, var1968=$z0, var2883=$r9, var1477=$r1, var213=org.apache.commons.io.filefilter.AbstractFileFilter, var3215=$r2, var2305=$r3, var867=$r4, var3747=$r5, var2010=$l0, var3429=$r6, var245=$r7, var3370=$r8}
; {org.apache.commons.io.filefilter.SizeFileFilter=var2310, r0=var3788, $z0=var1968, $r9=var2883, $r1=var1477, org.apache.commons.io.filefilter.AbstractFileFilter=var213, $r2=var3215, $r3=var2305, $r4=var867, $r5=var3747, $l0=var2010, $r6=var3429, $r7=var245, $r8=var3370}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.SizeFileFilter;	$z0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: boolean acceptLarger>;	if $z0 == 0 goto $r9 = "<";	$r9 = ">=";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$l0 = r0.<org.apache.commons.io.filefilter.SizeFileFilter: long size>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3