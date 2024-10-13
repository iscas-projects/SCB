(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2588 0)
(declare-sort var3589 0)
(declare-sort var1457 0)
(declare-sort var1850 0)
(declare-sort var780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun home/1754939147 (var2588) var1457)
(declare-fun var1850-init () var1850)
(declare-fun this$0/1754939147 (var2588) var780)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1754939147 (var2588) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1645947725 (var1850 var780 String) void)
(declare-const null-var2588 var2588)
(declare-const null-var3589 var3589)
(declare-const null-var1457 var1457)
(declare-const var2224 var2588) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo 
(assert (not (= var2224 null-var2588)))
(declare-const var446 var3589) ; Statement: r5 := @parameter0: java.io.File 
(assert (not (= var446 null-var3589)))
(define-const var1812 var1457 (home/1754939147 var2224)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname home> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname remote> 
(assert (not (not (= var1812 null-var1457)))) ; Negate: Cond: $r1 != null  
(define-const var3283 var1850 var1850-init) ; Statement: $r82 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException 
(define-const var2644 var780 (this$0/1754939147 var2224)) ; Statement: $r84 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc this$0> 
(define-const var2228 String String-init) ; Statement: $r83 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2228)) ; Statement: specialinvoke $r83.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2228!1 String)
(assert (= var2228!1 ""))
(assert true)
(define-const var3327 String (append/672562846 var2228!1 "A home interface was not found for the ")) ; Statement: $r86 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A home interface was not found for the ") 
(declare-const var2228!2 String)
(assert (= var2228!2 (str.++ var2228!1 "A home interface was not found for the ")))
(define-const var3523 String (name/1754939147 var2224)) ; Statement: $r85 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String name> 
(assert true)
(define-const var3577 String (append/672562846 var3327 var3523)) ; Statement: $r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85) 
(declare-const var3327!1 String)
(assert (= var3327!1 (str.++ var3327 var3523)))
(assert true)
(define-const var223 String (append/672562846 var3577 " EJB.")) ; Statement: $r88 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" EJB.") 
(declare-const var3577!1 String)
(assert (= var3577!1 (str.++ var3577 " EJB.")))
(assert true)
(define-const var3927 String (toString/-2075883882 var223)) ; Statement: $r89 = virtualinvoke $r88.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1645947725 var3283 var2644 var3927)) ; Statement: specialinvoke $r82.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc,java.lang.String)>($r84, $r89) 

(declare-const var3283!1 var1850)
(declare-const var2644!1 var780)
(declare-const var3927!1 String)
 ; Statement: throw $r82 
(check-sat)
(get-model)
(get-unsat-core)
; {home/1754939147=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), var1850-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException), this$0/1754939147=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1754939147=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1645947725=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void)}
; {var2588=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var2224=r0, var3589=java.io.File, var446=r5, var1457=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, var1812=$r1, var1850=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException, var3283=$r82, var780=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2644=$r84, var2228=$r83, var3327=$r86, var3523=$r85, var3577=$r87, var223=$r88, var3927=$r89}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var2588, r0=var2224, java.io.File=var3589, r5=var446, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname=var1457, $r1=var1812, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException=var1850, $r82=var3283, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var780, $r84=var2644, $r83=var2228, $r86=var3327, $r85=var3523, $r87=var3577, $r88=var223, $r89=var3927}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo;	r5 := @parameter0: java.io.File;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname home>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname remote>;	$r82 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException;	$r84 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc this$0>;	$r83 = new java.lang.StringBuilder;	specialinvoke $r83.<java.lang.StringBuilder: void <init>()>();	$r86 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A home interface was not found for the ");	$r85 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String name>;	$r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85);	$r88 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" EJB.");	$r89 = virtualinvoke $r88.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r82.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc,java.lang.String)>($r84, $r89);	throw $r82
;block_num 2