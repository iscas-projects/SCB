(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1812 0)
(declare-sort var1326 0)
(declare-sort var2133 0)
(declare-sort var364 0)
(declare-sort var1274 0)
(declare-sort var2146 0)
(declare-sort var2507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2133_debug/381960894 (String) void)
(declare-fun var364_class$/422225592 (String) ClassObject)
(declare-fun var2146_instantiateByClassName/289489540 (String ClassObject var1274) var1274)
(declare-fun cast-from-var1274-to-var2507 (var1274) var2507)
(declare-fun var2133_error/-402343703 (String) void)
(declare-const null-var1812 var1812)
(declare-const null-String String)
(declare-const var364-class$org$apache$log4j$or$ObjectRenderer ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1274 var1274)
(declare-const null-var2507 var2507)
(declare-const var3090 var1812) ; Statement: r11 := @parameter0: org.apache.log4j.spi.RendererSupport 
(assert (not (= var3090 null-var1812)))
(declare-const var1127 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1127 null-String)))
(declare-const var2920 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2920 null-String)))
(define-const var2092 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2092)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2092!1 String)
(assert true)
(define-const var2495 String (append/1560614132 var2092!1 "Rendering class: [")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Rendering class: [") 
(declare-const var2092!2 String)
(assert (str.prefixof var2092!1 var2092!2))
(assert true)
(define-const var1244 String (append/1560614132 var2495 var2920)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2495!1 String)
(assert (str.prefixof var2495 var2495!1))
(assert true)
(define-const var23 String (append/1560614132 var1244 "], Rendered class: [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("], Rendered class: [") 
(declare-const var1244!1 String)
(assert (str.prefixof var1244 var1244!1))
(assert true)
(define-const var2176 String (append/1560614132 var23 var1127)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var23!1 String)
(assert (str.prefixof var23 var23!1))
(assert true)
(define-const var3098 String (append/1560614132 var2176 "].")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2176!1 String)
(assert (str.prefixof var2176 var2176!1))
(assert true)
(define-const var552 String (toString/-222306083 var3098)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2133_debug/381960894 var552)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var552!1 String)
(define-const var2206 ClassObject var364-class$org$apache$log4j$or$ObjectRenderer) ; Statement: $r9 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> 
 ; Statement: if $r9 != null goto $r24 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> 
(assert (not (not (= var2206 null-ClassObject)))) ; Negate: Cond: $r9 != null  
(define-const var3609 ClassObject (var364_class$/422225592 "org.apache.log4j.or.ObjectRenderer")) ; Statement: $r24 = staticinvoke <org.apache.log4j.or.RendererMap: java.lang.Class class$(java.lang.String)>("org.apache.log4j.or.ObjectRenderer") 
(define-const var3797 ClassObject var3609) ; Statement: <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> = $r24 
 ; Statement: goto [?= $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r1, $r24, null)] 
(assert true) ; Non Conditional
(define-const var2918 var1274 (var2146_instantiateByClassName/289489540 var2920 var3609 null-var1274)) ; Statement: $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r1, $r24, null) 
(define-const var1403 var2507 (cast-from-var1274-to-var2507 var2918)) ; Statement: $r17 = (org.apache.log4j.or.ObjectRenderer) $r10 
 ; Statement: if $r17 != null goto r25 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r4) 
(assert (not (not (= var1403 null-var2507)))) ; Negate: Cond: $r17 != null  
(define-const var1067 String String-init) ; Statement: $r12 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1067)) ; Statement: specialinvoke $r12.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1067!1 String)
(assert true)
(define-const var3808 String (append/1560614132 var1067!1 "Could not instantiate renderer [")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not instantiate renderer [") 
(declare-const var1067!2 String)
(assert (str.prefixof var1067!1 var1067!2))
(assert true)
(define-const var2709 String (append/1560614132 var3808 var2920)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3808!1 String)
(assert (str.prefixof var3808 var3808!1))
(assert true)
(define-const var2660 String (append/1560614132 var2709 "].")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2709!1 String)
(assert (str.prefixof var2709 var2709!1))
(assert true)
(define-const var1174 String (toString/-222306083 var2660)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2133_error/-402343703 var1174)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r16) 

(declare-const var1174!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2133_debug/381960894=([java.lang.String], void), var364_class$/422225592=([java.lang.String], java.lang.Class), var2146_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1274-to-var2507=([java.lang.Object], org.apache.log4j.or.ObjectRenderer), var2133_error/-402343703=([java.lang.String], void)}
; {var1812=org.apache.log4j.spi.RendererSupport, var3090=r11, var1127=r4, var1326=null_type, var2920=r1, var2092=$r0, var2495=$r2, var1244=$r3, var23=$r5, var2176=$r6, var3098=$r7, var552=$r8, var2133=org.apache.log4j.helpers.LogLog, var364=org.apache.log4j.or.RendererMap, var2206=$r9, var3609=$r24, var3797=<org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>, var1274=java.lang.Object, var2146=org.apache.log4j.helpers.OptionConverter, var2918=$r10, var2507=org.apache.log4j.or.ObjectRenderer, var1403=$r17, var1067=$r12, var3808=$r13, var2709=$r14, var2660=$r15, var1174=$r16}
; {org.apache.log4j.spi.RendererSupport=var1812, r11=var3090, r4=var1127, null_type=var1326, r1=var2920, $r0=var2092, $r2=var2495, $r3=var1244, $r5=var23, $r6=var2176, $r7=var3098, $r8=var552, org.apache.log4j.helpers.LogLog=var2133, org.apache.log4j.or.RendererMap=var364, $r9=var2206, $r24=var3609, <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>=var3797, java.lang.Object=var1274, org.apache.log4j.helpers.OptionConverter=var2146, $r10=var2918, org.apache.log4j.or.ObjectRenderer=var2507, $r17=var1403, $r12=var1067, $r13=var3808, $r14=var2709, $r15=var2660, $r16=var1174}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r11 := @parameter0: org.apache.log4j.spi.RendererSupport;	r4 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Rendering class: [");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("], Rendered class: [");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>;	if $r9 != null goto $r24 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>;	$r24 = staticinvoke <org.apache.log4j.or.RendererMap: java.lang.Class class$(java.lang.String)>("org.apache.log4j.or.ObjectRenderer");	<org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> = $r24;	goto [?= $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r1, $r24, null)];	$r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r1, $r24, null);	$r17 = (org.apache.log4j.or.ObjectRenderer) $r10;	if $r17 != null goto r25 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r4);	$r12 = new java.lang.StringBuffer;	specialinvoke $r12.<java.lang.StringBuffer: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not instantiate renderer [");	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r16);	return
;block_num 4