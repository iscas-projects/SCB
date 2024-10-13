(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1676 0)
(declare-sort var3695 0)
(declare-sort var3825 0)
(declare-sort var3705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun doCapitalize/1682073539 (var1676) Bool)
(declare-fun out/1682073539 (var1676) var3705)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var3695) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/-1226480079 (var3705 String) void)
(declare-const null-var1676 var1676)
(declare-const null-var3695 var3695)
(declare-const null-String String)
(declare-const var3873 var1676) ; Statement: r1 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var3873 null-var1676)))
(declare-const var3818 var3695) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3818 null-var3695)))
(declare-const var2761 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2761 null-String)))
(declare-const var2344 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var2344 null-String)))
(declare-const var3728 var3695) ; Statement: r7 := @parameter3: java.lang.Object 
(assert (not (= var3728 null-var3695)))
(define-const var3809 Bool false) ; Statement: $z0 = r0 instanceof org.apache.log4j.Appender 
 ; Statement: if $z0 == 0 goto $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize> 
(assert (= (ite var3809 1 0) 0)) ; Cond: $z0 == 0 
(define-const var413 Bool (doCapitalize/1682073539 var3873)) ; Statement: $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize> 
 ; Statement: if $z1 == 0 goto $r3 = r1.<org.apache.log4j.config.PropertyPrinter: java.io.PrintWriter out> 
(assert (= (ite var413 1 0) 0)) ; Cond: $z1 == 0 
(define-const var637 var3705 (out/1682073539 var3873)) ; Statement: $r3 = r1.<org.apache.log4j.config.PropertyPrinter: java.io.PrintWriter out> 
(define-const var3153 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3153)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3153!1 String)
(assert true)
(define-const var1913 String (append/1560614132 var3153!1 var2761)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var3153!2 String)
(assert (str.prefixof var3153!1 var3153!2))
(assert true)
(define-const var1489 String (append/1560614132 var1913 var2344)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r13) 
(declare-const var1913!1 String)
(assert (str.prefixof var1913 var1913!1))
(assert true)
(define-const var1536 String (append/1560614132 var1489 "=")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=") 
(declare-const var1489!1 String)
(assert (str.prefixof var1489 var1489!1))
(assert true)
(define-const var2152 String (toString/-522406933 var3728)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3488 String (append/1560614132 var1536 var2152)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var1536!1 String)
(assert (str.prefixof var1536 var1536!1))
(assert true)
(define-const var1709 String (toString/-222306083 var3488)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var637 var1709)) ; Statement: virtualinvoke $r3.<java.io.PrintWriter: void println(java.lang.String)>($r11) 

(declare-const var637!1 var3705)
(declare-const var1709!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {doCapitalize/1682073539=([org.apache.log4j.config.PropertyPrinter], boolean), out/1682073539=([org.apache.log4j.config.PropertyPrinter], java.io.PrintWriter), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-522406933=([java.lang.Object], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var1676=org.apache.log4j.config.PropertyPrinter, var3873=r1, var3695=java.lang.Object, var3818=r0, var2761=r4, var3825=null_type, var2344=r13, var3728=r7, var3809=$z0, var413=$z1, var3705=java.io.PrintWriter, var637=$r3, var3153=$r2, var1913=$r5, var1489=$r6, var1536=$r9, var2152=$r8, var3488=$r10, var1709=$r11}
; {org.apache.log4j.config.PropertyPrinter=var1676, r1=var3873, java.lang.Object=var3695, r0=var3818, r4=var2761, null_type=var3825, r13=var2344, r7=var3728, $z0=var3809, $z1=var413, java.io.PrintWriter=var3705, $r3=var637, $r2=var3153, $r5=var1913, $r6=var1489, $r9=var1536, $r8=var2152, $r10=var3488, $r11=var1709}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.config.PropertyPrinter;	r0 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	r7 := @parameter3: java.lang.Object;	$z0 = r0 instanceof org.apache.log4j.Appender;	if $z0 == 0 goto $z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize>;	$z1 = r1.<org.apache.log4j.config.PropertyPrinter: boolean doCapitalize>;	if $z1 == 0 goto $r3 = r1.<org.apache.log4j.config.PropertyPrinter: java.io.PrintWriter out>;	$r3 = r1.<org.apache.log4j.config.PropertyPrinter: java.io.PrintWriter out>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r13);	$r9 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=");	$r8 = virtualinvoke r7.<java.lang.Object: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintWriter: void println(java.lang.String)>($r11);	return
;block_num 3