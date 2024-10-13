(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2017 0)
(declare-sort var3649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun splitPacket/163499666 (var2017 String String) void)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2017 var2017)
(declare-const null-String String)
(declare-const var598 var2017) ; Statement: r3 := @this: org.apache.log4j.net.SyslogAppender 
(assert (not (= var598 null-var2017)))
(declare-const var1483 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1483 null-String)))
(declare-const var2291 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2291 null-String)))
(assert true)
(define-const var2236 (Array Int Int) (getBytes/1068683673 var2291)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: byte[] getBytes()>() 
(define-const var1802 Int (getLength-Arr-Int-1 var2236)) ; Statement: i0 = lengthof $r1 
 ; Statement: if i0 > 1019 goto $i5 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (> var1802 1019)) ; Cond: i0 > 1019 
(assert true)
(define-const var1516 Int (length/-134980193 var1483)) ; Statement: $i5 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert true)
(define-const var2806 Int (length/-134980193 var2291)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3928 Int (length/-134980193 var1483)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1173 Int (- var2806 var3928)) ; Statement: $i3 = $i2 - $i1 
(define-const var2856 Int (div var1173 2)) ; Statement: $i4 = $i3 / 2 
(define-const var3719 Int (+ var1516 var2856)) ; Statement: i6 = $i5 + $i4 
(define-const var2423 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2423)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2423!1 String)
(assert (and true (and (>= 0 0) (>= (str.len var2291) var3719) (>= var3719 0))))
(define-const var503 String (substring/-1240304868 var2291 0 var3719)) ; Statement: $r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i6) 
(assert true)
(define-const var353 String (append/1560614132 var2423!1 var503)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2423!2 String)
(assert (str.prefixof var2423!1 var2423!2))
(assert true)
(define-const var2700 String (append/1560614132 var353 "...")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("...") 
(declare-const var353!1 String)
(assert (str.prefixof var353 var353!1))
(assert true)
(define-const var1879 String (toString/-222306083 var2700)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (splitPacket/163499666 var598 var1483 var1879)) ; Statement: specialinvoke r3.<org.apache.log4j.net.SyslogAppender: void splitPacket(java.lang.String,java.lang.String)>(r2, $r8) 

(declare-const var598!1 var2017)
(declare-const var1483!1 String)
(declare-const var1879!1 String)
(define-const var1354 String String-init) ; Statement: $r9 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1354)) ; Statement: specialinvoke $r9.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1354!1 String)
(assert true)
(define-const var1564 String (append/1560614132 var1354!1 var1483!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var1354!2 String)
(assert (str.prefixof var1354!1 var1354!2))
(assert true)
(define-const var673 String (append/1560614132 var1564 "...")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("...") 
(declare-const var1564!1 String)
(assert (str.prefixof var1564 var1564!1))
(assert (not (and true (and (>= var3719 0) (>= (str.len var2291) var3719)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getBytes/1068683673=([java.lang.String], byte[]), getLength-Arr-Int-1=([byte[]], int), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), splitPacket/163499666=([org.apache.log4j.net.SyslogAppender, java.lang.String, java.lang.String], void), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2017=org.apache.log4j.net.SyslogAppender, var598=r3, var1483=r2, var3649=null_type, var2291=r0, var2236=$r1, var1802=i0, var1516=$i5, var2806=$i2, var3928=$i1, var1173=$i3, var2856=$i4, var3719=i6, var2423=$r4, var503=$r5, var353=$r6, var2700=$r7, var1879=$r8, var1354=$r9, var1564=$r10, var673=$r12, var691=$r11, var3587=$r13, var1880=$r14}
; {org.apache.log4j.net.SyslogAppender=var2017, r3=var598, r2=var1483, null_type=var3649, r0=var2291, $r1=var2236, i0=var1802, $i5=var1516, $i2=var2806, $i1=var3928, $i3=var1173, $i4=var2856, i6=var3719, $r4=var2423, $r5=var503, $r6=var353, $r7=var2700, $r8=var1879, $r9=var1354, $r10=var1564, $r12=var673, $r11=var691, $r13=var3587, $r14=var1880}
;seq <java.lang.String: byte[] getBytes()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: org.apache.log4j.net.SyslogAppender;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: byte[] getBytes()>();	i0 = lengthof $r1;	if i0 > 1019 goto $i5 = virtualinvoke r2.<java.lang.String: int length()>();	$i5 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = $i2 - $i1;	$i4 = $i3 / 2;	i6 = $i5 + $i4;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i6);	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("...");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke r3.<org.apache.log4j.net.SyslogAppender: void splitPacket(java.lang.String,java.lang.String)>(r2, $r8);	$r9 = new java.lang.StringBuffer;	specialinvoke $r9.<java.lang.StringBuffer: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("...");	$r11 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i6);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke r3.<org.apache.log4j.net.SyslogAppender: void splitPacket(java.lang.String,java.lang.String)>(r2, $r14);	return
;block_num 3