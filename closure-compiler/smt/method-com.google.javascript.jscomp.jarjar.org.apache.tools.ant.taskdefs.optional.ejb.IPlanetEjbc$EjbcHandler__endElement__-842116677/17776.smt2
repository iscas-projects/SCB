(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1568 0)
(declare-sort var1112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iasDescriptor/-1370994396 (var1568) Bool)
(declare-fun currentText/-1370994396 (var1568) String)
(declare-fun stdCharacters/-589168709 (var1568 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun currentLoc/-1370994396 (var1568) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1568 var1568)
(declare-const null-String String)
(declare-const var2289 var1568) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var2289 null-var1568)))
(declare-const var558 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var558 null-String)))
(define-const var1015 Bool (iasDescriptor/-1370994396 var2289)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> 
(assert (= (ite var1015 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2942 String (currentText/-1370994396 var2289)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> 
(assert true)
;(assert (stdCharacters/-589168709 var2289 var2942)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: void stdCharacters(java.lang.String)>($r1) 

(declare-const var2289!1 var1568)
(declare-const var2942!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2547 Int (length/-134980193 var558)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var643 Int (+ var2547 1)) ; Statement: $i2 = $i0 + 1 
(define-const var1886 String (currentLoc/-1370994396 var2289!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var3187 Int (length/-134980193 var1886)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2440 String (currentLoc/-1370994396 var2289!1)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(define-const var29 Int (- var3187 var643)) ; Statement: $i1 = $i3 - $i2 
(assert (and true (and (>= 0 0) (>= (str.len var2440) var29) (>= var29 0))))
(define-const var274 String (substring/-1240304868 var2440 0 var29)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(declare-const var2289!2 var1568)
(assert (not (= var2289!2 null-var1568)))
(assert (= (currentLoc/-1370994396 var2289!2) var274)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {iasDescriptor/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], boolean), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), stdCharacters/-589168709=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, java.lang.String], void), length/-134980193=([java.lang.String], int), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1568=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var2289=r0, var558=r2, var1112=null_type, var1015=$z0, var2942=$r1, var2547=$i0, var643=$i2, var1886=$r3, var3187=$i3, var2440=$r4, var29=$i1, var274=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var1568, r0=var2289, r2=var558, null_type=var1112, $z0=var1015, $r1=var2942, $i0=var2547, $i2=var643, $r3=var1886, $i3=var3187, $r4=var2440, $i1=var29, $r5=var274}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r2 := @parameter0: java.lang.String;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText>;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: void stdCharacters(java.lang.String)>($r1);	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i0 + 1;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$i3 = virtualinvoke $r3.<java.lang.String: int length()>();	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$i1 = $i3 - $i2;	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r5;	return
;block_num 3