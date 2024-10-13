(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3757 0)
(declare-sort var1617 0)
(declare-sort var3223 0)
(declare-sort var2309 0)
(declare-sort var2488 0)
(declare-sort var1278 0)
(declare-sort var3340 0)
(declare-sort var1587 0)
(declare-sort var2146 0)
(declare-sort var231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/121194599 (var1617) void)
(declare-fun cast-from-var3757-to-var1617 (var3757) var1617)
(declare-fun var3223-init () var3223)
(declare-fun <init>/-325640736 (var3223) void)
(declare-fun cast-from-var3223-to-var2309 (var3223) var2309)
(declare-fun buffer/-521819527 (var3757) var2309)
(declare-fun var2488-init () var2488)
(declare-fun <init>/-201242697 (var2488) void)
(declare-fun cast-from-var2488-to-var1278 (var2488) var1278)
(declare-fun discardMap/-521819527 (var3757) var1278)
(declare-fun bufferSize/-521819527 (var3757) Int)
(declare-fun locationInfo/-521819527 (var3757) Bool)
(declare-fun blocking/-521819527 (var3757) Bool)
(declare-fun var3340-init () var3340)
(declare-fun <init>/551656898 (var3340) void)
(declare-fun appenders/-521819527 (var3757) var3340)
(declare-fun aai/-521819527 (var3757) var3340)
(declare-fun var1587-init () var1587)
(declare-fun var2146-init () var2146)
(declare-fun <init>/894797693 (var2146 var3757 var2309 var1278 var3340) void)
(declare-fun <init>/2000737040 (var1587 var231) void)
(declare-fun cast-from-var2146-to-var231 (var2146) var231)
(declare-fun dispatcher/-521819527 (var3757) var1587)
(declare-fun setDaemon/1897296623 (var1587 Bool) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-942182377 (var1587) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun setName/-1126170079 (var1587 String) void)
(declare-fun start/-663598201 (var1587) void)
(declare-const null-var3757 var3757)
(declare-const var1367 var3757) ; Statement: r0 := @this: org.apache.log4j.AsyncAppender 
(assert (not (= var1367 null-var3757)))
(assert true)
;(assert (<init>/121194599 (cast-from-var3757-to-var1617 var1367))) ; Statement: specialinvoke r0.<org.apache.log4j.AppenderSkeleton: void <init>()>() 

(declare-const var1367!1 var3757)
(define-const var83 var3223 var3223-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var83)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var83!1 var3223)
(declare-const var1367!2 var3757)
(assert (not (= var1367!2 null-var3757)))
(assert (= (buffer/-521819527 var1367!2) (cast-from-var3223-to-var2309 var83!1))) ; Statement: r0.<org.apache.log4j.AsyncAppender: java.util.List buffer> = $r1 
(define-const var3074 var2488 var2488-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3074)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var3074!1 var2488)
(declare-const var1367!3 var3757)
(assert (not (= var1367!3 null-var3757)))
(assert (= (discardMap/-521819527 var1367!3) (cast-from-var2488-to-var1278 var3074!1))) ; Statement: r0.<org.apache.log4j.AsyncAppender: java.util.Map discardMap> = $r2 
(declare-const var1367!4 var3757)
(assert (not (= var1367!4 null-var3757)))
(assert (= (bufferSize/-521819527 var1367!4) 128)) ; Statement: r0.<org.apache.log4j.AsyncAppender: int bufferSize> = 128 
(declare-const var1367!5 var3757)
(assert (not (= var1367!5 null-var3757)))
(assert (= (locationInfo/-521819527 var1367!5) (ite (= 1 0) true false))) ; Statement: r0.<org.apache.log4j.AsyncAppender: boolean locationInfo> = 0 
(declare-const var1367!6 var3757)
(assert (not (= var1367!6 null-var3757)))
(assert (= (blocking/-521819527 var1367!6) (ite (= 1 1) true false))) ; Statement: r0.<org.apache.log4j.AsyncAppender: boolean blocking> = 1 
(define-const var2655 var3340 var3340-init) ; Statement: $r3 = new org.apache.log4j.helpers.AppenderAttachableImpl 
(assert true)
;(assert (<init>/551656898 var2655)) ; Statement: specialinvoke $r3.<org.apache.log4j.helpers.AppenderAttachableImpl: void <init>()>() 

