(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3277 0)
(declare-sort var3887 0)
(declare-sort var792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var3887) String)
(declare-fun cast-from-var3277-to-var3887 (var3277) var3887)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun names/-29742995 (var3277) (Array Int String))
(declare-fun append/425180388 (var3887 (Array Int var792) String) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var792__ ((Array Int String)) (Array Int var792))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3277 var3277)
(declare-const var1325 var3277) ; Statement: r1 := @this: org.apache.commons.io.filefilter.NameFileFilter 
(assert (not (= var1325 null-var3277)))
(define-const var3159 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3159)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3159!1 String)
(assert (= var3159!1 ""))
(assert true)
(define-const var1230 String (toString/-111084316 (cast-from-var3277-to-var3887 var1325))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3159!1 var1230)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3159!2 String)
(assert (= var3159!2 (str.++ var3159!1 var1230)))
(assert true)
;(assert (append/672562846 var3159!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3159!3 String)
(assert (= var3159!3 (str.++ var3159!2 "(")))
(define-const var269 (Array Int String) (names/-29742995 var1325)) ; Statement: $r3 = r1.<org.apache.commons.io.filefilter.NameFileFilter: java.lang.String[] names> 
(assert true)
;(assert (append/425180388 (cast-from-var3277-to-var3887 var1325) (cast-from-__Array__Int__String__-to-__Array__Int__var792__ var269) var3159!3)) ; Statement: virtualinvoke r1.<org.apache.commons.io.filefilter.NameFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0) 

(declare-const var1325!1 var3277)
(declare-const var269!1 (Array Int String))
(declare-const var3159!4 String)
(assert true)
;(assert (append/672562846 var3159!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3159!5 String)
(assert (= var3159!5 (str.++ var3159!4 ")")))
(assert true)
(define-const var858 String (toString/-2075883882 var3159!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var3277-to-var3887=([org.apache.commons.io.filefilter.NameFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), names/-29742995=([org.apache.commons.io.filefilter.NameFileFilter], java.lang.String[]), append/425180388=([org.apache.commons.io.filefilter.AbstractFileFilter, java.lang.Object[], java.lang.StringBuilder], void), cast-from-__Array__Int__String__-to-__Array__Int__var792__=([java.lang.String[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3277=org.apache.commons.io.filefilter.NameFileFilter, var1325=r1, var3159=$r0, var3887=org.apache.commons.io.filefilter.AbstractFileFilter, var1230=$r2, var269=$r3, var792=java.lang.Object, var858=$r4}
; {org.apache.commons.io.filefilter.NameFileFilter=var3277, r1=var1325, $r0=var3159, org.apache.commons.io.filefilter.AbstractFileFilter=var3887, $r2=var1230, $r3=var269, java.lang.Object=var792, $r4=var858}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.NameFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.commons.io.filefilter.NameFileFilter: java.lang.String[] names>;	virtualinvoke r1.<org.apache.commons.io.filefilter.NameFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1