(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort var1587 0)
(declare-sort var1564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var1587) String)
(declare-fun cast-from-var1128-to-var1587 (var1128) var1587)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileFilters/1449004061 (var1128) var1564)
(declare-fun append/256348621 (var1587 var1564 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1128 var1128)
(declare-const var2363 var1128) ; Statement: r1 := @this: org.apache.commons.io.filefilter.AndFileFilter 
(assert (not (= var2363 null-var1128)))
(define-const var3247 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3247)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3247!1 String)
(assert (= var3247!1 ""))
(assert true)
(define-const var3107 String (toString/-111084316 (cast-from-var1128-to-var1587 var2363))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3247!1 var3107)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3247!2 String)
(assert (= var3247!2 (str.++ var3247!1 var3107)))
(assert true)
;(assert (append/672562846 var3247!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3247!3 String)
(assert (= var3247!3 (str.++ var3247!2 "(")))
(define-const var494 var1564 (fileFilters/1449004061 var2363)) ; Statement: $r3 = r1.<org.apache.commons.io.filefilter.AndFileFilter: java.util.List fileFilters> 
(assert true)
;(assert (append/256348621 (cast-from-var1128-to-var1587 var2363) var494 var3247!3)) ; Statement: virtualinvoke r1.<org.apache.commons.io.filefilter.AndFileFilter: void append(java.util.List,java.lang.StringBuilder)>($r3, $r0) 

(declare-const var2363!1 var1128)
(declare-const var494!1 var1564)
(declare-const var3247!4 String)
(assert true)
;(assert (append/672562846 var3247!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3247!5 String)
(assert (= var3247!5 (str.++ var3247!4 ")")))
(assert true)
(define-const var2585 String (toString/-2075883882 var3247!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var1128-to-var1587=([org.apache.commons.io.filefilter.AndFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileFilters/1449004061=([org.apache.commons.io.filefilter.AndFileFilter], java.util.List), append/256348621=([org.apache.commons.io.filefilter.AbstractFileFilter, java.util.List, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1128=org.apache.commons.io.filefilter.AndFileFilter, var2363=r1, var3247=$r0, var1587=org.apache.commons.io.filefilter.AbstractFileFilter, var3107=$r2, var1564=java.util.List, var494=$r3, var2585=$r4}
; {org.apache.commons.io.filefilter.AndFileFilter=var1128, r1=var2363, $r0=var3247, org.apache.commons.io.filefilter.AbstractFileFilter=var1587, $r2=var3107, java.util.List=var1564, $r3=var494, $r4=var2585}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.AndFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.commons.io.filefilter.AndFileFilter: java.util.List fileFilters>;	virtualinvoke r1.<org.apache.commons.io.filefilter.AndFileFilter: void append(java.util.List,java.lang.StringBuilder)>($r3, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1