(declare-const var2655!1 var3340)
(declare-const var1367!7 var3757)
(assert (not (= var1367!7 null-var3757)))
(assert (= (appenders/-521819527 var1367!7) var2655!1)) ; Statement: r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl appenders> = $r3 
(define-const var91 var3340 (appenders/-521819527 var1367!7)) ; Statement: $r4 = r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl appenders> 
(declare-const var1367!8 var3757)
(assert (not (= var1367!8 null-var3757)))
(assert (= (aai/-521819527 var1367!8) var91)) ; Statement: r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl aai> = $r4 
(define-const var3746 var1587 var1587-init) ; Statement: $r5 = new java.lang.Thread 
(define-const var1002 var2146 var2146-init) ; Statement: $r6 = new org.apache.log4j.AsyncAppender$Dispatcher 
(define-const var3294 var2309 (buffer/-521819527 var1367!8)) ; Statement: $r9 = r0.<org.apache.log4j.AsyncAppender: java.util.List buffer> 
(define-const var1844 var1278 (discardMap/-521819527 var1367!8)) ; Statement: $r8 = r0.<org.apache.log4j.AsyncAppender: java.util.Map discardMap> 
(define-const var1131 var3340 (appenders/-521819527 var1367!8)) ; Statement: $r7 = r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl appenders> 
(assert true)
;(assert (<init>/894797693 var1002 var1367!8 var3294 var1844 var1131)) ; Statement: specialinvoke $r6.<org.apache.log4j.AsyncAppender$Dispatcher: void <init>(org.apache.log4j.AsyncAppender,java.util.List,java.util.Map,org.apache.log4j.helpers.AppenderAttachableImpl)>(r0, $r9, $r8, $r7) 

(declare-const var1002!1 var2146)
(declare-const var1367!9 var3757)
(declare-const var3294!1 var2309)
(declare-const var1844!1 var1278)
(declare-const var1131!1 var3340)
(assert true)
;(assert (<init>/2000737040 var3746 (cast-from-var2146-to-var231 var1002!1))) ; Statement: specialinvoke $r5.<java.lang.Thread: void <init>(java.lang.Runnable)>($r6) 

