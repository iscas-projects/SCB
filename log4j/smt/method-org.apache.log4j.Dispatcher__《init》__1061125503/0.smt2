(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var3026 0)
(declare-sort var2958 0)
(declare-sort var3286 0)
(declare-sort var26 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-2066367137 (var3286) void)
(declare-fun cast-from-var913-to-var3286 (var913) var3286)
(declare-fun interrupted/-1602220079 (var913) Bool)
(declare-fun bf/-1602220079 (var913) var3026)
(declare-fun container/-1602220079 (var913) var2958)
(declare-fun aai/-521819527 (var2958) var26)
(declare-fun aai/-1602220079 (var913) var26)
(declare-fun setDaemon/1897296623 (var3286 Bool) void)
(declare-fun setPriority/-324618346 (var3286 Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-942182377 (var3286) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setName/-1126170079 (var3286 String) void)
(declare-const null-var913 var913)
(declare-const null-var3026 var3026)
(declare-const null-var2958 var2958)
(declare-const var115 var913) ; Statement: r0 := @this: org.apache.log4j.Dispatcher 
(assert (not (= var115 null-var913)))
(declare-const var2887 var3026) ; Statement: r1 := @parameter0: org.apache.log4j.helpers.BoundedFIFO 
(assert (not (= var2887 null-var3026)))
(declare-const var2014 var2958) ; Statement: r2 := @parameter1: org.apache.log4j.AsyncAppender 
(assert (not (= var2014 null-var2958)))
(assert true)
;(assert (<init>/-2066367137 (cast-from-var913-to-var3286 var115))) ; Statement: specialinvoke r0.<java.lang.Thread: void <init>()>() 

(declare-const var115!1 var913)
(declare-const var115!2 var913)
(assert (not (= var115!2 null-var913)))
(assert (= (interrupted/-1602220079 var115!2) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.Dispatcher: boolean interrupted> = 0 
(declare-const var115!3 var913)
(assert (not (= var115!3 null-var913)))
(assert (= (bf/-1602220079 var115!3) var2887)) ; Statement: r0.<org.apache.log4j.Dispatcher: org.apache.log4j.helpers.BoundedFIFO bf> = r1 
(declare-const var115!4 var913)
(assert (not (= var115!4 null-var913)))
(assert (= (container/-1602220079 var115!4) var2014)) ; Statement: r0.<org.apache.log4j.Dispatcher: org.apache.log4j.AsyncAppender container> = r2 
(define-const var3470 var26 (aai/-521819527 var2014)) ; Statement: $r3 = r2.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl aai> 
(declare-const var115!5 var913)
(assert (not (= var115!5 null-var913)))
(assert (= (aai/-1602220079 var115!5) var3470)) ; Statement: r0.<org.apache.log4j.Dispatcher: org.apache.log4j.helpers.AppenderAttachableImpl aai> = $r3 
(assert true)
;(assert (setDaemon/1897296623 (cast-from-var913-to-var3286 var115!5) (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.log4j.Dispatcher: void setDaemon(boolean)>(1) 

(declare-const var115!6 var913)
(declare-const var3637 Int)
(assert true)
;(assert (setPriority/-324618346 (cast-from-var913-to-var3286 var115!6) 1)) ; Statement: virtualinvoke r0.<org.apache.log4j.Dispatcher: void setPriority(int)>(1) 

(declare-const var115!7 var913)
(declare-const var3637!1 Int)
(define-const var3902 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3902)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3902!1 String)
(assert true)
(define-const var2499 String (append/1560614132 var3902!1 "Dispatcher-")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Dispatcher-") 
(declare-const var3902!2 String)
(assert (str.prefixof var3902!1 var3902!2))
(assert true)
(define-const var3366 String (getName/-942182377 (cast-from-var913-to-var3286 var115!7))) ; Statement: $r5 = virtualinvoke r0.<org.apache.log4j.Dispatcher: java.lang.String getName()>() 
(assert true)
(define-const var2413 String (append/1560614132 var2499 var3366)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2499!1 String)
(assert (str.prefixof var2499 var2499!1))
(assert true)
(define-const var1900 String (toString/-222306083 var2413)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setName/-1126170079 (cast-from-var913-to-var3286 var115!7) var1900)) ; Statement: virtualinvoke r0.<org.apache.log4j.Dispatcher: void setName(java.lang.String)>($r8) 

(declare-const var115!8 var913)
(declare-const var1900!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-2066367137=([java.lang.Thread], void), cast-from-var913-to-var3286=([org.apache.log4j.Dispatcher], java.lang.Thread), interrupted/-1602220079=([org.apache.log4j.Dispatcher], boolean), bf/-1602220079=([org.apache.log4j.Dispatcher], org.apache.log4j.helpers.BoundedFIFO), container/-1602220079=([org.apache.log4j.Dispatcher], org.apache.log4j.AsyncAppender), aai/-521819527=([org.apache.log4j.AsyncAppender], org.apache.log4j.helpers.AppenderAttachableImpl), aai/-1602220079=([org.apache.log4j.Dispatcher], org.apache.log4j.helpers.AppenderAttachableImpl), setDaemon/1897296623=([java.lang.Thread, boolean], void), setPriority/-324618346=([java.lang.Thread, int], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-942182377=([java.lang.Thread], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setName/-1126170079=([java.lang.Thread, java.lang.String], void)}
; {var913=org.apache.log4j.Dispatcher, var115=r0, var3026=org.apache.log4j.helpers.BoundedFIFO, var2887=r1, var2958=org.apache.log4j.AsyncAppender, var2014=r2, var3286=java.lang.Thread, var26=org.apache.log4j.helpers.AppenderAttachableImpl, var3470=$r3, var3637=1, var3902=$r4, var2499=$r6, var3366=$r5, var2413=$r7, var1900=$r8}
; {org.apache.log4j.Dispatcher=var913, r0=var115, org.apache.log4j.helpers.BoundedFIFO=var3026, r1=var2887, org.apache.log4j.AsyncAppender=var2958, r2=var2014, java.lang.Thread=var3286, org.apache.log4j.helpers.AppenderAttachableImpl=var26, $r3=var3470, 1=var3637, $r4=var3902, $r6=var2499, $r5=var3366, $r7=var2413, $r8=var1900}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.Dispatcher;	r1 := @parameter0: org.apache.log4j.helpers.BoundedFIFO;	r2 := @parameter1: org.apache.log4j.AsyncAppender;	specialinvoke r0.<java.lang.Thread: void <init>()>();	r0.<org.apache.log4j.Dispatcher: boolean interrupted> = 0;	r0.<org.apache.log4j.Dispatcher: org.apache.log4j.helpers.BoundedFIFO bf> = r1;	r0.<org.apache.log4j.Dispatcher: org.apache.log4j.AsyncAppender container> = r2;	$r3 = r2.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl aai>;	r0.<org.apache.log4j.Dispatcher: org.apache.log4j.helpers.AppenderAttachableImpl aai> = $r3;	virtualinvoke r0.<org.apache.log4j.Dispatcher: void setDaemon(boolean)>(1);	virtualinvoke r0.<org.apache.log4j.Dispatcher: void setPriority(int)>(1);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Dispatcher-");	$r5 = virtualinvoke r0.<org.apache.log4j.Dispatcher: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke r0.<org.apache.log4j.Dispatcher: void setName(java.lang.String)>($r8);	return
;block_num 1