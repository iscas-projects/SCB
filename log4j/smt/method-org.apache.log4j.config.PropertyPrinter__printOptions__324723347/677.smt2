(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2569 0)
(declare-sort var3993 0)
(declare-sort var3135 0)
(declare-sort var3367 0)
(declare-sort var2861 0)
(declare-sort var2027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3135) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/-1226480079 (var3993 String) void)
(declare-fun var2861_getProperties/293932892 (var3135 var2027 String) void)
(declare-fun cast-from-var2569-to-var2027 (var2569) var2027)
(declare-const null-var2569 var2569)
(declare-const null-var3993 var3993)
(declare-const null-var3135 var3135)
(declare-const null-String String)
(declare-const var3339 var2569) ; Statement: r10 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var3339 null-var2569)))
(declare-const var30 var3993) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var30 null-var3993)))
(declare-const var1844 var3135) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1844 null-var3135)))
(declare-const var2367 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2367 null-String)))
(define-const var3856 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3856)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3856!1 String)
(assert true)
(define-const var130 String (append/1560614132 var3856!1 var2367)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var3856!2 String)
(assert (str.prefixof var3856!1 var3856!2))
(assert true)
(define-const var515 String (append/1560614132 var130 "=")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=") 
(declare-const var130!1 String)
(assert (str.prefixof var130 var130!1))
(assert true)
(define-const var1297 ClassObject (getClass/1258963082 var1844)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2846 String (getName/-1958580599 var1297)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3644 String (append/1560614132 var515 var2846)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var515!1 String)
(assert (str.prefixof var515 var515!1))
(assert true)
(define-const var2824 String (toString/-222306083 var3644)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var30 var2824)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var30!1 var3993)
(declare-const var2824!1 String)
(define-const var1513 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1513)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1513!1 String)
(assert true)
(define-const var3190 String (append/1560614132 var1513!1 var2367)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var1513!2 String)
(assert (str.prefixof var1513!1 var1513!2))
(assert true)
(define-const var2917 String (append/1560614132 var3190 ".")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".") 
(declare-const var3190!1 String)
(assert (str.prefixof var3190 var3190!1))
(assert true)
(define-const var2555 String (toString/-222306083 var2917)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2861_getProperties/293932892 var1844 (cast-from-var2569-to-var2027 var3339) var2555)) ; Statement: staticinvoke <org.apache.log4j.config.PropertyGetter: void getProperties(java.lang.Object,org.apache.log4j.config.PropertyGetter$PropertyCallback,java.lang.String)>(r4, r10, $r14) 

(declare-const var1844!1 var3135)
(declare-const var3339!1 var2569)
(declare-const var2555!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), var2861_getProperties/293932892=([java.lang.Object, org.apache.log4j.config.PropertyGetter$PropertyCallback, java.lang.String], void), cast-from-var2569-to-var2027=([org.apache.log4j.config.PropertyPrinter], org.apache.log4j.config.PropertyGetter$PropertyCallback)}
; {var2569=org.apache.log4j.config.PropertyPrinter, var3339=r10, var3993=java.io.PrintWriter, var30=r0, var3135=java.lang.Object, var1844=r4, var2367=r2, var3367=null_type, var3856=$r1, var130=$r3, var515=$r7, var1297=$r5, var2846=$r6, var3644=$r8, var2824=$r9, var1513=$r11, var3190=$r12, var2917=$r13, var2555=$r14, var2861=org.apache.log4j.config.PropertyGetter, var2027=org.apache.log4j.config.PropertyGetter$PropertyCallback}
; {org.apache.log4j.config.PropertyPrinter=var2569, r10=var3339, java.io.PrintWriter=var3993, r0=var30, java.lang.Object=var3135, r4=var1844, r2=var2367, null_type=var3367, $r1=var3856, $r3=var130, $r7=var515, $r5=var1297, $r6=var2846, $r8=var3644, $r9=var2824, $r11=var1513, $r12=var3190, $r13=var2917, $r14=var2555, org.apache.log4j.config.PropertyGetter=var2861, org.apache.log4j.config.PropertyGetter$PropertyCallback=var2027}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r10 := @this: org.apache.log4j.config.PropertyPrinter;	r0 := @parameter0: java.io.PrintWriter;	r4 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r7 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=");	$r5 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void println(java.lang.String)>($r9);	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".");	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.config.PropertyGetter: void getProperties(java.lang.Object,org.apache.log4j.config.PropertyGetter$PropertyCallback,java.lang.String)>(r4, r10, $r14);	return
;block_num 1