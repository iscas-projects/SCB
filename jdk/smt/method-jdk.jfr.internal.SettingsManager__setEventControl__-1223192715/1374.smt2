(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2830 0)
(declare-sort var2675 0)
(declare-sort var3552 0)
(declare-sort var2495 0)
(declare-sort var1153 0)
(declare-sort var2110 0)
(declare-sort var3146 0)
(declare-sort var3935 0)
(declare-sort var694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInternalSetting/-155062020 (var2830 var2675) var3552)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEventType/-1848430003 (var2675) var2110)
(declare-fun getLogName/-1622746903 (var3146) String)
(declare-fun cast-from-var2110-to-var3146 (var2110) var3146)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3935_log/979489950 (var2495 var1153 String) void)
(declare-fun getEntries/-1360825380 (var2675) var694)
(declare-fun var694_iterator/1911472585 (var694) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun writeActiveSettingEvent/-1763840751 (var2675) void)
(declare-const null-var2830 var2830)
(declare-const null-var2675 var2675)
(declare-const var2495-JFR_SETTING var2495)
(declare-const var1153-INFO var1153)
(declare-const var1967 var2830) ; Statement: r0 := @this: jdk.jfr.internal.SettingsManager 
(assert (not (= var1967 null-var2830)))
(declare-const var1878 var2675) ; Statement: r1 := @parameter0: jdk.jfr.internal.EventControl 
(assert (not (= var1878 null-var2675)))
(assert true)
(define-const var3798 var3552 (getInternalSetting/-155062020 var1967 var1878)) ; Statement: r2 = specialinvoke r0.<jdk.jfr.internal.SettingsManager: jdk.jfr.internal.SettingsManager$InternalSetting getInternalSetting(jdk.jfr.internal.EventControl)>(r1) 
(define-const var870 var2495 var2495-JFR_SETTING) ; Statement: $r4 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var1991 var1153 var1153-INFO) ; Statement: $r5 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO> 
(define-const var751 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var751)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var751!1 String)
(assert (= var751!1 ""))
(assert true)
(define-const var3147 String (append/672562846 var751!1 "Applied settings for ")) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Applied settings for ") 
(declare-const var751!2 String)
(assert (= var751!2 (str.++ var751!1 "Applied settings for ")))
(assert true)
(define-const var69 var2110 (getEventType/-1848430003 var1878)) ; Statement: $r6 = virtualinvoke r1.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType getEventType()>() 
(assert true)
(define-const var1456 String (getLogName/-1622746903 (cast-from-var2110-to-var3146 var69))) ; Statement: $r7 = virtualinvoke $r6.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>() 
(assert true)
(define-const var2136 String (append/672562846 var3147 var1456)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3147!1 String)
(assert (= var3147!1 (str.++ var3147 var1456)))
(assert true)
(define-const var249 String (append/672562846 var2136 " {")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {") 
(declare-const var2136!1 String)
(assert (= var2136!1 (str.++ var2136 " {")))
(assert true)
(define-const var2827 String (toString/-2075883882 var249)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3935_log/979489950 var870 var1991 var2827)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r4, $r5, $r11) 

(declare-const var870!1 var2495)
(declare-const var1991!1 var1153)
(declare-const var2827!1 String)
(assert true)
(define-const var3385 var694 (getEntries/-1360825380 var1878)) ; Statement: $r12 = virtualinvoke r1.<jdk.jfr.internal.EventControl: java.util.Set getEntries()>() 
(define-const var2828 Iterator (var694_iterator/1911472585 var3385)) ; Statement: r13 = interfaceinvoke $r12.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var975 Bool (Iterator_hasNext/-1669924200 var2828)) ; Statement: $z0 = interfaceinvoke r13.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<jdk.jfr.internal.EventControl: void writeActiveSettingEvent()>() 
(assert (= (ite var975 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (writeActiveSettingEvent/-1763840751 var1878)) ; Statement: virtualinvoke r1.<jdk.jfr.internal.EventControl: void writeActiveSettingEvent()>() 

(declare-const var1878!1 var2675)
(define-const var3739 var2495 var2495-JFR_SETTING) ; Statement: $r15 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var534 var1153 var1153-INFO) ; Statement: $r14 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO> 
;(assert (var3935_log/979489950 var3739 var534 "}")) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r15, $r14, "}") 

