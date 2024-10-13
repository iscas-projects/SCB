(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var534 0)
(declare-sort var1867 0)
(declare-sort var3628 0)
(declare-sort var2000 0)
(declare-sort var589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1907340113 (var3628) void)
(declare-fun cast-from-var534-to-var3628 (var534) var3628)
(declare-fun var2000_ensureValidEventSubclass/1515844346 (ClassObject) void)
(declare-fun recording/218482252 (var534) var1867)
(declare-fun var589_getTypeId/-116061032 (ClassObject) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun identifier/218482252 (var534) String)
(declare-const null-var534 var534)
(declare-const null-var1867 var1867)
(declare-const null-ClassObject ClassObject)
(declare-const var3803 var534) ; Statement: r0 := @this: jdk.jfr.Recording$RecordingSettings 
(assert (not (= var3803 null-var534)))
(declare-const var3497 var1867) ; Statement: r2 := @parameter0: jdk.jfr.Recording 
(assert (not (= var3497 null-var1867)))
(declare-const var482 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var482 null-ClassObject)))
(assert true)
;(assert (<init>/1907340113 (cast-from-var534-to-var3628 var3803))) ; Statement: specialinvoke r0.<jdk.jfr.EventSettings: void <init>()>() 

(declare-const var3803!1 var534)
;(assert (var2000_ensureValidEventSubclass/1515844346 var482)) ; Statement: staticinvoke <jdk.jfr.internal.Utils: void ensureValidEventSubclass(java.lang.Class)>(r1) 

(declare-const var482!1 ClassObject)
(declare-const var3803!2 var534)
(assert (not (= var3803!2 null-var534)))
(assert (= (recording/218482252 var3803!2) var3497)) ; Statement: r0.<jdk.jfr.Recording$RecordingSettings: jdk.jfr.Recording recording> = r2 
(define-const var3535 Int (var589_getTypeId/-116061032 var482!1)) ; Statement: $l0 = staticinvoke <jdk.jfr.internal.Type: long getTypeId(java.lang.Class)>(r1) 
(define-const var3484 String (String_valueOf/-107395227 var3535)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
(declare-const var3803!3 var534)
(assert (not (= var3803!3 null-var534)))
(assert (= (identifier/218482252 var3803!3) var3484)) ; Statement: r0.<jdk.jfr.Recording$RecordingSettings: java.lang.String identifier> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1907340113=([jdk.jfr.EventSettings], void), cast-from-var534-to-var3628=([jdk.jfr.Recording$RecordingSettings], jdk.jfr.EventSettings), var2000_ensureValidEventSubclass/1515844346=([java.lang.Class], void), recording/218482252=([jdk.jfr.Recording$RecordingSettings], jdk.jfr.Recording), var589_getTypeId/-116061032=([java.lang.Class], long), String_valueOf/-107395227=([long], java.lang.String), identifier/218482252=([jdk.jfr.Recording$RecordingSettings], java.lang.String)}
; {var534=jdk.jfr.Recording$RecordingSettings, var3803=r0, var1867=jdk.jfr.Recording, var3497=r2, var482=r1, var3628=jdk.jfr.EventSettings, var2000=jdk.jfr.internal.Utils, var589=jdk.jfr.internal.Type, var3535=$l0, var3484=$r3}
; {jdk.jfr.Recording$RecordingSettings=var534, r0=var3803, jdk.jfr.Recording=var1867, r2=var3497, r1=var482, jdk.jfr.EventSettings=var3628, jdk.jfr.internal.Utils=var2000, jdk.jfr.internal.Type=var589, $l0=var3535, $r3=var3484}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: jdk.jfr.Recording$RecordingSettings;	r2 := @parameter0: jdk.jfr.Recording;	r1 := @parameter1: java.lang.Class;	specialinvoke r0.<jdk.jfr.EventSettings: void <init>()>();	staticinvoke <jdk.jfr.internal.Utils: void ensureValidEventSubclass(java.lang.Class)>(r1);	r0.<jdk.jfr.Recording$RecordingSettings: jdk.jfr.Recording recording> = r2;	$l0 = staticinvoke <jdk.jfr.internal.Type: long getTypeId(java.lang.Class)>(r1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	r0.<jdk.jfr.Recording$RecordingSettings: java.lang.String identifier> = $r3;	return
;block_num 1