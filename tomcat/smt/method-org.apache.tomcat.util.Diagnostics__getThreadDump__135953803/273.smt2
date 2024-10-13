(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1596 0)
(declare-sort var683 0)
(declare-sort var3792 0)
(declare-sort var1094 0)
(declare-sort var3238 0)
(declare-sort var3347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var683_getThreadDumpHeader/-1578315336 (var1596) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLockedSynchronizers/-1996175131 (var1596) (Array Int var3792))
(declare-fun getLength-Arr-var3792-1 ((Array Int var3792)) Int)
(declare-fun getStackTrace/-617337098 (var1596) (Array Int var1094))
(declare-fun getLength-Arr-var1094-1 ((Array Int var1094)) Int)
(declare-fun arr-var3238-init () (Array Int var3238))
(declare-fun getLockedMonitors/1963647608 (var1596) (Array Int var3347))
(declare-fun getLength-Arr-var3347-1 ((Array Int var3347)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1596 var1596)
(declare-const var1082 var1596) ; Statement: r1 := @parameter0: java.lang.management.ThreadInfo 
(assert (not (= var1082 null-var1596)))
(define-const var3176 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3827 String (var683_getThreadDumpHeader/-1578315336 var1082)) ; Statement: $r2 = staticinvoke <org.apache.tomcat.util.Diagnostics: java.lang.String getThreadDumpHeader(java.lang.management.ThreadInfo)>(r1) 
(assert true)
;(assert (<init>/-1061048412 var3176 var3827)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3176!1 String)
(assert (= var3176!1 var3827))
(assert true)
(define-const var2480 (Array Int var3792) (getLockedSynchronizers/-1996175131 var1082)) ; Statement: r20 = virtualinvoke r1.<java.lang.management.ThreadInfo: java.lang.management.LockInfo[] getLockedSynchronizers()>() 
(define-const var1972 Int (getLength-Arr-var3792-1 var2480)) ; Statement: i5 = lengthof r20 
(define-const var1209 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto z0 = 1 
(assert (>= var1209 var1972)) ; Cond: i6 >= i5 
(define-const var544 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(assert true)
(define-const var1681 (Array Int var1094) (getStackTrace/-617337098 var1082)) ; Statement: r22 = virtualinvoke r1.<java.lang.management.ThreadInfo: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var740 Int (getLength-Arr-var1094-1 var1681)) ; Statement: $i0 = lengthof r22 
(define-const var464 (Array Int var3238) arr-var3238-init) ; Statement: r23 = newarray (java.lang.Object)[$i0] 
(assert true)
(define-const var2558 (Array Int var3347) (getLockedMonitors/1963647608 var1082)) ; Statement: r24 = virtualinvoke r1.<java.lang.management.ThreadInfo: java.lang.management.MonitorInfo[] getLockedMonitors()>() 
(define-const var3483 Int (getLength-Arr-var3347-1 var2558)) ; Statement: i7 = lengthof r24 
(define-const var1097 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i7 goto i9 = 0 
(assert (>= var1097 var3483)) ; Cond: i8 >= i7 
(define-const var769 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var3658 Int (getLength-Arr-var1094-1 var1681)) ; Statement: $i1 = lengthof r22 
 ; Statement: if i9 >= $i1 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var769 var3658)) ; Cond: i9 >= $i1 
(assert true)
(define-const var3424 String (toString/-2075883882 var3176!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var683_getThreadDumpHeader/-1578315336=([java.lang.management.ThreadInfo], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLockedSynchronizers/-1996175131=([java.lang.management.ThreadInfo], java.lang.management.LockInfo[]), getLength-Arr-var3792-1=([java.lang.management.LockInfo[]], int), getStackTrace/-617337098=([java.lang.management.ThreadInfo], java.lang.StackTraceElement[]), getLength-Arr-var1094-1=([java.lang.StackTraceElement[]], int), arr-var3238-init=([], java.lang.Object[]), getLockedMonitors/1963647608=([java.lang.management.ThreadInfo], java.lang.management.MonitorInfo[]), getLength-Arr-var3347-1=([java.lang.management.MonitorInfo[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1596=java.lang.management.ThreadInfo, var1082=r1, var3176=$r0, var683=org.apache.tomcat.util.Diagnostics, var3827=$r2, var3792=java.lang.management.LockInfo, var2480=r20, var1972=i5, var1209=i6, var544=z0, var1094=java.lang.StackTraceElement, var1681=r22, var740=$i0, var3238=java.lang.Object, var464=r23, var3347=java.lang.management.MonitorInfo, var2558=r24, var3483=i7, var1097=i8, var769=i9, var3658=$i1, var3424=$r3}
; {java.lang.management.ThreadInfo=var1596, r1=var1082, $r0=var3176, org.apache.tomcat.util.Diagnostics=var683, $r2=var3827, java.lang.management.LockInfo=var3792, r20=var2480, i5=var1972, i6=var1209, z0=var544, java.lang.StackTraceElement=var1094, r22=var1681, $i0=var740, java.lang.Object=var3238, r23=var464, java.lang.management.MonitorInfo=var3347, r24=var2558, i7=var3483, i8=var1097, i9=var769, $i1=var3658, $r3=var3424}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.management.ThreadInfo;	$r0 = new java.lang.StringBuilder;	$r2 = staticinvoke <org.apache.tomcat.util.Diagnostics: java.lang.String getThreadDumpHeader(java.lang.management.ThreadInfo)>(r1);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	r20 = virtualinvoke r1.<java.lang.management.ThreadInfo: java.lang.management.LockInfo[] getLockedSynchronizers()>();	i5 = lengthof r20;	i6 = 0;	if i6 >= i5 goto z0 = 1;	z0 = 1;	r22 = virtualinvoke r1.<java.lang.management.ThreadInfo: java.lang.StackTraceElement[] getStackTrace()>();	$i0 = lengthof r22;	r23 = newarray (java.lang.Object)[$i0];	r24 = virtualinvoke r1.<java.lang.management.ThreadInfo: java.lang.management.MonitorInfo[] getLockedMonitors()>();	i7 = lengthof r24;	i8 = 0;	if i8 >= i7 goto i9 = 0;	i9 = 0;	$i1 = lengthof r22;	if i9 >= $i1 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7