(declare-const var3739!1 var2495)
(declare-const var534!1 var1153)
(declare-const var1465 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getInternalSetting/-155062020=([jdk.jfr.internal.SettingsManager, jdk.jfr.internal.EventControl], jdk.jfr.internal.SettingsManager$InternalSetting), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEventType/-1848430003=([jdk.jfr.internal.EventControl], jdk.jfr.internal.PlatformEventType), getLogName/-1622746903=([jdk.jfr.internal.Type], java.lang.String), cast-from-var2110-to-var3146=([jdk.jfr.internal.PlatformEventType], jdk.jfr.internal.Type), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3935_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), getEntries/-1360825380=([jdk.jfr.internal.EventControl], java.util.Set), var694_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), writeActiveSettingEvent/-1763840751=([jdk.jfr.internal.EventControl], void)}
; {var2830=jdk.jfr.internal.SettingsManager, var1967=r0, var2675=jdk.jfr.internal.EventControl, var1878=r1, var3552=jdk.jfr.internal.SettingsManager$InternalSetting, var3798=r2, var2495=jdk.jfr.internal.LogTag, var870=$r4, var1153=jdk.jfr.internal.LogLevel, var1991=$r5, var751=$r3, var3147=$r8, var2110=jdk.jfr.internal.PlatformEventType, var69=$r6, var3146=jdk.jfr.internal.Type, var1456=$r7, var2136=$r9, var249=$r10, var2827=$r11, var3935=jdk.jfr.internal.Logger, var694=java.util.Set, var3385=$r12, var2828=r13, var975=$z0, var3739=$r15, var534=$r14, var1465="}"}
; {jdk.jfr.internal.SettingsManager=var2830, r0=var1967, jdk.jfr.internal.EventControl=var2675, r1=var1878, jdk.jfr.internal.SettingsManager$InternalSetting=var3552, r2=var3798, jdk.jfr.internal.LogTag=var2495, $r4=var870, jdk.jfr.internal.LogLevel=var1153, $r5=var1991, $r3=var751, $r8=var3147, jdk.jfr.internal.PlatformEventType=var2110, $r6=var69, jdk.jfr.internal.Type=var3146, $r7=var1456, $r9=var2136, $r10=var249, $r11=var2827, jdk.jfr.internal.Logger=var3935, java.util.Set=var694, $r12=var3385, r13=var2828, $z0=var975, $r15=var3739, $r14=var534, "}"=var1465}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.SettingsManager;	r1 := @parameter0: jdk.jfr.internal.EventControl;	r2 = specialinvoke r0.<jdk.jfr.internal.SettingsManager: jdk.jfr.internal.SettingsManager$InternalSetting getInternalSetting(jdk.jfr.internal.EventControl)>(r1);	$r4 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r5 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Applied settings for ");	$r6 = virtualinvoke r1.<jdk.jfr.internal.EventControl: jdk.jfr.internal.PlatformEventType getEventType()>();	$r7 = virtualinvoke $r6.<jdk.jfr.internal.PlatformEventType: java.lang.String getLogName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r4, $r5, $r11);	$r12 = virtualinvoke r1.<jdk.jfr.internal.EventControl: java.util.Set getEntries()>();	r13 = interfaceinvoke $r12.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r13.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r1.<jdk.jfr.internal.EventControl: void writeActiveSettingEvent()>();	virtualinvoke r1.<jdk.jfr.internal.EventControl: void writeActiveSettingEvent()>();	$r15 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r14 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO>;	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r15, $r14, "}");	return
;block_num 3