(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var754 0)
(declare-sort var1672 0)
(declare-sort var2873 0)
(declare-sort var2977 0)
(declare-sort var2082 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLocation/479856632 (var2873) var2977)
(declare-fun var754_get/1088891777 (var754 var2082) var2082)
(declare-fun cast-from-var2977-to-var2082 (var2977) var2082)
(declare-fun cast-from-var2082-to-var2873 (var2082) var2873)
(declare-fun getName/589876253 (var2873) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var754 var754)
(declare-const null-String String)
(declare-const null-var2873 var2873)
(declare-const var2438 var754) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var2438 null-var754)))
(declare-const var2398 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var2398 null-String)))
(declare-const var1965 var2873) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var1965 null-var2873)))
(assert true)
(define-const var2890 var2977 (getLocation/479856632 var1965)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(define-const var1069 var2082 (var754_get/1088891777 var2438 (cast-from-var2977-to-var2082 var2890))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var560 var2873 (cast-from-var2082-to-var2873 var1069)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target) $r3 
 ; Statement: if r4 == null goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert (not (= var560 null-var2873))) ; Negate: Cond: r4 == null  
(assert true)
(define-const var148 String (getName/589876253 var560)) ; Statement: $r6 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>() 
(assert true)
(define-const var2374 Int (length/-134980193 var148)) ; Statement: $i1 = virtualinvoke $r6.<java.lang.String: int length()>() 
(assert true)
(define-const var1261 Int (length/-134980193 var2398)) ; Statement: $i0 = virtualinvoke r7.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= $i0 goto return 
(assert (<= var2374 var1261)) ; Cond: $i1 <= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLocation/479856632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), var754_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2977-to-var2082=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.Object), cast-from-var2082-to-var2873=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), getName/589876253=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var754=java.util.Map, var2438=r0, var2398=r7, var1672=null_type, var2873=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var1965=r1, var2977=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2890=$r2, var2082=java.lang.Object, var1069=$r3, var560=r4, var148=$r6, var2374=$i1, var1261=$i0}
; {java.util.Map=var754, r0=var2438, r7=var2398, null_type=var1672, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var2873, r1=var1965, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2977, $r2=var2890, java.lang.Object=var2082, $r3=var1069, r4=var560, $r6=var148, $i1=var2374, $i0=var1261}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.util.Map;	r7 := @parameter1: java.lang.String;	r1 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target) $r3;	if r4 == null goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	$r6 = virtualinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>();	$i1 = virtualinvoke $r6.<java.lang.String: int length()>();	$i0 = virtualinvoke r7.<java.lang.String: int length()>();	if $i1 <= $i0 goto return;	return
;block_num 3