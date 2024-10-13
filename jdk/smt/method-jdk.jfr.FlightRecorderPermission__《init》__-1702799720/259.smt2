(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2436 0)
(declare-sort var3789 0)
(declare-sort var3164 0)
(declare-sort var3745 0)
(declare-sort var3831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3745_requireNonNull/-961817614 (var3164) var3164)
(declare-fun cast-from-String-to-var3164 (String) var3164)
(declare-fun cast-from-var3164-to-String (var3164) String)
(declare-fun <init>/-1048908983 (var3831 String) void)
(declare-fun cast-from-var2436-to-var3831 (var2436) var3831)
(declare-const null-var2436 var2436)
(declare-const null-String String)
(declare-const var3129 var2436) ; Statement: r0 := @this: jdk.jfr.FlightRecorderPermission 
(assert (not (= var3129 null-var2436)))
(declare-const var3545 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3545 null-String)))
(define-const var2160 var3164 (var3745_requireNonNull/-961817614 (cast-from-String-to-var3164 var3545))) ; Statement: $r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r1) 
(define-const var306 String (cast-from-var3164-to-String var2160)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
;(assert (<init>/-1048908983 (cast-from-var2436-to-var3831 var3129) var306)) ; Statement: specialinvoke r0.<java.security.BasicPermission: void <init>(java.lang.String)>($r3) 

(declare-const var3129!1 var2436)
(declare-const var306!1 String)
(assert true)
(define-const var491 Bool (= var3545 "accessFlightRecorder")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("accessFlightRecorder") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var491 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3745_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var3164=([java.lang.String], java.lang.Object), cast-from-var3164-to-String=([java.lang.Object], java.lang.String), <init>/-1048908983=([java.security.BasicPermission, java.lang.String], void), cast-from-var2436-to-var3831=([jdk.jfr.FlightRecorderPermission], java.security.BasicPermission)}
; {var2436=jdk.jfr.FlightRecorderPermission, var3129=r0, var3545=r1, var3789=null_type, var3164=java.lang.Object, var3745=java.util.Objects, var2160=$r2, var306=$r3, var3831=java.security.BasicPermission, var491=$z0}
; {jdk.jfr.FlightRecorderPermission=var2436, r0=var3129, r1=var3545, null_type=var3789, java.lang.Object=var3164, java.util.Objects=var3745, $r2=var2160, $r3=var306, java.security.BasicPermission=var3831, $z0=var491}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.jfr.FlightRecorderPermission;	r1 := @parameter0: java.lang.String;	$r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r1);	$r3 = (java.lang.String) $r2;	specialinvoke r0.<java.security.BasicPermission: void <init>(java.lang.String)>($r3);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("accessFlightRecorder");	if $z0 != 0 goto return;	return
;block_num 2