(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2308 0)
(declare-sort var1056 0)
(declare-sort var2264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var1056) String)
(declare-fun cast-from-var2308-to-var1056 (var2308) var1056)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun wildcards/713418236 (var2308) (Array Int String))
(declare-fun append/425180388 (var1056 (Array Int var2264) String) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2264__ ((Array Int String)) (Array Int var2264))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2308 var2308)
(declare-const var1078 var2308) ; Statement: r1 := @this: org.apache.commons.io.filefilter.WildcardFileFilter 
(assert (not (= var1078 null-var2308)))
(define-const var2763 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2763)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2763!1 String)
(assert (= var2763!1 ""))
(assert true)
(define-const var695 String (toString/-111084316 (cast-from-var2308-to-var1056 var1078))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2763!1 var695)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2763!2 String)
(assert (= var2763!2 (str.++ var2763!1 var695)))
(assert true)
;(assert (append/672562846 var2763!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2763!3 String)
(assert (= var2763!3 (str.++ var2763!2 "(")))
(define-const var2855 (Array Int String) (wildcards/713418236 var1078)) ; Statement: $r3 = r1.<org.apache.commons.io.filefilter.WildcardFileFilter: java.lang.String[] wildcards> 
(assert true)
;(assert (append/425180388 (cast-from-var2308-to-var1056 var1078) (cast-from-__Array__Int__String__-to-__Array__Int__var2264__ var2855) var2763!3)) ; Statement: virtualinvoke r1.<org.apache.commons.io.filefilter.WildcardFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0) 

(declare-const var1078!1 var2308)
(declare-const var2855!1 (Array Int String))
(declare-const var2763!4 String)
(assert true)
;(assert (append/672562846 var2763!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2763!5 String)
(assert (= var2763!5 (str.++ var2763!4 ")")))
(assert true)
(define-const var1263 String (toString/-2075883882 var2763!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2308-to-var1056=([org.apache.commons.io.filefilter.WildcardFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), wildcards/713418236=([org.apache.commons.io.filefilter.WildcardFileFilter], java.lang.String[]), append/425180388=([org.apache.commons.io.filefilter.AbstractFileFilter, java.lang.Object[], java.lang.StringBuilder], void), cast-from-__Array__Int__String__-to-__Array__Int__var2264__=([java.lang.String[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2308=org.apache.commons.io.filefilter.WildcardFileFilter, var1078=r1, var2763=$r0, var1056=org.apache.commons.io.filefilter.AbstractFileFilter, var695=$r2, var2855=$r3, var2264=java.lang.Object, var1263=$r4}
; {org.apache.commons.io.filefilter.WildcardFileFilter=var2308, r1=var1078, $r0=var2763, org.apache.commons.io.filefilter.AbstractFileFilter=var1056, $r2=var695, $r3=var2855, java.lang.Object=var2264, $r4=var1263}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.WildcardFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.commons.io.filefilter.WildcardFileFilter: java.lang.String[] wildcards>;	virtualinvoke r1.<org.apache.commons.io.filefilter.WildcardFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1