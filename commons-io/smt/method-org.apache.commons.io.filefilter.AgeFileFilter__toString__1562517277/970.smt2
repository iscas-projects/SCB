(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2343 0)
(declare-sort var3426 0)
(declare-sort var1429 0)
(declare-sort var1681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun acceptOlder/-1251526331 (var2343) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var3426) String)
(declare-fun cast-from-var2343-to-var3426 (var2343) var3426)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cutoffInstant/-1251526331 (var2343) var1429)
(declare-fun append/-1031950772 (String var1681) String)
(declare-fun cast-from-var1429-to-var1681 (var1429) var1681)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2343 var2343)
(declare-const var1226 var2343) ; Statement: r0 := @this: org.apache.commons.io.filefilter.AgeFileFilter 
(assert (not (= var1226 null-var2343)))
(define-const var3521 Bool (acceptOlder/-1251526331 var1226)) ; Statement: $z0 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: boolean acceptOlder> 
 ; Statement: if $z0 == 0 goto $r10 = ">" 
(assert (not (= (ite var3521 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2775 String "<=") ; Statement: $r10 = "<=" 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var361 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var361)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var361!1 String)
(assert (= var361!1 ""))
(assert true)
(define-const var3372 String (toString/-111084316 (cast-from-var2343-to-var3426 var1226))) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
(define-const var1736 String (append/672562846 var361!1 var3372)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var361!2 String)
(assert (= var361!2 (str.++ var361!1 var3372)))
(assert true)
(define-const var3864 String (append/672562846 var1736 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1736!1 String)
(assert (= var1736!1 (str.++ var1736 "(")))
(assert true)
(define-const var2557 String (append/672562846 var3864 var2775)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3864!1 String)
(assert (= var3864!1 (str.++ var3864 var2775)))
(define-const var2797 var1429 (cutoffInstant/-1251526331 var1226)) ; Statement: $r5 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: java.time.Instant cutoffInstant> 
(assert true)
(define-const var640 String (append/-1031950772 var2557 (cast-from-var1429-to-var1681 var2797))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2557!1 String)
(assert (str.prefixof var2557 var2557!1))
(assert true)
(define-const var1948 String (append/672562846 var640 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var640!1 String)
(assert (= var640!1 (str.++ var640 ")")))
(assert true)
(define-const var291 String (toString/-2075883882 var1948)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {acceptOlder/-1251526331=([org.apache.commons.io.filefilter.AgeFileFilter], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2343-to-var3426=([org.apache.commons.io.filefilter.AgeFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cutoffInstant/-1251526331=([org.apache.commons.io.filefilter.AgeFileFilter], java.time.Instant), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1429-to-var1681=([java.time.Instant], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2343=org.apache.commons.io.filefilter.AgeFileFilter, var1226=r0, var3521=$z0, var2775=$r10, var361=$r1, var3426=org.apache.commons.io.filefilter.AbstractFileFilter, var3372=$r2, var1736=$r3, var3864=$r4, var2557=$r6, var1429=java.time.Instant, var2797=$r5, var1681=java.lang.Object, var640=$r7, var1948=$r8, var291=$r9}
; {org.apache.commons.io.filefilter.AgeFileFilter=var2343, r0=var1226, $z0=var3521, $r10=var2775, $r1=var361, org.apache.commons.io.filefilter.AbstractFileFilter=var3426, $r2=var3372, $r3=var1736, $r4=var3864, $r6=var2557, java.time.Instant=var1429, $r5=var2797, java.lang.Object=var1681, $r7=var640, $r8=var1948, $r9=var291}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.AgeFileFilter;	$z0 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: boolean acceptOlder>;	if $z0 == 0 goto $r10 = ">";	$r10 = "<=";	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r5 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: java.time.Instant cutoffInstant>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3