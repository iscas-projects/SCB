(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1377 0)
(declare-sort var1612 0)
(declare-sort var1394 0)
(declare-sort var3475 0)
(declare-sort var2107 0)
(declare-sort var3849 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1394_getInstance/1373634036 () var1394)
(declare-fun pattern/-360596079 (var1377) String)
(declare-fun var3475-init () var3475)
(declare-fun <init>/-1862704206 (var3475 String) void)
(declare-fun getCurrentValue/1774466772 (var1377 String) String)
(declare-fun operation/-360596079 (var1377) Int)
(declare-fun getTime/1495208012 (var1394) var3849)
(declare-fun format/215566421 (var1472 var3849) String)
(declare-fun cast-from-var3475-to-var1472 (var3475) var1472)
(declare-fun newValue/-360596079 (var1377) String)
(declare-const null-var1377 var1377)
(declare-const null-String String)
(declare-const null-var2107 var2107)
(declare-const var518 var1377) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry 
(assert (not (= var518 null-var1377)))
(declare-const var872 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var872 null-String)))
(define-const var836 var1394 var1394_getInstance/1373634036) ; Statement: r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(define-const var3871 String (pattern/-360596079 var518)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern> 
 ; Statement: if $r2 != null goto $r22 = new java.text.SimpleDateFormat 
(assert (not (= var3871 null-String))) ; Cond: $r2 != null 
(define-const var3678 var3475 var3475-init) ; Statement: $r22 = new java.text.SimpleDateFormat 
(define-const var2880 String (pattern/-360596079 var518)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern> 
(assert true)
;(assert (<init>/-1862704206 var3678 var2880)) ; Statement: specialinvoke $r22.<java.text.SimpleDateFormat: void <init>(java.lang.String)>($r4) 

(declare-const var3678!1 var3475)
(declare-const var2880!1 String)
(assert true)
(define-const var2230 String (getCurrentValue/1774466772 var518 var872)) ; Statement: $r12 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String getCurrentValue(java.lang.String)>(r5) 
(define-const var3293 String var2230) ; Statement: r21 = $r12 
 ; Statement: if $r12 != null goto $r6 = "now" 
(assert (not (= var2230 null-String))) ; Cond: $r12 != null 
(define-const var1964 String "now") ; Statement: $r6 = "now" 
(assert true)
(define-const var888 Bool (= var1964 var3293)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r21) 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke $r22.<java.text.DateFormat: java.util.Date parse(java.lang.String)>(r21) 
(assert (not (= (ite var888 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1015 var2107) ; Statement: $r20 := @caughtexception 
(assert (not (= var1015 null-var2107)))
(assert true) ; Non Conditional
(define-const var1961 Int (operation/-360596079 var518)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation> 
 ; Statement: if $i2 == 2 goto $r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>() 
(assert (= var1961 2)) ; Cond: $i2 == 2 
(assert true)
(define-const var3774 var3849 (getTime/1495208012 var836)) ; Statement: $r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>() 
(assert true)
(define-const var3558 String (format/215566421 (cast-from-var3475-to-var1472 var3678!1) var3774)) ; Statement: $r9 = virtualinvoke $r22.<java.text.DateFormat: java.lang.String format(java.util.Date)>($r8) 
(declare-const var518!1 var1377)
(assert (not (= var518!1 null-var1377)))
(assert (= (newValue/-360596079 var518!1) var3558)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String newValue> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1394_getInstance/1373634036=([], java.util.Calendar), pattern/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], java.lang.String), var3475-init=([], java.text.SimpleDateFormat), <init>/-1862704206=([java.text.SimpleDateFormat, java.lang.String], void), getCurrentValue/1774466772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry, java.lang.String], java.lang.String), operation/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], int), getTime/1495208012=([java.util.Calendar], java.util.Date), format/215566421=([java.text.DateFormat, java.util.Date], java.lang.String), cast-from-var3475-to-var1472=([java.text.SimpleDateFormat], java.text.DateFormat), newValue/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], java.lang.String)}
; {var1377=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry, var518=r1, var872=r5, var1612=null_type, var1394=java.util.Calendar, var836=r0, var3871=$r2, var3475=java.text.SimpleDateFormat, var3678=$r22, var2880=$r4, var2230=$r12, var3293=r21, var1964=$r6, var888=$z0, var2107=java.text.ParseException, var1015=$r20, var1961=$i2, var3849=java.util.Date, var3774=$r8, var1472=java.text.DateFormat, var3558=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry=var1377, r1=var518, r5=var872, null_type=var1612, java.util.Calendar=var1394, r0=var836, $r2=var3871, java.text.SimpleDateFormat=var3475, $r22=var3678, $r4=var2880, $r12=var2230, r21=var3293, $r6=var1964, $z0=var888, java.text.ParseException=var2107, $r20=var1015, $i2=var1961, java.util.Date=var3849, $r8=var3774, java.text.DateFormat=var1472, $r9=var3558}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry;	r5 := @parameter0: java.lang.String;	r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern>;	if $r2 != null goto $r22 = new java.text.SimpleDateFormat;	$r22 = new java.text.SimpleDateFormat;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern>;	specialinvoke $r22.<java.text.SimpleDateFormat: void <init>(java.lang.String)>($r4);	$r12 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String getCurrentValue(java.lang.String)>(r5);	r21 = $r12;	if $r12 != null goto $r6 = "now";	$r6 = "now";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r21);	if $z0 == 0 goto $r7 = virtualinvoke $r22.<java.text.DateFormat: java.util.Date parse(java.lang.String)>(r21);	$r20 := @caughtexception;	$i2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation>;	if $i2 == 2 goto $r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>();	$r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>();	$r9 = virtualinvoke $r22.<java.text.DateFormat: java.lang.String format(java.util.Date)>($r8);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String newValue> = $r9;	return
;block_num 6