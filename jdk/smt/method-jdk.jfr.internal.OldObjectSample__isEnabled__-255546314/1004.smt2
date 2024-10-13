(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2993 0)
(declare-sort var2961 0)
(declare-sort var546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSettings/275766796 (var2993) var2961)
(declare-fun var2961_get/1088891777 (var2961 var546) var546)
(declare-fun cast-from-String-to-var546 (String) var546)
(declare-fun cast-from-var546-to-String (var546) String)
(declare-const null-var2993 var2993)
(declare-const var2303 var2993) ; Statement: r0 := @parameter0: jdk.jfr.internal.PlatformRecording 
(assert (not (= var2303 null-var2993)))
(assert true)
(define-const var781 var2961 (getSettings/275766796 var2303)) ; Statement: r1 = virtualinvoke r0.<jdk.jfr.internal.PlatformRecording: java.util.Map getSettings()>() 
(define-const var2810 var546 (var2961_get/1088891777 var781 (cast-from-String-to-var546 "jdk.OldObjectSample#enabled"))) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("jdk.OldObjectSample#enabled") 
(define-const var3231 String (cast-from-var546-to-String var2810)) ; Statement: r3 = (java.lang.String) $r2 
(define-const var3419 String "true") ; Statement: $r4 = "true" 
(assert true)
(define-const var3405 Bool (= var3419 var3231)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getSettings/275766796=([jdk.jfr.internal.PlatformRecording], java.util.Map), var2961_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var546=([java.lang.String], java.lang.Object), cast-from-var546-to-String=([java.lang.Object], java.lang.String)}
; {var2993=jdk.jfr.internal.PlatformRecording, var2303=r0, var2961=java.util.Map, var781=r1, var546=java.lang.Object, var2810=$r2, var3231=r3, var3419=$r4, var3405=$z0}
; {jdk.jfr.internal.PlatformRecording=var2993, r0=var2303, java.util.Map=var2961, r1=var781, java.lang.Object=var546, $r2=var2810, r3=var3231, $r4=var3419, $z0=var3405}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: jdk.jfr.internal.PlatformRecording;	r1 = virtualinvoke r0.<jdk.jfr.internal.PlatformRecording: java.util.Map getSettings()>();	$r2 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>("jdk.OldObjectSample#enabled");	r3 = (java.lang.String) $r2;	$r4 = "true";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	return $z0
;block_num 1