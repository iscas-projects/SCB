(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1836 0)
(declare-sort var3076 0)
(declare-sort var2423 0)
(declare-sort var2480 0)
(declare-sort var2683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2423_requireNonNull/-961817614 (var2480) var2480)
(declare-fun cast-from-String-to-var2480 (String) var2480)
(declare-fun recording/218482252 (var1836) var2683)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun identifier/218482252 (var1836) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2683_access$000/-217534081 (var2683 String String) void)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const var674 var1836) ; Statement: r1 := @this: jdk.jfr.Recording$RecordingSettings 
(assert (not (= var674 null-var1836)))
(declare-const var2035 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2035 null-String)))
(declare-const var3401 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3401 null-String)))
;(assert (var2423_requireNonNull/-961817614 (cast-from-String-to-var2480 var3401))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var3401!1 String)
(define-const var1026 var2683 (recording/218482252 var674)) ; Statement: $r3 = r1.<jdk.jfr.Recording$RecordingSettings: jdk.jfr.Recording recording> 
(define-const var1487 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1487)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1487!1 String)
(assert (= var1487!1 ""))
(define-const var668 String (identifier/218482252 var674)) ; Statement: $r4 = r1.<jdk.jfr.Recording$RecordingSettings: java.lang.String identifier> 
(assert true)
(define-const var1409 String (append/672562846 var1487!1 var668)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1487!2 String)
(assert (= var1487!2 (str.++ var1487!1 var668)))
(assert true)
(define-const var2602 String (append/672562846 var1409 "#")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1409!1 String)
(assert (= var1409!1 (str.++ var1409 "#")))
(assert true)
(define-const var1703 String (append/672562846 var2602 var2035)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2602!1 String)
(assert (= var2602!1 (str.++ var2602 var2035)))
(assert true)
(define-const var1587 String (toString/-2075883882 var1703)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2683_access$000/-217534081 var1026 var1587 var3401!1)) ; Statement: staticinvoke <jdk.jfr.Recording: void access$000(jdk.jfr.Recording,java.lang.String,java.lang.String)>($r3, $r9, r0) 

(declare-const var1026!1 var2683)
(declare-const var1587!1 String)
(declare-const var3401!2 String)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2423_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var2480=([java.lang.String], java.lang.Object), recording/218482252=([jdk.jfr.Recording$RecordingSettings], jdk.jfr.Recording), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), identifier/218482252=([jdk.jfr.Recording$RecordingSettings], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2683_access$000/-217534081=([jdk.jfr.Recording, java.lang.String, java.lang.String], void)}
; {var1836=jdk.jfr.Recording$RecordingSettings, var674=r1, var2035=r6, var3076=null_type, var3401=r0, var2423=java.util.Objects, var2480=java.lang.Object, var2683=jdk.jfr.Recording, var1026=$r3, var1487=$r2, var668=$r4, var1409=$r5, var2602=$r7, var1703=$r8, var1587=$r9}
; {jdk.jfr.Recording$RecordingSettings=var1836, r1=var674, r6=var2035, null_type=var3076, r0=var3401, java.util.Objects=var2423, java.lang.Object=var2480, jdk.jfr.Recording=var2683, $r3=var1026, $r2=var1487, $r4=var668, $r5=var1409, $r7=var2602, $r8=var1703, $r9=var1587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.Recording$RecordingSettings;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$r3 = r1.<jdk.jfr.Recording$RecordingSettings: jdk.jfr.Recording recording>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<jdk.jfr.Recording$RecordingSettings: java.lang.String identifier>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.Recording: void access$000(jdk.jfr.Recording,java.lang.String,java.lang.String)>($r3, $r9, r0);	return r1
;block_num 1