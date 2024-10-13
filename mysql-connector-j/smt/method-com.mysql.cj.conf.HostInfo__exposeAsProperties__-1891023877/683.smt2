(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var921 0)
(declare-sort var3518 0)
(declare-sort var2576 0)
(declare-sort var2368 0)
(declare-sort var3395 0)
(declare-sort var1845 0)
(declare-sort var1489 0)
(declare-sort var3703 0)
(declare-sort var2704 0)
(declare-sort var1834 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3518-init () var3518)
(declare-fun <init>/964458484 (var3518) void)
(declare-fun hostProperties/-1521200206 (var921) var2576)
(declare-fun var2576_entrySet/1101202697 (var2576) var2368)
(declare-fun var1845_stream/-1288525013 (var1845) var3395)
(declare-fun cast-from-var2368-to-var1845 (var2368) var1845)
(declare-fun var3703_bootstrap$/-1067874463 (var3518) var1489)
(declare-fun var3395_forEach/1037804367 (var3395 var1489) void)
(declare-fun getKeyName/-200443258 (var2704) String)
(declare-fun getHost/28295174 (var921) String)
(declare-fun setProperty/703705272 (var3518 String String) var2043)
(declare-fun getPort/402708843 (var921) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun getUser/-1217531133 (var921) String)
(declare-fun getPassword/-722542157 (var921) String)
(declare-const null-var921 var921)
(declare-const var2704-HOST var2704)
(declare-const var2704-PORT var2704)
(declare-const null-String String)
(declare-const var3069 var921) ; Statement: r1 := @this: com.mysql.cj.conf.HostInfo 
(assert (not (= var3069 null-var921)))
(define-const var992 var3518 var3518-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var992)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var992!1 var3518)
(define-const var3704 var2576 (hostProperties/-1521200206 var3069)) ; Statement: $r2 = r1.<com.mysql.cj.conf.HostInfo: java.util.Map hostProperties> 
(define-const var1072 var2368 (var2576_entrySet/1101202697 var3704)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.util.Set entrySet()>() 
(define-const var39 var3395 (var1845_stream/-1288525013 (cast-from-var2368-to-var1845 var1072))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Set: java.util.stream.Stream stream()>() 
(define-const var1754 var1489 (var3703_bootstrap$/-1067874463 var992!1)) ; Statement: $r4 = staticinvoke <com.mysql.cj.conf.HostInfo$lambda_exposeAsProperties_0__36: java.util.function.Consumer bootstrap$(java.util.Properties)>($r0) 
;(assert (var3395_forEach/1037804367 var39 var1754)) ; Statement: interfaceinvoke $r5.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r4) 

(declare-const var39!1 var3395)
(declare-const var1754!1 var1489)
(define-const var3530 var2704 var2704-HOST) ; Statement: $r6 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey HOST> 
(assert true)
(define-const var3384 String (getKeyName/-200443258 var3530)) ; Statement: $r8 = virtualinvoke $r6.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var1974 String (getHost/28295174 var3069)) ; Statement: $r7 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>() 
(assert true)
;(assert (setProperty/703705272 var992!1 var3384 var1974)) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>($r8, $r7) 

(declare-const var992!2 var3518)
(declare-const var3384!1 String)
(declare-const var1974!1 String)
(define-const var3490 var2704 var2704-PORT) ; Statement: $r9 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PORT> 
(assert true)
(define-const var527 String (getKeyName/-200443258 var3490)) ; Statement: $r11 = virtualinvoke $r9.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var1332 Int (getPort/402708843 var3069)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: int getPort()>() 
(define-const var2290 String (String_valueOf/1240665136 var1332)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (setProperty/703705272 var992!2 var527 var2290)) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>($r11, $r10) 

(declare-const var992!3 var3518)
(declare-const var527!1 String)
(declare-const var2290!1 String)
(assert true)
(define-const var522 String (getUser/-1217531133 var3069)) ; Statement: $r12 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getUser()>() 
 ; Statement: if $r12 == null goto $r13 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getPassword()>() 
(assert (= var522 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var1096 String (getPassword/-722542157 var3069)) ; Statement: $r13 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getPassword()>() 
 ; Statement: if $r13 == null goto return $r0 
(assert (= var1096 null-String)) ; Cond: $r13 == null 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3518-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), hostProperties/-1521200206=([com.mysql.cj.conf.HostInfo], java.util.Map), var2576_entrySet/1101202697=([java.util.Map], java.util.Set), var1845_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var2368-to-var1845=([java.util.Set], java.util.Collection), var3703_bootstrap$/-1067874463=([java.util.Properties], java.util.function.Consumer), var3395_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), getHost/28295174=([com.mysql.cj.conf.HostInfo], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object), getPort/402708843=([com.mysql.cj.conf.HostInfo], int), String_valueOf/1240665136=([int], java.lang.String), getUser/-1217531133=([com.mysql.cj.conf.HostInfo], java.lang.String), getPassword/-722542157=([com.mysql.cj.conf.HostInfo], java.lang.String)}
; {var921=com.mysql.cj.conf.HostInfo, var3069=r1, var3518=java.util.Properties, var992=$r0, var2576=java.util.Map, var3704=$r2, var2368=java.util.Set, var1072=$r3, var3395=java.util.stream.Stream, var1845=java.util.Collection, var39=$r5, var1489=java.util.function.Consumer, var3703=com.mysql.cj.conf.HostInfo$lambda_exposeAsProperties_0__36, var1754=$r4, var2704=com.mysql.cj.conf.PropertyKey, var3530=$r6, var3384=$r8, var1974=$r7, var3490=$r9, var527=$r11, var1332=$i0, var2290=$r10, var522=$r12, var1834=null_type, var1096=$r13, var2043=java.lang.Object}
; {com.mysql.cj.conf.HostInfo=var921, r1=var3069, java.util.Properties=var3518, $r0=var992, java.util.Map=var2576, $r2=var3704, java.util.Set=var2368, $r3=var1072, java.util.stream.Stream=var3395, java.util.Collection=var1845, $r5=var39, java.util.function.Consumer=var1489, com.mysql.cj.conf.HostInfo$lambda_exposeAsProperties_0__36=var3703, $r4=var1754, com.mysql.cj.conf.PropertyKey=var2704, $r6=var3530, $r8=var3384, $r7=var1974, $r9=var3490, $r11=var527, $i0=var1332, $r10=var2290, $r12=var522, null_type=var1834, $r13=var1096, java.lang.Object=var2043}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r1 := @this: com.mysql.cj.conf.HostInfo;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = r1.<com.mysql.cj.conf.HostInfo: java.util.Map hostProperties>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.util.Set entrySet()>();	$r5 = interfaceinvoke $r3.<java.util.Set: java.util.stream.Stream stream()>();	$r4 = staticinvoke <com.mysql.cj.conf.HostInfo$lambda_exposeAsProperties_0__36: java.util.function.Consumer bootstrap$(java.util.Properties)>($r0);	interfaceinvoke $r5.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r4);	$r6 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey HOST>;	$r8 = virtualinvoke $r6.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r7 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getHost()>();	virtualinvoke $r0.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>($r8, $r7);	$r9 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey PORT>;	$r11 = virtualinvoke $r9.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$i0 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: int getPort()>();	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r0.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>($r11, $r10);	$r12 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getUser()>();	if $r12 == null goto $r13 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getPassword()>();	$r13 = virtualinvoke r1.<com.mysql.cj.conf.HostInfo: java.lang.String getPassword()>();	if $r13 == null goto return $r0;	return $r0
;block_num 3