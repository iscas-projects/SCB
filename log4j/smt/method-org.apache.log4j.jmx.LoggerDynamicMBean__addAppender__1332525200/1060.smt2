(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1274 0)
(declare-sort var80 0)
(declare-sort var3185 0)
(declare-sort var3455 0)
(declare-sort var3498 0)
(declare-sort var2503 0)
(declare-sort var1758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun debug/1611708727 (var3455 var3498) void)
(declare-fun cast-from-var3185-to-var3455 (var3185) var3455)
(declare-fun cast-from-String-to-var3498 (String) var3498)
(declare-fun var2503_instantiateByClassName/289489540 (String ClassObject var3498) var3498)
(declare-fun cast-from-var3498-to-var1758 (var3498) var1758)
(declare-fun var1758_setName/-931668506 (var1758 String) void)
(declare-fun logger/-1781109871 (var1274) var3185)
(declare-fun addAppender/1138055244 (var3455 var1758) void)
(declare-const null-var1274 var1274)
(declare-const null-String String)
(declare-const var1274-cat var3185)
(declare-const var1274-class$org$apache$log4j$Appender ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3498 var3498)
(declare-const var684 var1274) ; Statement: r11 := @this: org.apache.log4j.jmx.LoggerDynamicMBean 
(assert (not (= var684 null-var1274)))
(declare-const var560 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var560 null-String)))
(declare-const var2655 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2655 null-String)))
(define-const var2078 var3185 var1274-cat) ; Statement: $r1 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat> 
(define-const var1039 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1039)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1039!1 String)
(assert true)
(define-const var581 String (append/1560614132 var1039!1 "addAppender called with ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppender called with ") 
(declare-const var1039!2 String)
(assert (str.prefixof var1039!1 var1039!2))
(assert true)
(define-const var2291 String (append/1560614132 var581 var560)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var581!1 String)
(assert (str.prefixof var581 var581!1))
(assert true)
(define-const var1962 String (append/1560614132 var2291 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2291!1 String)
(assert (str.prefixof var2291 var2291!1))
(assert true)
(define-const var2826 String (append/1560614132 var1962 var2655)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var1962!1 String)
(assert (str.prefixof var1962 var1962!1))
(assert true)
(define-const var219 String (toString/-222306083 var2826)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (debug/1611708727 (cast-from-var3185-to-var3455 var2078) (cast-from-String-to-var3498 var219))) ; Statement: virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8) 

(declare-const var2078!1 var3185)
(declare-const var219!1 String)
(define-const var1169 ClassObject var1274-class$org$apache$log4j$Appender) ; Statement: $r9 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> 
 ; Statement: if $r9 != null goto $r14 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> 
(assert (not (= var1169 null-ClassObject))) ; Cond: $r9 != null 
(define-const var1796 ClassObject var1274-class$org$apache$log4j$Appender) ; Statement: $r14 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender> 
(assert true) ; Non Conditional
(define-const var242 var3498 (var2503_instantiateByClassName/289489540 var560 var1796 null-var3498)) ; Statement: $r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r2, $r14, null) 
(define-const var109 var1758 (cast-from-var3498-to-var1758 var242)) ; Statement: $r13 = (org.apache.log4j.Appender) $r10 
;(assert (var1758_setName/-931668506 var109 var2655)) ; Statement: interfaceinvoke $r13.<org.apache.log4j.Appender: void setName(java.lang.String)>(r5) 

(declare-const var109!1 var1758)
(declare-const var2655!1 String)
(define-const var2514 var3185 (logger/-1781109871 var684)) ; Statement: $r12 = r11.<org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger logger> 
(assert true)
;(assert (addAppender/1138055244 (cast-from-var3185-to-var3455 var2514) var109!1)) ; Statement: virtualinvoke $r12.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>($r13) 

(declare-const var2514!1 var3185)
(declare-const var109!2 var1758)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), debug/1611708727=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var3185-to-var3455=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var3498=([java.lang.String], java.lang.Object), var2503_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var3498-to-var1758=([java.lang.Object], org.apache.log4j.Appender), var1758_setName/-931668506=([org.apache.log4j.Appender, java.lang.String], void), logger/-1781109871=([org.apache.log4j.jmx.LoggerDynamicMBean], org.apache.log4j.Logger), addAppender/1138055244=([org.apache.log4j.Category, org.apache.log4j.Appender], void)}
; {var1274=org.apache.log4j.jmx.LoggerDynamicMBean, var684=r11, var560=r2, var80=null_type, var2655=r5, var3185=org.apache.log4j.Logger, var2078=$r1, var1039=$r0, var581=$r3, var2291=$r4, var1962=$r6, var2826=$r7, var219=$r8, var3455=org.apache.log4j.Category, var3498=java.lang.Object, var1169=$r9, var1796=$r14, var2503=org.apache.log4j.helpers.OptionConverter, var242=$r10, var1758=org.apache.log4j.Appender, var109=$r13, var2514=$r12}
; {org.apache.log4j.jmx.LoggerDynamicMBean=var1274, r11=var684, r2=var560, null_type=var80, r5=var2655, org.apache.log4j.Logger=var3185, $r1=var2078, $r0=var1039, $r3=var581, $r4=var2291, $r6=var1962, $r7=var2826, $r8=var219, org.apache.log4j.Category=var3455, java.lang.Object=var3498, $r9=var1169, $r14=var1796, org.apache.log4j.helpers.OptionConverter=var2503, $r10=var242, org.apache.log4j.Appender=var1758, $r13=var109, $r12=var2514}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.log4j.jmx.LoggerDynamicMBean;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = <org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger cat>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("addAppender called with ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<org.apache.log4j.Logger: void debug(java.lang.Object)>($r8);	$r9 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>;	if $r9 != null goto $r14 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>;	$r14 = <org.apache.log4j.jmx.LoggerDynamicMBean: java.lang.Class class$org$apache$log4j$Appender>;	$r10 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r2, $r14, null);	$r13 = (org.apache.log4j.Appender) $r10;	interfaceinvoke $r13.<org.apache.log4j.Appender: void setName(java.lang.String)>(r5);	$r12 = r11.<org.apache.log4j.jmx.LoggerDynamicMBean: org.apache.log4j.Logger logger>;	virtualinvoke $r12.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>($r13);	return
;block_num 3