(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var2011 0)
(declare-sort var267 0)
(declare-sort var1181 0)
(declare-sort var3005 0)
(declare-sort var2659 0)
(declare-sort var3697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var1181 var3005) void)
(declare-fun cast-from-var267-to-var1181 (var267) var1181)
(declare-fun cast-from-String-to-var3005 (String) var3005)
(declare-fun var3389_class$/-1112219777 (String) ClassObject)
(declare-fun var2659_instantiateByClassName/289489540 (String ClassObject var3005) var3005)
(declare-fun cast-from-var3005-to-var3697 (var3005) var3697)
(declare-fun var3697_setName/-931668506 (var3697 String) void)
(declare-fun logger/-1781109871 (var3389) var267)
(declare-fun addAppender/1138055244 (var1181 var3697) void)
(declare-const null-var3389 var3389)
(declare-const null-String String)
(declare-const var3389-cat var267)
(declare-const var3389-class$org$apache$log4j$Appender ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3005 var3005)
(declare-const var3275 var3389) ; Statement: r11 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var3275 null-var3389)))
(declare-const var3240 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3240 null-String)))
(declare-const var45 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var45 null-String)))
(define-const var1431 var267 var3389-cat) ; Statement: $r1 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var2034 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2034)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2034!1 String)
(assert true)
(define-const var2810 String (append/1560614132 var2034!1 "addAppender called with ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppender called with ") 
(declare-const var2034!2 String)
(assert (str.prefixof var2034!1 var2034!2))
(assert true)
(define-const var3927 String (append/1560614132 var2810 var3240)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var2810!1 String)
(assert (str.prefixof var2810 var2810!1))
(assert true)
(define-const var3250 String (append/1560614132 var3927 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3927!1 String)
(assert (str.prefixof var3927 var3927!1))
(assert true)
(define-const var3612 String (append/1560614132 var3250 var45)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var3250!1 String)
(assert (str.prefixof var3250 var3250!1))
(assert true)
(define-const var1545 String (toString/-222306083 var3612)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var267-to-var1181 var1431) (cast-from-String-to-var3005 var1545))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8) 

(declare-const var1431!1 var267)
(declare-const var1545!1 String)
(define-const var3465 ClassObject var3389-class$org$apache$log4j$Appender) ; Statement: $r9 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> 
 ; Statement: if $r9 != null goto $r14 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> 
(assert (not (not (= var3465 null-ClassObject)))) ; Negate: Cond: $r9 != null  
(define-const var2112 ClassObject (var3389_class$/-1112219777 "org.apache.log4j.Appender")) ; Statement: $r14 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$(java.lang.String)>("org.apache.log4j.Appender") 
(define-const var3333 ClassObject var2112) ; Statement: <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> = $r14 
 ; Statement: goto [?= $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r2, $r14, null)] 
(assert true) ; Non Conditional
(define-const var3815 var3005 (var2659_instantiateByClassName/289489540 var3240 var2112 null-var3005)) ; Statement: $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r2, $r14, null) 
(define-const var234 var3697 (cast-from-var3005-to-var3697 var3815)) ; Statement: $r13 = (org.apache.log4j.Appender) $r10 
;(assert (var3697_setName/-931668506 var234 var45)) ; Statement: interfaceinvoke $r13.<org.apache.log4j.Appender: void setName(java.lang.String)>(r5) 

(declare-const var234!1 var3697)
(declare-const var45!1 String)
(define-const var3813 var267 (logger/-1781109871 var3275)) ; Statement: $r12 = r11.<org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger logger> 
(assert true)
;(assert (addAppender/1138055244 (cast-from-var267-to-var1181 var3813) var234!1)) ; Statement: virtualinvoke $r12.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>($r13) 

(declare-const var3813!1 var267)
(declare-const var234!2 var3697)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var267-to-var1181=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var3005=([java.lang.String], java.lang.Object), var3389_class$/-1112219777=([java.lang.String], java.lang.Class), var2659_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var3005-to-var3697=([java.lang.Object], org.apache.log4j.Appender), var3697_setName/-931668506=([org.apache.log4j.Appender, java.lang.String], void), logger/-1781109871=([org.apache.log4j.jmx.LoggerDynamicMBean], org.apache.log4j.Logger), addAppender/1138055244=([org.apache.log4j.Category, org.apache.log4j.Appender], void)}
; {var3389=org.apache.log4j.jmx.LoggerDynamicMBean, var3275=r11, var3240=r2, var2011=null_type, var45=r5, var267=org.apache.log4j.Logger, var1431=$r1, var2034=$r0, var2810=$r3, var3927=$r4, var3250=$r6, var3612=$r7, var1545=$r8, var1181=org.apache.log4j.Category, var3005=java.lang.Object, var3465=$r9, var2112=$r14, var3333=<org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>, var2659=org.apache.log4j.helpers.OptionConverter, var3815=$r10, var3697=org.apache.log4j.Appender, var234=$r13, var3813=$r12}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var3389, r11=var3275, r2=var3240, null_type=var2011, r5=var45, org.apache.log4j.Logger=var267, $r1=var1431, $r0=var2034, $r3=var2810, $r4=var3927, $r6=var3250, $r7=var3612, $r8=var1545, org.apache.log4j.Category=var1181, java.lang.Object=var3005, $r9=var3465, $r14=var2112, <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>=var3333, org.apache.log4j.helpers.OptionConverter=var2659, $r10=var3815, org.apache.log4j.Appender=var3697, $r13=var234, $r12=var3813}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppender called with ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8);	$r9 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>;	if $r9 != null goto $r14 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>;	$r14 = staticinvoke <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$(java.lang.String)>("org.apache.log4j.Appender");	<org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> = $r14;	goto [?= $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r2, $r14, null)];	$r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r2, $r14, null);	$r13 = (org.apache.log4j.Appender) $r10;	interfaceinvoke $r13.<org.apache.log4j.Appender: void setName(java.lang.String)>(r5);	$r12 = r11.<org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger logger>;	virtualinvoke $r12.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>($r13);	return
;block_num 3