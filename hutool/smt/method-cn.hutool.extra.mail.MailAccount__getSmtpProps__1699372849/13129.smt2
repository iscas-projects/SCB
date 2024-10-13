(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var38 0)
(declare-sort var2290 0)
(declare-sort var3704 0)
(declare-sort var3266 0)
(declare-sort var1901 0)
(declare-sort var2462 0)
(declare-sort var2386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun splitlongparameters/-1362711965 (var38) Bool)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-fun var2290_setProperty/516652314 (String String) String)
(declare-fun var3704-init () var3704)
(declare-fun <init>/964458484 (var3704) void)
(declare-fun put/1981026245 (var3266 var1901 var1901) var1901)
(declare-fun cast-from-var3704-to-var3266 (var3704) var3266)
(declare-fun cast-from-String-to-var1901 (String) var1901)
(declare-fun host/-1362711965 (var38) String)
(declare-fun port/-1362711965 (var38) Int)
(declare-fun String_valueOf/-333372740 (var1901) String)
(declare-fun cast-from-Int-to-var1901 (Int) var1901)
(declare-fun auth/-1362711965 (var38) var2462)
(declare-fun cast-from-var2462-to-var1901 (var2462) var1901)
(declare-fun timeout/-1362711965 (var38) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun connectionTimeout/-1362711965 (var38) Int)
(declare-fun writeTimeout/-1362711965 (var38) Int)
(declare-fun debug/-1362711965 (var38) Bool)
(declare-fun starttlsEnable/-1362711965 (var38) Bool)
(declare-fun sslEnable/-1362711965 (var38) var2462)
(declare-fun customProperty/-1362711965 (var38) var2386)
(declare-fun putAll/-1635325859 (var3266 var2386) void)
(declare-const null-var38 var38)
(declare-const null-var2462 var2462)
(declare-const var406 var38) ; Statement: r0 := @this: cn.hutool.extra.mail.MailAccount 
(assert (not (= var406 null-var38)))
(define-const var2223 Bool (splitlongparameters/-1362711965 var406)) ; Statement: $z0 = r0.<cn.hutool.extra.mail.MailAccount: boolean splitlongparameters> 
(define-const var3780 String (String_valueOf/-1973653463 var2223)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0) 
;(assert (var2290_setProperty/516652314 "mail.mime.splitlongparameters" var3780)) ; Statement: staticinvoke <java.lang.System: java.lang.String setProperty(java.lang.String,java.lang.String)>("mail.mime.splitlongparameters", $r1) 

(declare-const var3051 String)
(declare-const var3780!1 String)
(define-const var3233 var3704 var3704-init) ; Statement: $r22 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3233)) ; Statement: specialinvoke $r22.<java.util.Properties: void <init>()>() 

(declare-const var3233!1 var3704)
(assert true)
;(assert (put/1981026245 (cast-from-var3704-to-var3266 var3233!1) (cast-from-String-to-var1901 "mail.transport.protocol") (cast-from-String-to-var1901 "smtp"))) ; Statement: virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.transport.protocol", "smtp") 

(declare-const var3233!2 var3704)
(declare-const var1441 String)
(declare-const var1866 String)
(define-const var25 String (host/-1362711965 var406)) ; Statement: $r3 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.String host> 
(assert true)
;(assert (put/1981026245 (cast-from-var3704-to-var3266 var3233!2) (cast-from-String-to-var1901 "mail.smtp.host") (cast-from-String-to-var1901 var25))) ; Statement: virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.smtp.host", $r3) 

(declare-const var3233!3 var3704)
(declare-const var1143 String)
(declare-const var25!1 String)
(define-const var2178 Int (port/-1362711965 var406)) ; Statement: $r4 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Integer port> 
(define-const var2344 String (String_valueOf/-333372740 (cast-from-Int-to-var1901 var2178))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (put/1981026245 (cast-from-var3704-to-var3266 var3233!3) (cast-from-String-to-var1901 "mail.smtp.port") (cast-from-String-to-var1901 var2344))) ; Statement: virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.smtp.port", $r5) 

(declare-const var3233!4 var3704)
(declare-const var2234 String)
(declare-const var2344!1 String)
(define-const var943 var2462 (auth/-1362711965 var406)) ; Statement: $r6 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean auth> 
(define-const var529 String (String_valueOf/-333372740 (cast-from-var2462-to-var1901 var943))) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r6) 
(assert true)
;(assert (put/1981026245 (cast-from-var3704-to-var3266 var3233!4) (cast-from-String-to-var1901 "mail.smtp.auth") (cast-from-String-to-var1901 var529))) ; Statement: virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.smtp.auth", $r7) 

