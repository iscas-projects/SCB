(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var585 0)
(declare-sort var2589 0)
(declare-sort var64 0)
(declare-sort var1824 0)
(declare-sort var1269 0)
(declare-sort var3941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1971558710 (var585) var2589)
(declare-fun var2589_access$700/209335923 (var2589) Int)
(declare-fun is/1971558710 (var585) var64)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun source/1971558710 (var585) var1824)
(declare-fun append/-1031950772 (String var1269) String)
(declare-fun cast-from-var1824-to-var1269 (var1824) var1269)
(declare-fun dest/1971558710 (var585) var3941)
(declare-fun cast-from-var3941-to-var1269 (var3941) var1269)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logLevel/1971558710 (var585) Int)
(declare-fun log/-1813190167 (var2589 String Int) void)
(declare-fun var2589_access$100/267326228 (var2589) Bool)
(declare-const null-var585 var585)
(declare-const null-var64 var64)
(declare-const var3517 var585) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread 
(assert (not (= var3517 null-var585)))
(define-const var3462 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3544 var2589 (this$0/1971558710 var3517)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var3273 Int (var2589_access$700/209335923 var3544)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: int access$700(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r1) 
 ; Statement: if i4 >= $i0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is> 
(assert (>= var3462 var3273)) ; Cond: i4 >= $i0 
(define-const var506 var64 (is/1971558710 var3517)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(assert (not (not (= var506 null-var64)))) ; Negate: Cond: $r2 != null  
(define-const var652 var2589 (this$0/1971558710 var3517)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var2270 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2270)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2270!1 String)
(assert (= var2270!1 ""))
(assert true)
(define-const var1864 String (append/672562846 var2270!1 "Can\u0027t get ")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get ") 
(declare-const var2270!2 String)
(assert (= var2270!2 (str.++ var2270!1 "Can\u0027t get ")))
(define-const var1219 var1824 (source/1971558710 var3517)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source> 
(assert true)
(define-const var814 String (append/-1031950772 var1864 (cast-from-var1824-to-var1269 var1219))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var1864!1 String)
(assert (str.prefixof var1864 var1864!1))
(assert true)
(define-const var144 String (append/672562846 var814 " to ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var814!1 String)
(assert (= var814!1 (str.++ var814 " to ")))
(define-const var3973 var3941 (dest/1971558710 var3517)) ; Statement: $r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.File dest> 
(assert true)
(define-const var2507 String (append/-1031950772 var144 (cast-from-var3941-to-var1269 var3973))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var144!1 String)
(assert (str.prefixof var144 var144!1))
(assert true)
(define-const var1788 String (toString/-2075883882 var2507)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1398 Int (logLevel/1971558710 var3517)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int logLevel> 
(assert true)
;(assert (log/-1813190167 var652 var1788 var1398)) ; Statement: virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: void log(java.lang.String,int)>($r24, $i2) 

(declare-const var652!1 var2589)
(declare-const var1788!1 String)
(declare-const var1398!1 Int)
(define-const var2822 var2589 (this$0/1971558710 var3517)) ; Statement: $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var3698 Bool (var2589_access$100/267326228 var2822)) ; Statement: $z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r25) 
 ; Statement: if $z3 == 0 goto $r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= (ite var3698 1 0) 0))) ; Negate: Cond: $z3 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get), var2589_access$700/209335923=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], int), is/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.io.InputStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), source/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1824-to-var1269=([java.net.URL], java.lang.Object), dest/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.io.File), cast-from-var3941-to-var1269=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logLevel/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], int), log/-1813190167=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, java.lang.String, int], void), var2589_access$100/267326228=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean)}
; {var585=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread, var3517=r0, var3462=i4, var2589=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, var3544=$r1, var3273=$i0, var64=java.io.InputStream, var506=$r2, var652=$r17, var2270=$r16, var1864=$r19, var1824=java.net.URL, var1219=$r18, var1269=java.lang.Object, var814=$r20, var144=$r22, var3941=java.io.File, var3973=$r21, var2507=$r23, var1788=$r24, var1398=$i2, var2822=$r25, var3698=$z3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread=var585, r0=var3517, i4=var3462, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get=var2589, $r1=var3544, $i0=var3273, java.io.InputStream=var64, $r2=var506, $r17=var652, $r16=var2270, $r19=var1864, java.net.URL=var1824, $r18=var1219, java.lang.Object=var1269, $r20=var814, $r22=var144, java.io.File=var3941, $r21=var3973, $r23=var2507, $r24=var1788, $i2=var1398, $r25=var2822, $z3=var3698}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread;	i4 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: int access$700(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r1);	if i4 >= $i0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get ");	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.File dest>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int logLevel>;	virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: void log(java.lang.String,int)>($r24, $i2);	$r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r25);	if $z3 == 0 goto $r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	return 0
;block_num 5