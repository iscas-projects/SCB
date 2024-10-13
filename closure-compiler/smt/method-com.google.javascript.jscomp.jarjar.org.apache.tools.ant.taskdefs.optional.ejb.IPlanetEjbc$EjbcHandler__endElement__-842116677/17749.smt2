(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2200 0)
(declare-sort var635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iasDescriptor/-1370994396 (var2200) Bool)
(declare-fun currentText/-1370994396 (var2200) String)
(declare-fun iasCharacters/131510915 (var2200 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun currentLoc/-1370994396 (var2200) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2200 var2200)
(declare-const null-String String)
(declare-const var3250 var2200) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var3250 null-var2200)))
(declare-const var3247 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3247 null-String)))
(define-const var3519 Bool (iasDescriptor/-1370994396 var3250)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> 
(assert (not (= (ite var3519 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3974 String (currentText/-1370994396 var3250)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> 
(assert true)
;(assert (iasCharacters/131510915 var3250 var3974)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: void iasCharacters(java.lang.String)>($r6) 

(declare-const var3250!1 var2200)
(declare-const var3974!1 String)
 ; Statement: goto [?= $i0 = virtualinvoke r2.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1815 Int (length/-134980193 var3247)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var200 Int (+ var1815 1)) ; Statement: $i2 = $i0 + 1 
(define-const var2469 String (currentLoc/-1370994396 var3250!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var1729 Int (length/-134980193 var2469)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2307 String (currentLoc/-1370994396 var3250!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(define-const var3169 Int (- var1729 var200)) ; Statement: $i1 = $i3 - $i2 
(assert (and true (and (>= 0 0) (>= (str.len var2307) var3169) (>= var3169 0))))
(define-const var5 String (substring/-1240304868 var2307 0 var3169)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(declare-const var3250!2 var2200)
(assert (not (= var3250!2 null-var2200)))
(assert (= (currentLoc/-1370994396 var3250!2) var5)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {iasDescriptor/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], boolean), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), iasCharacters/131510915=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, java.lang.String], void), length/-134980193=([java.lang.String], int), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2200=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var3250=r0, var3247=r2, var635=null_type, var3519=$z0, var3974=$r6, var1815=$i0, var200=$i2, var2469=$r3, var1729=$i3, var2307=$r4, var3169=$i1, var5=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var2200, r0=var3250, r2=var3247, null_type=var635, $z0=var3519, $r6=var3974, $i0=var1815, $i2=var200, $r3=var2469, $i3=var1729, $r4=var2307, $i1=var3169, $r5=var5}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r2 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText>;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: void iasCharacters(java.lang.String)>($r6);	goto [?= $i0 = virtualinvoke r2.<java.lang.String: int length()>()];	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i0 + 1;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$i3 = virtualinvoke $r3.<java.lang.String: int length()>();	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$i1 = $i3 - $i2;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r5;	return
;block_num 3