(declare-const var3233!5 var3704)
(declare-const var2844 String)
(declare-const var529!1 String)
(define-const var233 Int (timeout/-1362711965 var406)) ; Statement: $l0 = r0.<cn.hutool.extra.mail.MailAccount: long timeout> 
(define-const var858 Int (ite (> var233 0) 1 (ite (< var233 0) (- 1) 0))) ; Statement: $b1 = $l0 cmp 0L 
(define-const var1032 Int (cast-from-Int-to-Int var858)) ; Statement: $i10 = (int) $b1 
 ; Statement: if $i10 <= 0 goto $l2 = r0.<cn.hutool.extra.mail.MailAccount: long connectionTimeout> 
(assert (<= var1032 0)) ; Cond: $i10 <= 0 
(define-const var1841 Int (connectionTimeout/-1362711965 var406)) ; Statement: $l2 = r0.<cn.hutool.extra.mail.MailAccount: long connectionTimeout> 
(define-const var3238 Int (ite (> var1841 0) 1 (ite (< var1841 0) (- 1) 0))) ; Statement: $b3 = $l2 cmp 0L 
(define-const var444 Int (cast-from-Int-to-Int var3238)) ; Statement: $i11 = (int) $b3 
 ; Statement: if $i11 <= 0 goto $l4 = r0.<cn.hutool.extra.mail.MailAccount: long writeTimeout> 
