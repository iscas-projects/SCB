(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var600 0)
(declare-sort var3343 0)
(declare-sort var219 0)
(declare-sort var2371 0)
(declare-sort var2637 0)
(declare-sort var21 0)
(declare-sort var230 0)
(declare-sort var3100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3343-init () var3343)
(declare-fun var2637_access$400/-1788474406 () var2371)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun s/-1607559498 (var600) var21)
(declare-fun getInetAddress/1406079472 (var21) var230)
(declare-fun getHostAddress/1493983505 (var230) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warn/-449434436 (var2371 String var3100) void)
(declare-fun cast-from-var219-to-var3100 (var219) var3100)
(declare-const null-var600 var600)
(declare-const null-var219 var219)
(declare-const var333 var600) ; Statement: r1 := @this: freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol 
(assert (not (= var333 null-var600)))
(define-const var3344 var3343 var3343-init) ; Statement: $r0 = new java.io.ObjectOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2132 var219) ; Statement: $r18 := @caughtexception 
(assert (not (= var2132 null-var219)))
(define-const var2077 var2371 var2637_access$400/-1788474406) ; Statement: $r27 = staticinvoke <freemarker.debug.impl.DebuggerServer: freemarker.log.Logger access$400()>() 
(define-const var2701 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2701)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2701!1 String)
(assert (= var2701!1 ""))
(assert true)
(define-const var2337 String (append/672562846 var2701!1 "Connection to ")) ; Statement: $r23 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Connection to ") 
(declare-const var2701!2 String)
(assert (= var2701!2 (str.++ var2701!1 "Connection to ")))
(define-const var3396 var21 (s/-1607559498 var333)) ; Statement: $r20 = r1.<freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol: java.net.Socket s> 
(assert true)
(define-const var3834 var230 (getInetAddress/1406079472 var3396)) ; Statement: $r21 = virtualinvoke $r20.<java.net.Socket: java.net.InetAddress getInetAddress()>() 
(assert true)
(define-const var1286 String (getHostAddress/1493983505 var3834)) ; Statement: $r22 = virtualinvoke $r21.<java.net.InetAddress: java.lang.String getHostAddress()>() 
(assert true)
(define-const var602 String (append/672562846 var2337 var1286)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 var1286)))
(assert true)
(define-const var3737 String (append/672562846 var602 " abruply broke")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" abruply broke") 
(declare-const var602!1 String)
(assert (= var602!1 (str.++ var602 " abruply broke")))
(assert true)
(define-const var3528 String (toString/-2075883882 var3737)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warn/-449434436 var2077 var3528 (cast-from-var219-to-var3100 var2132))) ; Statement: virtualinvoke $r27.<freemarker.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r26, $r18) 

(declare-const var2077!1 var2371)
(declare-const var3528!1 String)
(declare-const var2132!1 var219)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3343-init=([], java.io.ObjectOutputStream), var2637_access$400/-1788474406=([], freemarker.log.Logger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), s/-1607559498=([freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol], java.net.Socket), getInetAddress/1406079472=([java.net.Socket], java.net.InetAddress), getHostAddress/1493983505=([java.net.InetAddress], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warn/-449434436=([freemarker.log.Logger, java.lang.String, java.lang.Throwable], void), cast-from-var219-to-var3100=([java.lang.Exception], java.lang.Throwable)}
; {var600=freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol, var333=r1, var3343=java.io.ObjectOutputStream, var3344=$r0, var219=java.lang.Exception, var2132=$r18, var2371=freemarker.log.Logger, var2637=freemarker.debug.impl.DebuggerServer, var2077=$r27, var2701=$r19, var2337=$r23, var21=java.net.Socket, var3396=$r20, var230=java.net.InetAddress, var3834=$r21, var1286=$r22, var602=$r24, var3737=$r25, var3528=$r26, var3100=java.lang.Throwable}
; {freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol=var600, r1=var333, java.io.ObjectOutputStream=var3343, $r0=var3344, java.lang.Exception=var219, $r18=var2132, freemarker.log.Logger=var2371, freemarker.debug.impl.DebuggerServer=var2637, $r27=var2077, $r19=var2701, $r23=var2337, java.net.Socket=var21, $r20=var3396, java.net.InetAddress=var230, $r21=var3834, $r22=var1286, $r24=var602, $r25=var3737, $r26=var3528, java.lang.Throwable=var3100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol;	$r0 = new java.io.ObjectOutputStream;	$r18 := @caughtexception;	$r27 = staticinvoke <freemarker.debug.impl.DebuggerServer: freemarker.log.Logger access$400()>();	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Connection to ");	$r20 = r1.<freemarker.debug.impl.DebuggerServer$DebuggerAuthProtocol: java.net.Socket s>;	$r21 = virtualinvoke $r20.<java.net.Socket: java.net.InetAddress getInetAddress()>();	$r22 = virtualinvoke $r21.<java.net.InetAddress: java.lang.String getHostAddress()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" abruply broke");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r27.<freemarker.log.Logger: void warn(java.lang.String,java.lang.Throwable)>($r26, $r18);	return
;block_num 3