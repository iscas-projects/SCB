(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3889 0)
(declare-sort var1478 0)
(declare-sort var2569 0)
(declare-sort var2740 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1665982921 (var3889) var1478)
(declare-fun <init>/-2066367137 (var2569) void)
(declare-fun cast-from-var3889-to-var2569 (var3889) var2569)
(declare-fun var2740-init () var2740)
(declare-fun <init>/-1913910780 (var2740) void)
(declare-fun writers/-1665982921 (var3889) var2740)
(declare-fun connections/-1665982921 (var3889) var2740)
(declare-fun MAX_CONNECTIONS/-1665982921 (var3889) Int)
(declare-fun var1946-init () var1946)
(declare-fun <init>/-347590275 (var1946 Int) void)
(declare-fun serverSocket/-1665982921 (var3889) var1946)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-942182377 (var2569) String)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setName/-1126170079 (var2569 String) void)
(declare-const null-var3889 var3889)
(declare-const null-var1478 var1478)
(declare-const null-Int Int)
(declare-const var1450 var3889) ; Statement: r0 := @this: org.apache.log4j.net.TelnetAppender$SocketHandler 
(assert (not (= var1450 null-var3889)))
(declare-const var1670 var1478) ; Statement: r1 := @parameter0: org.apache.log4j.net.TelnetAppender 
(assert (not (= var1670 null-var1478)))
(declare-const var1567 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1567 null-Int)))
(declare-const var1450!1 var3889)
(assert (not (= var1450!1 null-var3889)))
(assert (= (this$0/-1665982921 var1450!1) var1670)) ; Statement: r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: org.apache.log4j.net.TelnetAppender this$0> = r1 
(assert true)
;(assert (<init>/-2066367137 (cast-from-var3889-to-var2569 var1450!1))) ; Statement: specialinvoke r0.<java.lang.Thread: void <init>()>() 

(declare-const var1450!2 var3889)
(define-const var2079 var2740 var2740-init) ; Statement: $r2 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var2079)) ; Statement: specialinvoke $r2.<java.util.Vector: void <init>()>() 

(declare-const var2079!1 var2740)
(declare-const var1450!3 var3889)
(assert (not (= var1450!3 null-var3889)))
(assert (= (writers/-1665982921 var1450!3) var2079!1)) ; Statement: r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.util.Vector writers> = $r2 
(define-const var2074 var2740 var2740-init) ; Statement: $r3 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var2074)) ; Statement: specialinvoke $r3.<java.util.Vector: void <init>()>() 

(declare-const var2074!1 var2740)
(declare-const var1450!4 var3889)
(assert (not (= var1450!4 null-var3889)))
(assert (= (connections/-1665982921 var1450!4) var2074!1)) ; Statement: r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.util.Vector connections> = $r3 
(declare-const var1450!5 var3889)
(assert (not (= var1450!5 null-var3889)))
(assert (= (MAX_CONNECTIONS/-1665982921 var1450!5) 20)) ; Statement: r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: int MAX_CONNECTIONS> = 20 
(define-const var260 var1946 var1946-init) ; Statement: $r4 = new java.net.ServerSocket 
(assert true)
;(assert (<init>/-347590275 var260 var1567)) ; Statement: specialinvoke $r4.<java.net.ServerSocket: void <init>(int)>(i0) 

