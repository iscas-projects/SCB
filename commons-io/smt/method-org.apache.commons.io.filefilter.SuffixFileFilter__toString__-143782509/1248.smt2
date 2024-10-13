(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1189 0)
(declare-sort var2554 0)
(declare-sort var1963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-111084316 (var2554) String)
(declare-fun cast-from-var1189-to-var2554 (var1189) var2554)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun suffixes/-1308573133 (var1189) (Array Int String))
(declare-fun append/425180388 (var2554 (Array Int var1963) String) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1963__ ((Array Int String)) (Array Int var1963))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1189 var1189)
(declare-const var3302 var1189) ; Statement: r1 := @this: org.apache.commons.io.filefilter.SuffixFileFilter 
(assert (not (= var3302 null-var1189)))
(define-const var883 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var883)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var883!1 String)
(assert (= var883!1 ""))
(assert true)
(define-const var2615 String (toString/-111084316 (cast-from-var1189-to-var2554 var3302))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var883!1 var2615)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var883!2 String)
(assert (= var883!2 (str.++ var883!1 var2615)))
(assert true)
;(assert (append/672562846 var883!2 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var883!3 String)
(assert (= var883!3 (str.++ var883!2 "(")))
(define-const var1621 (Array Int String) (suffixes/-1308573133 var3302)) ; Statement: $r3 = r1.<org.apache.commons.io.filefilter.SuffixFileFilter: java.lang.String[] suffixes> 
(assert true)
;(assert (append/425180388 (cast-from-var1189-to-var2554 var3302) (cast-from-__Array__Int__String__-to-__Array__Int__var1963__ var1621) var883!3)) ; Statement: virtualinvoke r1.<org.apache.commons.io.filefilter.SuffixFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0) 

(declare-const var3302!1 var1189)
(declare-const var1621!1 (Array Int String))
(declare-const var883!4 String)
(assert true)
;(assert (append/672562846 var883!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var883!5 String)
(assert (= var883!5 (str.++ var883!4 ")")))
(assert true)
(define-const var1956 String (toString/-2075883882 var883!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var1189-to-var2554=([org.apache.commons.io.filefilter.SuffixFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), suffixes/-1308573133=([org.apache.commons.io.filefilter.SuffixFileFilter], java.lang.String[]), append/425180388=([org.apache.commons.io.filefilter.AbstractFileFilter, java.lang.Object[], java.lang.StringBuilder], void), cast-from-__Array__Int__String__-to-__Array__Int__var1963__=([java.lang.String[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1189=org.apache.commons.io.filefilter.SuffixFileFilter, var3302=r1, var883=$r0, var2554=org.apache.commons.io.filefilter.AbstractFileFilter, var2615=$r2, var1621=$r3, var1963=java.lang.Object, var1956=$r4}
; {org.apache.commons.io.filefilter.SuffixFileFilter=var1189, r1=var3302, $r0=var883, org.apache.commons.io.filefilter.AbstractFileFilter=var2554, $r2=var2615, $r3=var1621, java.lang.Object=var1963, $r4=var1956}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.SuffixFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = r1.<org.apache.commons.io.filefilter.SuffixFileFilter: java.lang.String[] suffixes>;	virtualinvoke r1.<org.apache.commons.io.filefilter.SuffixFileFilter: void append(java.lang.Object[],java.lang.StringBuilder)>($r3, $r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1