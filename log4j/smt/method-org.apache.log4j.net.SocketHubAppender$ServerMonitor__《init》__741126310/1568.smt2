(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var5 0)
(declare-sort var1263 0)
(declare-sort var2229 0)
(declare-sort var3285 0)
(declare-sort var720 0)
(declare-sort var1615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-2123639615 (var5) var1263)
(declare-fun <init>/-279557996 (var3285) void)
(declare-fun cast-from-var5-to-var3285 (var5) var3285)
(declare-fun port/-2123639615 (var5) Int)
(declare-fun oosList/-2123639615 (var5) var2229)
(declare-fun keepRunning/-2123639615 (var5) Bool)
(declare-fun var720-init () var720)
(declare-fun <init>/2000737040 (var720 var1615) void)
(declare-fun cast-from-var5-to-var1615 (var5) var1615)
(declare-fun monitorThread/-2123639615 (var5) var720)
(declare-fun setDaemon/1897296623 (var720 Bool) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setName/-1126170079 (var720 String) void)
(declare-fun start/-663598201 (var720) void)
(declare-const null-var5 var5)
(declare-const null-var1263 var1263)
(declare-const null-Int Int)
(declare-const null-var2229 var2229)
(declare-const var1324 var5) ; Statement: r0 := @this: org.apache.log4j.net.SocketHubAppender$ServerMonitor 
(assert (not (= var1324 null-var5)))
(declare-const var1930 var1263) ; Statement: r1 := @parameter0: org.apache.log4j.net.SocketHubAppender 
(assert (not (= var1930 null-var1263)))
(declare-const var1419 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1419 null-Int)))
(declare-const var2801 var2229) ; Statement: r2 := @parameter2: java.util.Vector 
(assert (not (= var2801 null-var2229)))
(declare-const var1324!1 var5)
(assert (not (= var1324!1 null-var5)))
(assert (= (this$0/-2123639615 var1324!1) var1930)) ; Statement: r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: org.apache.log4j.net.SocketHubAppender this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var5-to-var3285 var1324!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1324!2 var5)
(declare-const var1324!3 var5)
(assert (not (= var1324!3 null-var5)))
(assert (= (port/-2123639615 var1324!3) var1419)) ; Statement: r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: int port> = i0 
(declare-const var1324!4 var5)
(assert (not (= var1324!4 null-var5)))
(assert (= (oosList/-2123639615 var1324!4) var2801)) ; Statement: r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.util.Vector oosList> = r2 
(declare-const var1324!5 var5)
(assert (not (= var1324!5 null-var5)))
(assert (= (keepRunning/-2123639615 var1324!5) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: boolean keepRunning> = 1 
(define-const var3414 var720 var720-init) ; Statement: $r3 = new java.lang.Thread 
(assert true)
;(assert (<init>/2000737040 var3414 (cast-from-var5-to-var1615 var1324!5))) ; Statement: specialinvoke $r3.<java.lang.Thread: void <init>(java.lang.Runnable)>(r0) 

(declare-const var3414!1 var720)
(declare-const var1324!6 var5)
(declare-const var1324!7 var5)
(assert (not (= var1324!7 null-var5)))
(assert (= (monitorThread/-2123639615 var1324!7) var3414!1)) ; Statement: r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread> = $r3 
(define-const var2004 var720 (monitorThread/-2123639615 var1324!7)) ; Statement: $r4 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread> 
(assert true)
;(assert (setDaemon/1897296623 var2004 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r4.<java.lang.Thread: void setDaemon(boolean)>(1) 

(declare-const var2004!1 var720)
(declare-const var274 Int)
(define-const var1312 var720 (monitorThread/-2123639615 var1324!7)) ; Statement: $r6 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread> 
(define-const var1915 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1915)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1915!1 String)
(assert true)
(define-const var3728 String (append/1560614132 var1915!1 "SocketHubAppender-Monitor-")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("SocketHubAppender-Monitor-") 
(declare-const var1915!2 String)
(assert (str.prefixof var1915!1 var1915!2))
(define-const var3155 Int (port/-2123639615 var1324!7)) ; Statement: $i1 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: int port> 
(assert true)
(define-const var857 String (append/1845021834 var3728 var3155)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var1 String (toString/-222306083 var857)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setName/-1126170079 var1312 var1)) ; Statement: virtualinvoke $r6.<java.lang.Thread: void setName(java.lang.String)>($r9) 

(declare-const var1312!1 var720)
(declare-const var1!1 String)
(define-const var372 var720 (monitorThread/-2123639615 var1324!7)) ; Statement: $r10 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread> 
(assert true)
;(assert (start/-663598201 var372)) ; Statement: virtualinvoke $r10.<java.lang.Thread: void start()>() 

(declare-const var372!1 var720)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-2123639615=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], org.apache.log4j.net.SocketHubAppender), <init>/-279557996=([java.lang.Object], void), cast-from-var5-to-var3285=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], java.lang.Object), port/-2123639615=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], int), oosList/-2123639615=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], java.util.Vector), keepRunning/-2123639615=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], boolean), var720-init=([], java.lang.Thread), <init>/2000737040=([java.lang.Thread, java.lang.Runnable], void), cast-from-var5-to-var1615=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], java.lang.Runnable), monitorThread/-2123639615=([org.apache.log4j.net.SocketHubAppender$ServerMonitor], java.lang.Thread), setDaemon/1897296623=([java.lang.Thread, boolean], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setName/-1126170079=([java.lang.Thread, java.lang.String], void), start/-663598201=([java.lang.Thread], void)}
; {var5=org.apache.log4j.net.SocketHubAppender$ServerMonitor, var1324=r0, var1263=org.apache.log4j.net.SocketHubAppender, var1930=r1, var1419=i0, var2229=java.util.Vector, var2801=r2, var3285=java.lang.Object, var720=java.lang.Thread, var3414=$r3, var1615=java.lang.Runnable, var2004=$r4, var274=1, var1312=$r6, var1915=$r5, var3728=$r7, var3155=$i1, var857=$r8, var1=$r9, var372=$r10}
; {org.apache.log4j.net.SocketHubAppender$ServerMonitor=var5, r0=var1324, org.apache.log4j.net.SocketHubAppender=var1263, r1=var1930, i0=var1419, java.util.Vector=var2229, r2=var2801, java.lang.Object=var3285, java.lang.Thread=var720, $r3=var3414, java.lang.Runnable=var1615, $r4=var2004, 1=var274, $r6=var1312, $r5=var1915, $r7=var3728, $i1=var3155, $r8=var857, $r9=var1, $r10=var372}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.SocketHubAppender$ServerMonitor;	r1 := @parameter0: org.apache.log4j.net.SocketHubAppender;	i0 := @parameter1: int;	r2 := @parameter2: java.util.Vector;	r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: org.apache.log4j.net.SocketHubAppender this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: int port> = i0;	r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.util.Vector oosList> = r2;	r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: boolean keepRunning> = 1;	$r3 = new java.lang.Thread;	specialinvoke $r3.<java.lang.Thread: void <init>(java.lang.Runnable)>(r0);	r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread> = $r3;	$r4 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread>;	virtualinvoke $r4.<java.lang.Thread: void setDaemon(boolean)>(1);	$r6 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread>;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("SocketHubAppender-Monitor-");	$i1 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: int port>;	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r6.<java.lang.Thread: void setName(java.lang.String)>($r9);	$r10 = r0.<org.apache.log4j.net.SocketHubAppender$ServerMonitor: java.lang.Thread monitorThread>;	virtualinvoke $r10.<java.lang.Thread: void start()>();	return
;block_num 1