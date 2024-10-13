(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1629 0)
(declare-sort var1212 0)
(declare-sort var1118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enabledMap/1175235421 (var1629) var1118)
(declare-fun addToMap/71087670 (var1629 var1118 String String) void)
(declare-fun allMap/1175235421 (var1629) var1118)
(declare-const null-var1629 var1629)
(declare-const null-String String)
(declare-const null-var1118 var1118)
(declare-const var830 var1629) ; Statement: r2 := @this: jdk.jfr.internal.SettingsManager$InternalSetting 
(assert (not (= var830 null-var1629)))
(declare-const var931 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var931 null-String)))
(declare-const var3482 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3482 null-String)))
(define-const var1345 String "enabled") ; Statement: $r1 = "enabled" 
(assert true)
(define-const var511 Bool (= var1345 var931)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r6 = r2.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map enabledMap> 
(assert (= (ite var511 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1426 var1118 (enabledMap/1175235421 var830)) ; Statement: $r6 = r2.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map enabledMap> 
(assert true)
;(assert (addToMap/71087670 var830 var1426 var931 var3482)) ; Statement: specialinvoke r2.<jdk.jfr.internal.SettingsManager$InternalSetting: void addToMap(java.util.Map,java.lang.String,java.lang.String)>($r6, r0, r3) 

(declare-const var830!1 var1629)
(declare-const var1426!1 var1118)
(declare-const var931!1 String)
(declare-const var3482!1 String)
(define-const var2071 var1118 (allMap/1175235421 var830!1)) ; Statement: $r7 = r2.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map allMap> 
 ; Statement: if $r7 == null goto return 
(assert (= var2071 null-var1118)) ; Cond: $r7 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {enabledMap/1175235421=([jdk.jfr.internal.SettingsManager$InternalSetting], java.util.Map), addToMap/71087670=([jdk.jfr.internal.SettingsManager$InternalSetting, java.util.Map, java.lang.String, java.lang.String], void), allMap/1175235421=([jdk.jfr.internal.SettingsManager$InternalSetting], java.util.Map)}
; {var1629=jdk.jfr.internal.SettingsManager$InternalSetting, var830=r2, var931=r0, var1212=null_type, var3482=r3, var1345=$r1, var511=$z0, var1118=java.util.Map, var1426=$r6, var2071=$r7}
; {jdk.jfr.internal.SettingsManager$InternalSetting=var1629, r2=var830, r0=var931, null_type=var1212, r3=var3482, $r1=var1345, $z0=var511, java.util.Map=var1118, $r6=var1426, $r7=var2071}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.jfr.internal.SettingsManager$InternalSetting;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = "enabled";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r6 = r2.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map enabledMap>;	$r6 = r2.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map enabledMap>;	specialinvoke r2.<jdk.jfr.internal.SettingsManager$InternalSetting: void addToMap(java.util.Map,java.lang.String,java.lang.String)>($r6, r0, r3);	$r7 = r2.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map allMap>;	if $r7 == null goto return;	return
;block_num 3