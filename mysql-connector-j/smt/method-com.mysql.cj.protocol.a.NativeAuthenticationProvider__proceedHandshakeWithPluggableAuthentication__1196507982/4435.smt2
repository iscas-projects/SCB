(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1557 0)
(declare-sort var2319 0)
(declare-sort var2727 0)
(declare-sort var1044 0)
(declare-sort var3010 0)
(declare-sort var2470 0)
(declare-sort var2187 0)
(declare-sort var2820 0)
(declare-sort var1475 0)
(declare-sort var273 0)
(declare-sort var2307 0)
(declare-sort var99 0)
(declare-sort var2055 0)
(declare-sort var2860 0)
(declare-sort var74 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var74!class ClassObject)
(declare-fun protocol/-714190539 (var1557) var2727)
(declare-fun var2727_getServerSession/-1168982903 (var2727) var1044)
(declare-fun authenticationPlugins/-714190539 (var1557) var3010)
(declare-fun var1044_getCharsetSettings/-848071942 (var1044) var2470)
(declare-fun var2470_configurePreHandshake/1531994779 (var2470 Bool) Int)
(declare-fun clientDefaultAuthenticationPluginExplicitelySet/-714190539 (var1557) Bool)
(declare-fun clientDefaultAuthenticationPluginName/-714190539 (var1557) String)
(declare-fun getAuthenticationPlugin/2108285911 (var1557 String) var2187)
(declare-fun checkConfidentiality/655401469 (var1557 var2187) void)
(declare-fun var2319-init () var2319)
(declare-fun seed/-714190539 (var1557) String)
(declare-fun var1475_getBytes/-1177224413 (String) (Array Int Int))
(declare-fun <init>/1767147053 (var2319 (Array Int Int)) void)
(declare-fun serverDefaultAuthenticationPluginName/-714190539 (var1557) String)
(declare-fun var273-init () var273)
(declare-fun <init>/-325640736 (var273) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2307_getString/-1547297038 (String) String)
(declare-fun getExceptionInterceptor/-2131105144 (var1557) var99)
(declare-fun var2860_createException/-988168188 (ClassObject String var99) var2055)
(declare-fun cast-from-var2055-to-var74 (var2055) var74)
(declare-const null-var1557 var1557)
(declare-const null-var2319 var2319)
(declare-const null-var3010 var3010)
(declare-const null-var2187 var2187)
(declare-const var2820-PLUGIN_NAME String)
(declare-const var1096 var1557) ; Statement: r0 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider 
(assert (not (= var1096 null-var1557)))
(declare-const var697 var2319) ; Statement: r4 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload 
(assert (not (= var697 null-var2319)))
(define-const var1641 var2727 (protocol/-714190539 var1096)) ; Statement: $r1 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.Protocol protocol> 
(define-const var2155 var1044 (var2727_getServerSession/-1168982903 var1641)) ; Statement: r2 = interfaceinvoke $r1.<com.mysql.cj.protocol.Protocol: com.mysql.cj.protocol.ServerSession getServerSession()>() 
(define-const var1078 var3010 (authenticationPlugins/-714190539 var1096)) ; Statement: $r3 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.util.Map authenticationPlugins> 
 ; Statement: if $r3 != null goto z13 = 1 
(assert (not (= var1078 null-var3010))) ; Cond: $r3 != null 
(define-const var2073 Bool (ite (= 1 1) true false)) ; Statement: z13 = 1 
(define-const var740 Bool (ite (= 1 1) true false)) ; Statement: z18 = 1 
(define-const var341 Bool (ite (= 1 1) true false)) ; Statement: z17 = 1 
 ; Statement: if r4 == null goto $r5 = interfaceinvoke r2.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
(assert (= var697 null-var2319)) ; Cond: r4 == null 
(define-const var3182 var2470 (var1044_getCharsetSettings/-848071942 var2155)) ; Statement: $r5 = interfaceinvoke r2.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>() 
;(assert (var2470_configurePreHandshake/1531994779 var3182 var740)) ; Statement: interfaceinvoke $r5.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(z18) 

