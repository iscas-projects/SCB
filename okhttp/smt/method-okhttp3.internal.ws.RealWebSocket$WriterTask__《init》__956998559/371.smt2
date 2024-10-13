(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2902 0)
(declare-sort var3959 0)
(declare-sort var2461 0)
(declare-sort var2007 0)
(declare-sort var1463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-967001645 (var2902) var3959)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3959_access$getName$p/-1688085717 (var3959) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/313741617 (var2461 String Bool Int var2007) void)
(declare-fun cast-from-var2902-to-var2461 (var2902) var2461)
(declare-const null-var2902 var2902)
(declare-const null-var3959 var3959)
(declare-const null-NullType var1463)
(declare-const null-var2007 var2007)
(declare-const var2717 var2902) ; Statement: r0 := @this: okhttp3.internal.ws.RealWebSocket$WriterTask 
(assert (not (= var2717 null-var2902)))
(declare-const var2037 var3959) ; Statement: r1 := @parameter0: okhttp3.internal.ws.RealWebSocket 
(assert (not (= var2037 null-var3959)))
(declare-const var2717!1 var2902)
(assert (not (= var2717!1 null-var2902)))
(assert (= (this$0/-967001645 var2717!1) var2037)) ; Statement: r0.<okhttp3.internal.ws.RealWebSocket$WriterTask: okhttp3.internal.ws.RealWebSocket this$0> = r1 
(define-const var2170 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2170)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2170!1 String)
(assert (= var2170!1 ""))
(define-const var1910 String (var3959_access$getName$p/-1688085717 var2037)) ; Statement: $r3 = staticinvoke <okhttp3.internal.ws.RealWebSocket: java.lang.String access$getName$p(okhttp3.internal.ws.RealWebSocket)>(r1) 
(assert true)
(define-const var3161 String (append/672562846 var2170!1 var1910)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2170!2 String)
(assert (= var2170!2 (str.++ var2170!1 var1910)))
(assert true)
(define-const var2568 String (append/672562846 var3161 " writer")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" writer") 
(declare-const var3161!1 String)
(assert (= var3161!1 (str.++ var3161 " writer")))
(assert true)
(define-const var3930 String (toString/-2075883882 var2568)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/313741617 (cast-from-var2902-to-var2461 var2717!1) var3930 (ite (= 1 0) true false) 2 null-var2007)) ; Statement: specialinvoke r0.<okhttp3.internal.concurrent.Task: void <init>(java.lang.String,boolean,int,kotlin.jvm.internal.DefaultConstructorMarker)>($r6, 0, 2, null) 

(declare-const var2717!2 var2902)
(declare-const var3930!1 String)
(declare-const var2276 Int)
(declare-const var2580 Int)
(declare-const var3333 var1463)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-967001645=([okhttp3.internal.ws.RealWebSocket$WriterTask], okhttp3.internal.ws.RealWebSocket), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3959_access$getName$p/-1688085717=([okhttp3.internal.ws.RealWebSocket], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/313741617=([okhttp3.internal.concurrent.Task, java.lang.String, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker], void), cast-from-var2902-to-var2461=([okhttp3.internal.ws.RealWebSocket$WriterTask], okhttp3.internal.concurrent.Task)}
; {var2902=okhttp3.internal.ws.RealWebSocket$WriterTask, var2717=r0, var3959=okhttp3.internal.ws.RealWebSocket, var2037=r1, var2170=$r2, var1910=$r3, var3161=$r4, var2568=$r5, var3930=$r6, var2461=okhttp3.internal.concurrent.Task, var2007=kotlin.jvm.internal.DefaultConstructorMarker, var2276=0, var2580=2, var3333=null, var1463=null_type}
; {okhttp3.internal.ws.RealWebSocket$WriterTask=var2902, r0=var2717, okhttp3.internal.ws.RealWebSocket=var3959, r1=var2037, $r2=var2170, $r3=var1910, $r4=var3161, $r5=var2568, $r6=var3930, okhttp3.internal.concurrent.Task=var2461, kotlin.jvm.internal.DefaultConstructorMarker=var2007, 0=var2276, 2=var2580, null=var3333, null_type=var1463}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.ws.RealWebSocket$WriterTask;	r1 := @parameter0: okhttp3.internal.ws.RealWebSocket;	r0.<okhttp3.internal.ws.RealWebSocket$WriterTask: okhttp3.internal.ws.RealWebSocket this$0> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <okhttp3.internal.ws.RealWebSocket: java.lang.String access$getName$p(okhttp3.internal.ws.RealWebSocket)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" writer");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<okhttp3.internal.concurrent.Task: void <init>(java.lang.String,boolean,int,kotlin.jvm.internal.DefaultConstructorMarker)>($r6, 0, 2, null);	return
;block_num 1