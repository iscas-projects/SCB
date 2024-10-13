(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var3742 0)
(declare-sort var859 0)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun acceptOlder/-1251526331 (var122) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var3742) String)
(declare-fun cast-from-var122-to-var3742 (var122) var3742)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cutoffInstant/-1251526331 (var122) var859)
(declare-fun append/-1031950772 (String var2900) String)
(declare-fun cast-from-var859-to-var2900 (var859) var2900)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var122 var122)
(declare-const var1656 var122) ; Statement: r0 := @this: org.apache.commons.io.filefilter.AgeFileFilter 
(assert (not (= var1656 null-var122)))
(define-const var575 Bool (acceptOlder/-1251526331 var1656)) ; Statement: $z0 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: boolean acceptOlder> 
 ; Statement: if $z0 == 0 goto $r10 = ">" 
(assert (= (ite var575 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2583 String ">") ; Statement: $r10 = ">" 
(assert true) ; Non Conditional
(define-const var2453 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2453)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2453!1 String)
(assert (= var2453!1 ""))
(assert true)
(define-const var1142 String (toString/-111084316 (cast-from-var122-to-var3742 var1656))) ; Statement: $r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
(define-const var1325 String (append/672562846 var2453!1 var1142)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2453!2 String)
(assert (= var2453!2 (str.++ var2453!1 var1142)))
(assert true)
(define-const var1402 String (append/672562846 var1325 "(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1325!1 String)
(assert (= var1325!1 (str.++ var1325 "(")))
(assert true)
(define-const var2417 String (append/672562846 var1402 var2583)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1402!1 String)
(assert (= var1402!1 (str.++ var1402 var2583)))
(define-const var655 var859 (cutoffInstant/-1251526331 var1656)) ; Statement: $r5 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: java.time.Instant cutoffInstant> 
(assert true)
(define-const var1310 String (append/-1031950772 var2417 (cast-from-var859-to-var2900 var655))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2417!1 String)
(assert (str.prefixof var2417 var2417!1))
(assert true)
(define-const var3982 String (append/672562846 var1310 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1310!1 String)
(assert (= var1310!1 (str.++ var1310 ")")))
(assert true)
(define-const var1896 String (toString/-2075883882 var3982)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {acceptOlder/-1251526331=([org.apache.commons.io.filefilter.AgeFileFilter], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var122-to-var3742=([org.apache.commons.io.filefilter.AgeFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cutoffInstant/-1251526331=([org.apache.commons.io.filefilter.AgeFileFilter], java.time.Instant), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var859-to-var2900=([java.time.Instant], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var122=org.apache.commons.io.filefilter.AgeFileFilter, var1656=r0, var575=$z0, var2583=$r10, var2453=$r1, var3742=org.apache.commons.io.filefilter.AbstractFileFilter, var1142=$r2, var1325=$r3, var1402=$r4, var2417=$r6, var859=java.time.Instant, var655=$r5, var2900=java.lang.Object, var1310=$r7, var3982=$r8, var1896=$r9}
; {org.apache.commons.io.filefilter.AgeFileFilter=var122, r0=var1656, $z0=var575, $r10=var2583, $r1=var2453, org.apache.commons.io.filefilter.AbstractFileFilter=var3742, $r2=var1142, $r3=var1325, $r4=var1402, $r6=var2417, java.time.Instant=var859, $r5=var655, java.lang.Object=var2900, $r7=var1310, $r8=var3982, $r9=var1896}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.AgeFileFilter;	$z0 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: boolean acceptOlder>;	if $z0 == 0 goto $r10 = ">";	$r10 = ">";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r5 = r0.<org.apache.commons.io.filefilter.AgeFileFilter: java.time.Instant cutoffInstant>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3