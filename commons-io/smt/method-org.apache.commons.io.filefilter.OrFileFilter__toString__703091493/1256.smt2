(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2341 0)
(declare-sort var1103 0)
(declare-sort var3877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var1103) String)
(declare-fun cast-from-var2341-to-var1103 (var2341) var1103)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileFilters/-2053738171 (var2341) var3877)
(declare-fun append/256348621 (var1103 var3877 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2341 var2341)
(declare-const var3039 var2341) ; Statement: r1 := @this: org.apache.commons.io.filefilter.OrFileFilter 
(assert (not (= var3039 null-var2341)))
(define-const var1906 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1906)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1906!1 String)
(assert (= var1906!1 ""))
(assert true)
(define-const var3089 String (toString/-111084316 (cast-from-var2341-to-var1103 var3039))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1906!1 var3089)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1906!2 String)
(assert (= var1906!2 (str.++ var1906!1 var3089)))
(assert true)
;(assert (append/672562846 var1906!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1906!3 String)
(assert (= var1906!3 (str.++ var1906!2 "(")))
(define-const var295 var3877 (fileFilters/-2053738171 var3039)) ; Statement: $r3 = r1.<org.apache.commons.io.filefilter.OrFileFilter: java.util.List fileFilters> 
(assert true)
;(assert (append/256348621 (cast-from-var2341-to-var1103 var3039) var295 var1906!3)) ; Statement: virtualinvoke r1.<org.apache.commons.io.filefilter.OrFileFilter: void append(java.util.List,java.lang.StringBuilder)>($r3, $r0) 

(declare-const var3039!1 var2341)
(declare-const var295!1 var3877)
(declare-const var1906!4 String)
(assert true)
;(assert (append/672562846 var1906!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1906!5 String)
(assert (= var1906!5 (str.++ var1906!4 ")")))
(assert true)
(define-const var1596 String (toString/-2075883882 var1906!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2341-to-var1103=([org.apache.commons.io.filefilter.OrFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileFilters/-2053738171=([org.apache.commons.io.filefilter.OrFileFilter], java.util.List), append/256348621=([org.apache.commons.io.filefilter.AbstractFileFilter, java.util.List, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2341=org.apache.commons.io.filefilter.OrFileFilter, var3039=r1, var1906=$r0, var1103=org.apache.commons.io.filefilter.AbstractFileFilter, var3089=$r2, var3877=java.util.List, var295=$r3, var1596=$r4}
; {org.apache.commons.io.filefilter.OrFileFilter=var2341, r1=var3039, $r0=var1906, org.apache.commons.io.filefilter.AbstractFileFilter=var1103, $r2=var3089, java.util.List=var3877, $r3=var295, $r4=var1596}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.OrFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.commons.io.filefilter.OrFileFilter: java.util.List fileFilters>;	virtualinvoke r1.<org.apache.commons.io.filefilter.OrFileFilter: void append(java.util.List,java.lang.StringBuilder)>($r3, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1