(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var2876 0)
(declare-sort var3875 0)
(declare-sort var3554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2876_getDefault/-1573936748 () var2876)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun destURI/-1105320615 (var240) var3875)
(declare-fun select/-1516190752 (var2876 var3875) var3554)
(declare-fun var3554_iterator/-912451715 (var3554) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var240 var240)
(declare-const var1678 var240) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics 
(assert (not (= var1678 null-var240)))
(define-const var692 var2876 var2876_getDefault/-1573936748) ; Statement: r0 = staticinvoke <java.net.ProxySelector: java.net.ProxySelector getDefault()>() 
(define-const var1906 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1906)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1906!1 String)
(assert (= var1906!1 ""))
(define-const var3722 var3875 (destURI/-1105320615 var1678)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics: java.net.URI destURI> 
(assert true)
(define-const var1584 var3554 (select/-1516190752 var692 var3722)) ; Statement: $r4 = virtualinvoke r0.<java.net.ProxySelector: java.util.List select(java.net.URI)>($r3) 
(define-const var2661 Iterator (var3554_iterator/-912451715 var1584)) ; Statement: r5 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1064 Bool (Iterator_hasNext/-1669924200 var2661)) ; Statement: $z2 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1064 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1548 String (toString/-2075883882 var1906!1)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2876_getDefault/-1573936748=([], java.net.ProxySelector), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), destURI/-1105320615=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics], java.net.URI), select/-1516190752=([java.net.ProxySelector, java.net.URI], java.util.List), var3554_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var240=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics, var1678=r2, var2876=java.net.ProxySelector, var692=r0, var1906=$r1, var3875=java.net.URI, var3722=$r3, var3554=java.util.List, var1584=$r4, var2661=r5, var1064=$z2, var1548=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics=var240, r2=var1678, java.net.ProxySelector=var2876, r0=var692, $r1=var1906, java.net.URI=var3875, $r3=var3722, java.util.List=var3554, $r4=var1584, r5=var2661, $z2=var1064, $r6=var1548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics;	r0 = staticinvoke <java.net.ProxySelector: java.net.ProxySelector getDefault()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.java15.ProxyDiagnostics: java.net.URI destURI>;	$r4 = virtualinvoke r0.<java.net.ProxySelector: java.util.List select(java.net.URI)>($r3);	r5 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3