(assert (<= var444 0)) ; Cond: $i11 <= 0 
(define-const var683 Int (writeTimeout/-1362711965 var406)) ; Statement: $l4 = r0.<cn.hutool.extra.mail.MailAccount: long writeTimeout> 
(define-const var298 Int (ite (> var683 0) 1 (ite (< var683 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
(define-const var2848 Int (cast-from-Int-to-Int var298)) ; Statement: $i12 = (int) $b5 
 ; Statement: if $i12 <= 0 goto $z1 = r0.<cn.hutool.extra.mail.MailAccount: boolean debug> 
(assert (<= var2848 0)) ; Cond: $i12 <= 0 
(define-const var2045 Bool (debug/-1362711965 var406)) ; Statement: $z1 = r0.<cn.hutool.extra.mail.MailAccount: boolean debug> 
(define-const var454 String (String_valueOf/-1973653463 var2045)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1) 
(assert true)
;(assert (put/1981026245 (cast-from-var3704-to-var3266 var3233!5) (cast-from-String-to-var1901 "mail.debug") (cast-from-String-to-var1901 var454))) ; Statement: virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.debug", $r8) 

(declare-const var3233!6 var3704)
(declare-const var258 String)
(declare-const var454!1 String)
(define-const var1591 Bool (starttlsEnable/-1362711965 var406)) ; Statement: $z2 = r0.<cn.hutool.extra.mail.MailAccount: boolean starttlsEnable> 
 ; Statement: if $z2 == 0 goto $r20 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean sslEnable> 
(assert (= (ite var1591 1 0) 0)) ; Cond: $z2 == 0 
(define-const var852 var2462 (sslEnable/-1362711965 var406)) ; Statement: $r20 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean sslEnable> 
 ; Statement: if null == $r20 goto $r21 = r0.<cn.hutool.extra.mail.MailAccount: java.util.Map customProperty> 
(assert (= null-var2462 var852)) ; Cond: null == $r20 
(define-const var399 var2386 (customProperty/-1362711965 var406)) ; Statement: $r21 = r0.<cn.hutool.extra.mail.MailAccount: java.util.Map customProperty> 
(assert true)
;(assert (putAll/-1635325859 (cast-from-var3704-to-var3266 var3233!6) var399)) ; Statement: virtualinvoke $r22.<java.util.Properties: void putAll(java.util.Map)>($r21) 

(declare-const var3233!7 var3704)
(declare-const var399!1 var2386)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {splitlongparameters/-1362711965=([cn.hutool.extra.mail.MailAccount], boolean), String_valueOf/-1973653463=([boolean], java.lang.String), var2290_setProperty/516652314=([java.lang.String, java.lang.String], java.lang.String), var3704-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3704-to-var3266=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var1901=([java.lang.String], java.lang.Object), host/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.String), port/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.Integer), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-Int-to-var1901=([java.lang.Integer], java.lang.Object), auth/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.Boolean), cast-from-var2462-to-var1901=([java.lang.Boolean], java.lang.Object), timeout/-1362711965=([cn.hutool.extra.mail.MailAccount], long), cast-from-Int-to-Int=([byte], int), connectionTimeout/-1362711965=([cn.hutool.extra.mail.MailAccount], long), writeTimeout/-1362711965=([cn.hutool.extra.mail.MailAccount], long), debug/-1362711965=([cn.hutool.extra.mail.MailAccount], boolean), starttlsEnable/-1362711965=([cn.hutool.extra.mail.MailAccount], boolean), sslEnable/-1362711965=([cn.hutool.extra.mail.MailAccount], java.lang.Boolean), customProperty/-1362711965=([cn.hutool.extra.mail.MailAccount], java.util.Map), putAll/-1635325859=([java.util.Hashtable, java.util.Map], void)}
; {var38=cn.hutool.extra.mail.MailAccount, var406=r0, var2223=$z0, var3780=$r1, var2290=java.lang.System, var3051="mail.mime.splitlongparameters", var3704=java.util.Properties, var3233=$r22, var3266=java.util.Hashtable, var1901=java.lang.Object, var1441="mail.transport.protocol", var1866="smtp", var25=$r3, var1143="mail.smtp.host", var2178=$r4, var2344=$r5, var2234="mail.smtp.port", var2462=java.lang.Boolean, var943=$r6, var529=$r7, var2844="mail.smtp.auth", var233=$l0, var858=$b1, var1032=$i10, var1841=$l2, var3238=$b3, var444=$i11, var683=$l4, var298=$b5, var2848=$i12, var2045=$z1, var454=$r8, var258="mail.debug", var1591=$z2, var852=$r20, var2386=java.util.Map, var399=$r21}
; {cn.hutool.extra.mail.MailAccount=var38, r0=var406, $z0=var2223, $r1=var3780, java.lang.System=var2290, "mail.mime.splitlongparameters"=var3051, java.util.Properties=var3704, $r22=var3233, java.util.Hashtable=var3266, java.lang.Object=var1901, "mail.transport.protocol"=var1441, "smtp"=var1866, $r3=var25, "mail.smtp.host"=var1143, $r4=var2178, $r5=var2344, "mail.smtp.port"=var2234, java.lang.Boolean=var2462, $r6=var943, $r7=var529, "mail.smtp.auth"=var2844, $l0=var233, $b1=var858, $i10=var1032, $l2=var1841, $b3=var3238, $i11=var444, $l4=var683, $b5=var298, $i12=var2848, $z1=var2045, $r8=var454, "mail.debug"=var258, $z2=var1591, $r20=var852, java.util.Map=var2386, $r21=var399}
;seq <java.lang.String: java.lang.String valueOf(boolean)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 2,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2}
;stmts r0 := @this: cn.hutool.extra.mail.MailAccount;	$z0 = r0.<cn.hutool.extra.mail.MailAccount: boolean splitlongparameters>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0);	staticinvoke <java.lang.System: java.lang.String setProperty(java.lang.String,java.lang.String)>("mail.mime.splitlongparameters", $r1);	$r22 = new java.util.Properties;	specialinvoke $r22.<java.util.Properties: void <init>()>();	virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.transport.protocol", "smtp");	$r3 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.String host>;	virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.smtp.host", $r3);	$r4 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Integer port>;	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.smtp.port", $r5);	$r6 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean auth>;	$r7 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r6);	virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.smtp.auth", $r7);	$l0 = r0.<cn.hutool.extra.mail.MailAccount: long timeout>;	$b1 = $l0 cmp 0L;	$i10 = (int) $b1;	if $i10 <= 0 goto $l2 = r0.<cn.hutool.extra.mail.MailAccount: long connectionTimeout>;	$l2 = r0.<cn.hutool.extra.mail.MailAccount: long connectionTimeout>;	$b3 = $l2 cmp 0L;	$i11 = (int) $b3;	if $i11 <= 0 goto $l4 = r0.<cn.hutool.extra.mail.MailAccount: long writeTimeout>;	$l4 = r0.<cn.hutool.extra.mail.MailAccount: long writeTimeout>;	$b5 = $l4 cmp 0L;	$i12 = (int) $b5;	if $i12 <= 0 goto $z1 = r0.<cn.hutool.extra.mail.MailAccount: boolean debug>;	$z1 = r0.<cn.hutool.extra.mail.MailAccount: boolean debug>;	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z1);	virtualinvoke $r22.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("mail.debug", $r8);	$z2 = r0.<cn.hutool.extra.mail.MailAccount: boolean starttlsEnable>;	if $z2 == 0 goto $r20 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean sslEnable>;	$r20 = r0.<cn.hutool.extra.mail.MailAccount: java.lang.Boolean sslEnable>;	if null == $r20 goto $r21 = r0.<cn.hutool.extra.mail.MailAccount: java.util.Map customProperty>;	$r21 = r0.<cn.hutool.extra.mail.MailAccount: java.util.Map customProperty>;	virtualinvoke $r22.<java.util.Properties: void putAll(java.util.Map)>($r21);	return $r22
;block_num 6