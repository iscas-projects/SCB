(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3291 0)
(declare-sort var2456 0)
(declare-sort var275 0)
(declare-sort var48 0)
(declare-sort var1297 0)
(declare-sort var3507 0)
(declare-sort var3689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var275_debug/381960894 (String) void)
(declare-fun var3507_instantiateByClassName/289489540 (String ClassObject var1297) var1297)
(declare-fun cast-from-var1297-to-var3689 (var1297) var3689)
(declare-fun var275_error/-402343703 (String) void)
(declare-const null-var3291 var3291)
(declare-const null-String String)
(declare-const var48-class$org$apache$log4j$or$ObjectRenderer ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1297 var1297)
(declare-const null-var3689 var3689)
(declare-const var2083 var3291) ; Statement: r11 := @parameter0: org.apache.log4j.spi.RendererSupport 
(assert (not (= var2083 null-var3291)))
(declare-const var1507 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1507 null-String)))
(declare-const var3203 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3203 null-String)))
(define-const var497 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var497)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var497!1 String)
(assert true)
(define-const var3342 String (append/1560614132 var497!1 "Rendering class: [")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Rendering class: [") 
(declare-const var497!2 String)
(assert (str.prefixof var497!1 var497!2))
(assert true)
(define-const var2375 String (append/1560614132 var3342 var3203)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3342!1 String)
(assert (str.prefixof var3342 var3342!1))
(assert true)
(define-const var1334 String (append/1560614132 var2375 "], Rendered class: [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("], Rendered class: [") 
(declare-const var2375!1 String)
(assert (str.prefixof var2375 var2375!1))
(assert true)
(define-const var554 String (append/1560614132 var1334 var1507)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var1334!1 String)
(assert (str.prefixof var1334 var1334!1))
(assert true)
(define-const var514 String (append/1560614132 var554 "].")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var554!1 String)
(assert (str.prefixof var554 var554!1))
(assert true)
(define-const var1594 String (toString/-222306083 var514)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var275_debug/381960894 var1594)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1594!1 String)
(define-const var2244 ClassObject var48-class$org$apache$log4j$or$ObjectRenderer) ; Statement: $r9 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> 
 ; Statement: if $r9 != null goto $r24 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> 
(assert (not (= var2244 null-ClassObject))) ; Cond: $r9 != null 
(define-const var3190 ClassObject var48-class$org$apache$log4j$or$ObjectRenderer) ; Statement: $r24 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer> 
(assert true) ; Non Conditional
(define-const var1287 var1297 (var3507_instantiateByClassName/289489540 var3203 var3190 null-var1297)) ; Statement: $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r1, $r24, null) 
(define-const var1758 var3689 (cast-from-var1297-to-var3689 var1287)) ; Statement: $r17 = (org.apache.log4j.or.ObjectRenderer) $r10 
 ; Statement: if $r17 != null goto r25 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r4) 
(assert (not (not (= var1758 null-var3689)))) ; Negate: Cond: $r17 != null  
(define-const var2865 String String-init) ; Statement: $r12 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2865)) ; Statement: specialinvoke $r12.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2865!1 String)
(assert true)
(define-const var1500 String (append/1560614132 var2865!1 "Could not instantiate renderer [")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not instantiate renderer [") 
(declare-const var2865!2 String)
(assert (str.prefixof var2865!1 var2865!2))
(assert true)
(define-const var2792 String (append/1560614132 var1500 var3203)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1500!1 String)
(assert (str.prefixof var1500 var1500!1))
(assert true)
(define-const var1264 String (append/1560614132 var2792 "].")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2792!1 String)
(assert (str.prefixof var2792 var2792!1))
(assert true)
(define-const var337 String (toString/-222306083 var1264)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var275_error/-402343703 var337)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r16) 

(declare-const var337!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var275_debug/381960894=([java.lang.String], void), var3507_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1297-to-var3689=([java.lang.Object], org.apache.log4j.or.ObjectRenderer), var275_error/-402343703=([java.lang.String], void)}
; {var3291=org.apache.log4j.spi.RendererSupport, var2083=r11, var1507=r4, var2456=null_type, var3203=r1, var497=$r0, var3342=$r2, var2375=$r3, var1334=$r5, var554=$r6, var514=$r7, var1594=$r8, var275=org.apache.log4j.helpers.LogLog, var48=org.apache.log4j.or.RendererMap, var2244=$r9, var3190=$r24, var1297=java.lang.Object, var3507=org.apache.log4j.helpers.OptionConverter, var1287=$r10, var3689=org.apache.log4j.or.ObjectRenderer, var1758=$r17, var2865=$r12, var1500=$r13, var2792=$r14, var1264=$r15, var337=$r16}
; {org.apache.log4j.spi.RendererSupport=var3291, r11=var2083, r4=var1507, null_type=var2456, r1=var3203, $r0=var497, $r2=var3342, $r3=var2375, $r5=var1334, $r6=var554, $r7=var514, $r8=var1594, org.apache.log4j.helpers.LogLog=var275, org.apache.log4j.or.RendererMap=var48, $r9=var2244, $r24=var3190, java.lang.Object=var1297, org.apache.log4j.helpers.OptionConverter=var3507, $r10=var1287, org.apache.log4j.or.ObjectRenderer=var3689, $r17=var1758, $r12=var2865, $r13=var1500, $r14=var2792, $r15=var1264, $r16=var337}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r11 := @parameter0: org.apache.log4j.spi.RendererSupport;	r4 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Rendering class: [");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("], Rendered class: [");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>;	if $r9 != null goto $r24 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>;	$r24 = <org.apache.log4j.or.RendererMap: java.lang.Class class$org$apache$log4j$or$ObjectRenderer>;	$r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r1, $r24, null);	$r17 = (org.apache.log4j.or.ObjectRenderer) $r10;	if $r17 != null goto r25 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r4);	$r12 = new java.lang.StringBuffer;	specialinvoke $r12.<java.lang.StringBuffer: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not instantiate renderer [");	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r16);	return
;block_num 4