(declare-const var3182!1 var2470)
(declare-const var740!1 Bool)
(define-const var672 Bool (clientDefaultAuthenticationPluginExplicitelySet/-714190539 var1096)) ; Statement: $z0 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean clientDefaultAuthenticationPluginExplicitelySet> 
 ; Statement: if $z0 == 0 goto $r6 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String serverDefaultAuthenticationPluginName> 
(assert (not (= (ite var672 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3627 String (clientDefaultAuthenticationPluginName/-714190539 var1096)) ; Statement: r64 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String clientDefaultAuthenticationPluginName> 
 ; Statement: goto [?= $r66 = specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.AuthenticationPlugin getAuthenticationPlugin(java.lang.String)>(r64)] 
(assert true) ; Non Conditional
(assert true)
(define-const var505 var2187 (getAuthenticationPlugin/2108285911 var1096 var3627)) ; Statement: $r66 = specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.AuthenticationPlugin getAuthenticationPlugin(java.lang.String)>(r64) 
(define-const var1630 var2187 var505) ; Statement: r67 = $r66 
 ; Statement: if $r66 != null goto z14 = 0 
(assert (not (= var505 null-var2187))) ; Cond: $r66 != null 
(define-const var1713 Bool (ite (= 1 0) true false)) ; Statement: z14 = 0 
(define-const var1852 String var2820-PLUGIN_NAME) ; Statement: $r7 = <com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String PLUGIN_NAME> 
(assert true)
(define-const var2685 Bool (= var3627 var1852)) ; Statement: $z1 = virtualinvoke r64.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z1 == 0 goto specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: void checkConfidentiality(com.mysql.cj.protocol.AuthenticationPlugin)>(r67) 
(assert (= (ite var2685 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (checkConfidentiality/655401469 var1096 var1630)) ; Statement: specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: void checkConfidentiality(com.mysql.cj.protocol.AuthenticationPlugin)>(r67) 

(declare-const var1096!1 var1557)
(declare-const var1630!1 var2187)
(define-const var3978 var2319 var2319-init) ; Statement: $r82 = new com.mysql.cj.protocol.a.NativePacketPayload 
(define-const var763 String (seed/-714190539 var1096!1)) ; Statement: $r69 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String seed> 
(define-const var1295 (Array Int Int) (var1475_getBytes/-1177224413 var763)) ; Statement: $r70 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String)>($r69) 
(assert true)
;(assert (<init>/1767147053 var3978 var1295)) ; Statement: specialinvoke $r82.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(byte[])>($r70) 

(declare-const var3978!1 var2319)
(declare-const var1295!1 (Array Int Int))
(define-const var3703 var2319 var3978!1) ; Statement: r71 = $r82 
(define-const var1905 String (serverDefaultAuthenticationPluginName/-714190539 var1096!1)) ; Statement: r72 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String serverDefaultAuthenticationPluginName> 
(define-const var3789 var273 var273-init) ; Statement: $r83 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3789)) ; Statement: specialinvoke $r83.<java.util.ArrayList: void <init>()>() 

(declare-const var3789!1 var273)
(define-const var2975 Bool (ite (= 1 1) true false)) ; Statement: z15 = 1 
(define-const var2722 Int 1) ; Statement: i5 = 1 
(define-const var2460 Int 100) ; Statement: i6 = 100 
(assert true) ; Non Conditional
(define-const var3734 Int var2460) ; Statement: $i7 = i6 
(define-const var283 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var2460!1 Int (+ var2460 var283)) ; Statement: i6 = i6 + $i9 
 ; Statement: if 0 >= $i7 goto (branch) 
(assert (>= 0 var3734)) ; Cond: 0 >= $i7 
 ; Statement: if i6 != 0 goto $r8 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.Protocol protocol> 
(assert (not (not (= var2460!1 0)))) ; Negate: Cond: i6 != 0  
(define-const var1618 String (var2307_getString/-1547297038 "CommunicationsException.TooManyAuthenticationPluginNegotiations")) ; Statement: $r12 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("CommunicationsException.TooManyAuthenticationPluginNegotiations") 
(assert true)
(define-const var1402 var99 (getExceptionInterceptor/-2131105144 var1096!1)) ; Statement: $r11 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var3951 var2055 (var2860_createException/-988168188 var74!class var1618 var1402)) ; Statement: $r13 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r12, $r11) 
(define-const var1885 var74 (cast-from-var2055-to-var74 var3951)) ; Statement: $r14 = (com.mysql.cj.exceptions.WrongArgumentException) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {protocol/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], com.mysql.cj.protocol.Protocol), var2727_getServerSession/-1168982903=([com.mysql.cj.protocol.Protocol], com.mysql.cj.protocol.ServerSession), authenticationPlugins/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.util.Map), var1044_getCharsetSettings/-848071942=([com.mysql.cj.protocol.ServerSession], com.mysql.cj.CharsetSettings), var2470_configurePreHandshake/1531994779=([com.mysql.cj.CharsetSettings, boolean], int), clientDefaultAuthenticationPluginExplicitelySet/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], boolean), clientDefaultAuthenticationPluginName/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), getAuthenticationPlugin/2108285911=([com.mysql.cj.protocol.a.NativeAuthenticationProvider, java.lang.String], com.mysql.cj.protocol.AuthenticationPlugin), checkConfidentiality/655401469=([com.mysql.cj.protocol.a.NativeAuthenticationProvider, com.mysql.cj.protocol.AuthenticationPlugin], void), var2319-init=([], com.mysql.cj.protocol.a.NativePacketPayload), seed/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), var1475_getBytes/-1177224413=([java.lang.String], byte[]), <init>/1767147053=([com.mysql.cj.protocol.a.NativePacketPayload, byte[]], void), serverDefaultAuthenticationPluginName/-714190539=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], java.lang.String), var273-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-Int-to-Int=([int], int), var2307_getString/-1547297038=([java.lang.String], java.lang.String), getExceptionInterceptor/-2131105144=([com.mysql.cj.protocol.a.NativeAuthenticationProvider], com.mysql.cj.exceptions.ExceptionInterceptor), var2860_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var2055-to-var74=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var1557=com.mysql.cj.protocol.a.NativeAuthenticationProvider, var1096=r0, var2319=com.mysql.cj.protocol.a.NativePacketPayload, var697=r4, var2727=com.mysql.cj.protocol.Protocol, var1641=$r1, var1044=com.mysql.cj.protocol.ServerSession, var2155=r2, var3010=java.util.Map, var1078=$r3, var2073=z13, var740=z18, var341=z17, var2470=com.mysql.cj.CharsetSettings, var3182=$r5, var672=$z0, var3627=r64, var2187=com.mysql.cj.protocol.AuthenticationPlugin, var505=$r66, var1630=r67, var1713=z14, var2820=com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin, var1852=$r7, var2685=$z1, var3978=$r82, var763=$r69, var1475=com.mysql.cj.util.StringUtils, var1295=$r70, var3703=r71, var1905=r72, var273=java.util.ArrayList, var3789=$r83, var2975=z15, var2722=i5, var2460=i6, var3734=$i7, var283=$i9, var2307=com.mysql.cj.Messages, var1618=$r12, var99=com.mysql.cj.exceptions.ExceptionInterceptor, var1402=$r11, var2055=com.mysql.cj.exceptions.CJException, var2860=com.mysql.cj.exceptions.ExceptionFactory, var74=com.mysql.cj.exceptions.WrongArgumentException, var3951=$r13, var1885=$r14}
; {com.mysql.cj.protocol.a.NativeAuthenticationProvider=var1557, r0=var1096, com.mysql.cj.protocol.a.NativePacketPayload=var2319, r4=var697, com.mysql.cj.protocol.Protocol=var2727, $r1=var1641, com.mysql.cj.protocol.ServerSession=var1044, r2=var2155, java.util.Map=var3010, $r3=var1078, z13=var2073, z18=var740, z17=var341, com.mysql.cj.CharsetSettings=var2470, $r5=var3182, $z0=var672, r64=var3627, com.mysql.cj.protocol.AuthenticationPlugin=var2187, $r66=var505, r67=var1630, z14=var1713, com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin=var2820, $r7=var1852, $z1=var2685, $r82=var3978, $r69=var763, com.mysql.cj.util.StringUtils=var1475, $r70=var1295, r71=var3703, r72=var1905, java.util.ArrayList=var273, $r83=var3789, z15=var2975, i5=var2722, i6=var2460, $i7=var3734, $i9=var283, com.mysql.cj.Messages=var2307, $r12=var1618, com.mysql.cj.exceptions.ExceptionInterceptor=var99, $r11=var1402, com.mysql.cj.exceptions.CJException=var2055, com.mysql.cj.exceptions.ExceptionFactory=var2860, com.mysql.cj.exceptions.WrongArgumentException=var74, $r13=var3951, $r14=var1885}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.NativeAuthenticationProvider;	r4 := @parameter0: com.mysql.cj.protocol.a.NativePacketPayload;	$r1 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.Protocol protocol>;	r2 = interfaceinvoke $r1.<com.mysql.cj.protocol.Protocol: com.mysql.cj.protocol.ServerSession getServerSession()>();	$r3 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.util.Map authenticationPlugins>;	if $r3 != null goto z13 = 1;	z13 = 1;	z18 = 1;	z17 = 1;	if r4 == null goto $r5 = interfaceinvoke r2.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	$r5 = interfaceinvoke r2.<com.mysql.cj.protocol.ServerSession: com.mysql.cj.CharsetSettings getCharsetSettings()>();	interfaceinvoke $r5.<com.mysql.cj.CharsetSettings: int configurePreHandshake(boolean)>(z18);	$z0 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: boolean clientDefaultAuthenticationPluginExplicitelySet>;	if $z0 == 0 goto $r6 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String serverDefaultAuthenticationPluginName>;	r64 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String clientDefaultAuthenticationPluginName>;	goto [?= $r66 = specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.AuthenticationPlugin getAuthenticationPlugin(java.lang.String)>(r64)];	$r66 = specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.AuthenticationPlugin getAuthenticationPlugin(java.lang.String)>(r64);	r67 = $r66;	if $r66 != null goto z14 = 0;	z14 = 0;	$r7 = <com.mysql.cj.protocol.a.authentication.Sha256PasswordPlugin: java.lang.String PLUGIN_NAME>;	$z1 = virtualinvoke r64.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z1 == 0 goto specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: void checkConfidentiality(com.mysql.cj.protocol.AuthenticationPlugin)>(r67);	specialinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: void checkConfidentiality(com.mysql.cj.protocol.AuthenticationPlugin)>(r67);	$r82 = new com.mysql.cj.protocol.a.NativePacketPayload;	$r69 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String seed>;	$r70 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String)>($r69);	specialinvoke $r82.<com.mysql.cj.protocol.a.NativePacketPayload: void <init>(byte[])>($r70);	r71 = $r82;	r72 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: java.lang.String serverDefaultAuthenticationPluginName>;	$r83 = new java.util.ArrayList;	specialinvoke $r83.<java.util.ArrayList: void <init>()>();	z15 = 1;	i5 = 1;	i6 = 100;	$i7 = i6;	$i9 = (int) -1;	i6 = i6 + $i9;	if 0 >= $i7 goto (branch);	if i6 != 0 goto $r8 = r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.protocol.Protocol protocol>;	$r12 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("CommunicationsException.TooManyAuthenticationPluginNegotiations");	$r11 = virtualinvoke r0.<com.mysql.cj.protocol.a.NativeAuthenticationProvider: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r13 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r12, $r11);	$r14 = (com.mysql.cj.exceptions.WrongArgumentException) $r13;	throw $r14
;block_num 10