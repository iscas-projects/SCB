(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1239 0)
(declare-sort var2292 0)
(declare-sort var3741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun identifier/1175235421 (var1239) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enabledMap/1175235421 (var1239) var2292)
(declare-fun toString/-522406933 (var3741) String)
(declare-fun cast-from-var2292-to-var3741 (var2292) var3741)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1239 var1239)
(declare-const var2497 var1239) ; Statement: r1 := @this: jdk.jfr.internal.SettingsManager$InternalSetting 
(assert (not (= var2497 null-var1239)))
(define-const var395 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var395)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var395!1 String)
(assert (= var395!1 ""))
(define-const var2907 String (identifier/1175235421 var2497)) ; Statement: $r2 = r1.<jdk.jfr.internal.SettingsManager$InternalSetting: java.lang.String identifier> 
(assert true)
;(assert (append/672562846 var395!1 var2907)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var395!2 String)
(assert (= var395!2 (str.++ var395!1 var2907)))
(assert true)
;(assert (append/672562846 var395!2 ": ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var395!3 String)
(assert (= var395!3 (str.++ var395!2 ": ")))
(define-const var620 var2292 (enabledMap/1175235421 var2497)) ; Statement: $r3 = r1.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map enabledMap> 
(assert true)
(define-const var692 String (toString/-522406933 (cast-from-var2292-to-var3741 var620))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var395!3 var692)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var395!4 String)
(assert (= var395!4 (str.++ var395!3 var692)))
(assert true)
(define-const var557 String (toString/-2075883882 var395!4)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), identifier/1175235421=([jdk.jfr.internal.SettingsManager$InternalSetting], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), enabledMap/1175235421=([jdk.jfr.internal.SettingsManager$InternalSetting], java.util.Map), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2292-to-var3741=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1239=jdk.jfr.internal.SettingsManager$InternalSetting, var2497=r1, var395=$r0, var2907=$r2, var2292=java.util.Map, var620=$r3, var3741=java.lang.Object, var692=$r4, var557=$r5}
; {jdk.jfr.internal.SettingsManager$InternalSetting=var1239, r1=var2497, $r0=var395, $r2=var2907, java.util.Map=var2292, $r3=var620, java.lang.Object=var3741, $r4=var692, $r5=var557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.SettingsManager$InternalSetting;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.jfr.internal.SettingsManager$InternalSetting: java.lang.String identifier>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r3 = r1.<jdk.jfr.internal.SettingsManager$InternalSetting: java.util.Map enabledMap>;	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1