(declare-const var3746!1 var1587)
(declare-const var1002!2 var2146)
(declare-const var1367!10 var3757)
(assert (not (= var1367!10 null-var3757)))
(assert (= (dispatcher/-521819527 var1367!10) var3746!1)) ; Statement: r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher> = $r5 
(define-const var3136 var1587 (dispatcher/-521819527 var1367!10)) ; Statement: $r10 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher> 
(assert true)
;(assert (setDaemon/1897296623 var3136 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r10.<java.lang.Thread: void setDaemon(boolean)>(1) 

(declare-const var3136!1 var1587)
(declare-const var1150 Int)
(define-const var538 var1587 (dispatcher/-521819527 var1367!10)) ; Statement: $r12 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher> 
(define-const var1803 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1803)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1803!1 String)
(assert true)
(define-const var871 String (append/1560614132 var1803!1 "AsyncAppender-Dispatcher-")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("AsyncAppender-Dispatcher-") 
(declare-const var1803!2 String)
(assert (str.prefixof var1803!1 var1803!2))
(define-const var272 var1587 (dispatcher/-521819527 var1367!10)) ; Statement: $r13 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher> 
(assert true)
(define-const var426 String (getName/-942182377 var272)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var1440 String (append/1560614132 var871 var426)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var871!1 String)
(assert (str.prefixof var871 var871!1))
(assert true)
(define-const var566 String (toString/-222306083 var1440)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (setName/-1126170079 var538 var566)) ; Statement: virtualinvoke $r12.<java.lang.Thread: void setName(java.lang.String)>($r17) 

(declare-const var538!1 var1587)
(declare-const var566!1 String)
(define-const var2265 var1587 (dispatcher/-521819527 var1367!10)) ; Statement: $r18 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher> 
(assert true)
;(assert (start/-663598201 var2265)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void start()>() 

(declare-const var2265!1 var1587)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/121194599=([org.apache.log4j.AppenderSkeleton], void), cast-from-var3757-to-var1617=([org.apache.log4j.AsyncAppender], org.apache.log4j.AppenderSkeleton), var3223-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3223-to-var2309=([java.util.ArrayList], java.util.List), buffer/-521819527=([org.apache.log4j.AsyncAppender], java.util.List), var2488-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2488-to-var1278=([java.util.HashMap], java.util.Map), discardMap/-521819527=([org.apache.log4j.AsyncAppender], java.util.Map), bufferSize/-521819527=([org.apache.log4j.AsyncAppender], int), locationInfo/-521819527=([org.apache.log4j.AsyncAppender], boolean), blocking/-521819527=([org.apache.log4j.AsyncAppender], boolean), var3340-init=([], org.apache.log4j.helpers.AppenderAttachableImpl), <init>/551656898=([org.apache.log4j.helpers.AppenderAttachableImpl], void), appenders/-521819527=([org.apache.log4j.AsyncAppender], org.apache.log4j.helpers.AppenderAttachableImpl), aai/-521819527=([org.apache.log4j.AsyncAppender], org.apache.log4j.helpers.AppenderAttachableImpl), var1587-init=([], java.lang.Thread), var2146-init=([], org.apache.log4j.AsyncAppender$Dispatcher), <init>/894797693=([org.apache.log4j.AsyncAppender$Dispatcher, org.apache.log4j.AsyncAppender, java.util.List, java.util.Map, org.apache.log4j.helpers.AppenderAttachableImpl], void), <init>/2000737040=([java.lang.Thread, java.lang.Runnable], void), cast-from-var2146-to-var231=([org.apache.log4j.AsyncAppender$Dispatcher], java.lang.Runnable), dispatcher/-521819527=([org.apache.log4j.AsyncAppender], java.lang.Thread), setDaemon/1897296623=([java.lang.Thread, boolean], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-942182377=([java.lang.Thread], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), setName/-1126170079=([java.lang.Thread, java.lang.String], void), start/-663598201=([java.lang.Thread], void)}
; {var3757=org.apache.log4j.AsyncAppender, var1367=r0, var1617=org.apache.log4j.AppenderSkeleton, var3223=java.util.ArrayList, var83=$r1, var2309=java.util.List, var2488=java.util.HashMap, var3074=$r2, var1278=java.util.Map, var3340=org.apache.log4j.helpers.AppenderAttachableImpl, var2655=$r3, var91=$r4, var1587=java.lang.Thread, var3746=$r5, var2146=org.apache.log4j.AsyncAppender$Dispatcher, var1002=$r6, var3294=$r9, var1844=$r8, var1131=$r7, var231=java.lang.Runnable, var3136=$r10, var1150=1, var538=$r12, var1803=$r11, var871=$r15, var272=$r13, var426=$r14, var1440=$r16, var566=$r17, var2265=$r18}
; {org.apache.log4j.AsyncAppender=var3757, r0=var1367, org.apache.log4j.AppenderSkeleton=var1617, java.util.ArrayList=var3223, $r1=var83, java.util.List=var2309, java.util.HashMap=var2488, $r2=var3074, java.util.Map=var1278, org.apache.log4j.helpers.AppenderAttachableImpl=var3340, $r3=var2655, $r4=var91, java.lang.Thread=var1587, $r5=var3746, org.apache.log4j.AsyncAppender$Dispatcher=var2146, $r6=var1002, $r9=var3294, $r8=var1844, $r7=var1131, java.lang.Runnable=var231, $r10=var3136, 1=var1150, $r12=var538, $r11=var1803, $r15=var871, $r13=var272, $r14=var426, $r16=var1440, $r17=var566, $r18=var2265}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.AsyncAppender;	specialinvoke r0.<org.apache.log4j.AppenderSkeleton: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.apache.log4j.AsyncAppender: java.util.List buffer> = $r1;	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<org.apache.log4j.AsyncAppender: java.util.Map discardMap> = $r2;	r0.<org.apache.log4j.AsyncAppender: int bufferSize> = 128;	r0.<org.apache.log4j.AsyncAppender: boolean locationInfo> = 0;	r0.<org.apache.log4j.AsyncAppender: boolean blocking> = 1;	$r3 = new org.apache.log4j.helpers.AppenderAttachableImpl;	specialinvoke $r3.<org.apache.log4j.helpers.AppenderAttachableImpl: void <init>()>();	r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl appenders> = $r3;	$r4 = r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl appenders>;	r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl aai> = $r4;	$r5 = new java.lang.Thread;	$r6 = new org.apache.log4j.AsyncAppender$Dispatcher;	$r9 = r0.<org.apache.log4j.AsyncAppender: java.util.List buffer>;	$r8 = r0.<org.apache.log4j.AsyncAppender: java.util.Map discardMap>;	$r7 = r0.<org.apache.log4j.AsyncAppender: org.apache.log4j.helpers.AppenderAttachableImpl appenders>;	specialinvoke $r6.<org.apache.log4j.AsyncAppender$Dispatcher: void <init>(org.apache.log4j.AsyncAppender,java.util.List,java.util.Map,org.apache.log4j.helpers.AppenderAttachableImpl)>(r0, $r9, $r8, $r7);	specialinvoke $r5.<java.lang.Thread: void <init>(java.lang.Runnable)>($r6);	r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher> = $r5;	$r10 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher>;	virtualinvoke $r10.<java.lang.Thread: void setDaemon(boolean)>(1);	$r12 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher>;	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r15 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("AsyncAppender-Dispatcher-");	$r13 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher>;	$r14 = virtualinvoke $r13.<java.lang.Thread: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r12.<java.lang.Thread: void setName(java.lang.String)>($r17);	$r18 = r0.<org.apache.log4j.AsyncAppender: java.lang.Thread dispatcher>;	virtualinvoke $r18.<java.lang.Thread: void start()>();	return
;block_num 1