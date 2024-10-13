(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var782 0)
(declare-sort var2013 0)
(declare-sort var851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun elementFunnel/-1143373360 (var782) var2013)
(declare-fun append/-1031950772 (String var851) String)
(declare-fun cast-from-var2013-to-var851 (var2013) var851)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var782 var782)
(declare-const var3517 var782) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel 
(assert (not (= var3517 null-var782)))
(define-const var3272 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3272)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3272!1 String)
(assert (= var3272!1 ""))
(assert true)
(define-const var1159 String (append/672562846 var3272!1 "Funnels.sequentialFunnel(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Funnels.sequentialFunnel(") 
(declare-const var3272!2 String)
(assert (= var3272!2 (str.++ var3272!1 "Funnels.sequentialFunnel(")))
(define-const var3747 var2013 (elementFunnel/-1143373360 var3517)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel elementFunnel> 
(assert true)
(define-const var2597 String (append/-1031950772 var1159 (cast-from-var2013-to-var851 var3747))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1159!1 String)
(assert (str.prefixof var1159 var1159!1))
(assert true)
(define-const var115 String (append/672562846 var2597 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2597!1 String)
(assert (= var2597!1 (str.++ var2597 ")")))
(assert true)
(define-const var1517 String (toString/-2075883882 var115)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), elementFunnel/-1143373360=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel], com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2013-to-var851=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var782=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel, var3517=r1, var3272=$r0, var1159=$r3, var2013=com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel, var3747=$r2, var851=java.lang.Object, var2597=$r4, var115=$r5, var1517=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel=var782, r1=var3517, $r0=var3272, $r3=var1159, com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel=var2013, $r2=var3747, java.lang.Object=var851, $r4=var2597, $r5=var115, $r6=var1517}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Funnels.sequentialFunnel(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnels$SequentialFunnel: com.google.javascript.jscomp.jarjar.com.google.common.hash.Funnel elementFunnel>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1