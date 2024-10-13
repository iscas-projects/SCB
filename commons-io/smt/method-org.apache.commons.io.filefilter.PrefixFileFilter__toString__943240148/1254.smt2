(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2837 0)
(declare-sort var3206 0)
(declare-sort var1249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var3206) String)
(declare-fun cast-from-var2837-to-var3206 (var2837) var3206)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun prefixes/500899892 (var2837) (Array Int String))
(declare-fun append/425180388 (var3206 (Array Int var1249) String) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1249__ ((Array Int String)) (Array Int var1249))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2837 var2837)
(declare-const var1396 var2837) ; Statement: r1 := @this: org.apache.commons.io.filefilter.PrefixFileFilter 
(assert (not (= var1396 null-var2837)))
(define-const var1659 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var603 String (toString/-111084316 (cast-from-var2837-to-var3206 var1396))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1659!1 var603)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 var603)))
(assert true)
;(assert (append/672562846 var1659!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1659!3 String)
(assert (= var1659!3 (str.++ var1659!2 "(")))
(define-const var2512 (Array Int String) (prefixes/500899892 var1396)) ; Statement: $r3 = r1.<org.apache.commons.io.filefilter.PrefixFileFilter: java.lang.String[] prefixes> 
(assert true)
;(assert (append/425180388 (cast-from-var2837-to-var3206 var1396) (cast-from-__Array__Int__String__-to-__Array__Int__var1249__ var2512) var1659!3)) ; Statement: virtualinvoke r1.<org.apache.commons.io.filefilter.PrefixFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0) 

(declare-const var1396!1 var2837)
(declare-const var2512!1 (Array Int String))
(declare-const var1659!4 String)
(assert true)
;(assert (append/672562846 var1659!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1659!5 String)
(assert (= var1659!5 (str.++ var1659!4 ")")))
(assert true)
(define-const var21 String (toString/-2075883882 var1659!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2837-to-var3206=([org.apache.commons.io.filefilter.PrefixFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), prefixes/500899892=([org.apache.commons.io.filefilter.PrefixFileFilter], java.lang.String[]), append/425180388=([org.apache.commons.io.filefilter.AbstractFileFilter, java.lang.Object[], java.lang.StringBuilder], void), cast-from-__Array__Int__String__-to-__Array__Int__var1249__=([java.lang.String[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2837=org.apache.commons.io.filefilter.PrefixFileFilter, var1396=r1, var1659=$r0, var3206=org.apache.commons.io.filefilter.AbstractFileFilter, var603=$r2, var2512=$r3, var1249=java.lang.Object, var21=$r4}
; {org.apache.commons.io.filefilter.PrefixFileFilter=var2837, r1=var1396, $r0=var1659, org.apache.commons.io.filefilter.AbstractFileFilter=var3206, $r2=var603, $r3=var2512, java.lang.Object=var1249, $r4=var21}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.PrefixFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.commons.io.filefilter.PrefixFileFilter: java.lang.String[] prefixes>;	virtualinvoke r1.<org.apache.commons.io.filefilter.PrefixFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1