(declare-const var260!1 var1946)
(declare-const var1567!1 Int)
(declare-const var1450!6 var3889)
(assert (not (= var1450!6 null-var3889)))
(assert (= (serverSocket/-1665982921 var1450!6) var260!1)) ; Statement: r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.net.ServerSocket serverSocket> = $r4 
(define-const var3569 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3569)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3569!1 String)
(assert true)
(define-const var3791 String (append/1560614132 var3569!1 "TelnetAppender-")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TelnetAppender-") 
(declare-const var3569!2 String)
(assert (str.prefixof var3569!1 var3569!2))
(assert true)
(define-const var3726 String (getName/-942182377 (cast-from-var3889-to-var2569 var1450!6))) ; Statement: $r6 = virtualinvoke r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.lang.String getName()>() 
(assert true)
(define-const var2999 String (append/1560614132 var3791 var3726)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var3791!1 String)
(assert (str.prefixof var3791 var3791!1))
(assert true)
(define-const var2969 String (append/1560614132 var2999 "-")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("-") 
(declare-const var2999!1 String)
(assert (str.prefixof var2999 var2999!1))
(assert true)
(define-const var2044 String (append/1845021834 var2969 var1567!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var3661 String (toString/-222306083 var2044)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setName/-1126170079 (cast-from-var3889-to-var2569 var1450!6) var3661)) ; Statement: virtualinvoke r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: void setName(java.lang.String)>($r11) 

(declare-const var1450!7 var3889)
(declare-const var3661!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1665982921=([org.apache.log4j.net.TelnetAppender$SocketHandler], org.apache.log4j.net.TelnetAppender), <init>/-2066367137=([java.lang.Thread], void), cast-from-var3889-to-var2569=([org.apache.log4j.net.TelnetAppender$SocketHandler], java.lang.Thread), var2740-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), writers/-1665982921=([org.apache.log4j.net.TelnetAppender$SocketHandler], java.util.Vector), connections/-1665982921=([org.apache.log4j.net.TelnetAppender$SocketHandler], java.util.Vector), MAX_CONNECTIONS/-1665982921=([org.apache.log4j.net.TelnetAppender$SocketHandler], int), var1946-init=([], java.net.ServerSocket), <init>/-347590275=([java.net.ServerSocket, int], void), serverSocket/-1665982921=([org.apache.log4j.net.TelnetAppender$SocketHandler], java.net.ServerSocket), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-942182377=([java.lang.Thread], java.lang.String), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setName/-1126170079=([java.lang.Thread, java.lang.String], void)}
; {var3889=org.apache.log4j.net.TelnetAppender$SocketHandler, var1450=r0, var1478=org.apache.log4j.net.TelnetAppender, var1670=r1, var1567=i0, var2569=java.lang.Thread, var2740=java.util.Vector, var2079=$r2, var2074=$r3, var1946=java.net.ServerSocket, var260=$r4, var3569=$r5, var3791=$r7, var3726=$r6, var2999=$r8, var2969=$r9, var2044=$r10, var3661=$r11}
; {org.apache.log4j.net.TelnetAppender$SocketHandler=var3889, r0=var1450, org.apache.log4j.net.TelnetAppender=var1478, r1=var1670, i0=var1567, java.lang.Thread=var2569, java.util.Vector=var2740, $r2=var2079, $r3=var2074, java.net.ServerSocket=var1946, $r4=var260, $r5=var3569, $r7=var3791, $r6=var3726, $r8=var2999, $r9=var2969, $r10=var2044, $r11=var3661}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.TelnetAppender$SocketHandler;	r1 := @parameter0: org.apache.log4j.net.TelnetAppender;	i0 := @parameter1: int;	r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: org.apache.log4j.net.TelnetAppender this$0> = r1;	specialinvoke r0.<java.lang.Thread: void <init>()>();	$r2 = new java.util.Vector;	specialinvoke $r2.<java.util.Vector: void <init>()>();	r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.util.Vector writers> = $r2;	$r3 = new java.util.Vector;	specialinvoke $r3.<java.util.Vector: void <init>()>();	r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.util.Vector connections> = $r3;	r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: int MAX_CONNECTIONS> = 20;	$r4 = new java.net.ServerSocket;	specialinvoke $r4.<java.net.ServerSocket: void <init>(int)>(i0);	r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.net.ServerSocket serverSocket> = $r4;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TelnetAppender-");	$r6 = virtualinvoke r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("-");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<org.apache.log4j.net.TelnetAppender$SocketHandler: void setName(java.lang.String)>($r11);	return
;block_num 1