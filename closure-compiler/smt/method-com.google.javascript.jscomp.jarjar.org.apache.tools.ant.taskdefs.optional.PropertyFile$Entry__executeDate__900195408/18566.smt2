(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1529 0)
(declare-sort var3674 0)
(declare-sort var2153 0)
(declare-sort var58 0)
(declare-sort var1093 0)
(declare-sort var997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2153_getInstance/1373634036 () var2153)
(declare-fun pattern/-360596079 (var1529) String)
(declare-fun var58-init () var58)
(declare-fun <init>/-1862704206 (var58 String) void)
(declare-fun getCurrentValue/1774466772 (var1529 String) String)
(declare-fun var1093-init () var1093)
(declare-fun <init>/-788057745 (var1093) void)
(declare-fun setTime/-1821537528 (var2153 var1093) void)
(declare-fun operation/-360596079 (var1529) Int)
(declare-fun getTime/1495208012 (var2153) var1093)
(declare-fun format/215566421 (var997 var1093) String)
(declare-fun cast-from-var58-to-var997 (var58) var997)
(declare-fun newValue/-360596079 (var1529) String)
(declare-const null-var1529 var1529)
(declare-const null-String String)
(declare-const var2058 var1529) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry 
(assert (not (= var2058 null-var1529)))
(declare-const var2593 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2593 null-String)))
(define-const var2900 var2153 var2153_getInstance/1373634036) ; Statement: r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(define-const var2916 String (pattern/-360596079 var2058)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern> 
 ; Statement: if $r2 != null goto $r22 = new java.text.SimpleDateFormat 
(assert (not (= var2916 null-String))) ; Cond: $r2 != null 
(define-const var3789 var58 var58-init) ; Statement: $r22 = new java.text.SimpleDateFormat 
(define-const var2644 String (pattern/-360596079 var2058)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern> 
(assert true)
;(assert (<init>/-1862704206 var3789 var2644)) ; Statement: specialinvoke $r22.<java.text.SimpleDateFormat: void <init>(java.lang.String)>($r4) 

(declare-const var3789!1 var58)
(declare-const var2644!1 String)
(assert true)
(define-const var475 String (getCurrentValue/1774466772 var2058 var2593)) ; Statement: $r12 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String getCurrentValue(java.lang.String)>(r5) 
(define-const var377 String var475) ; Statement: r21 = $r12 
 ; Statement: if $r12 != null goto $r6 = "now" 
(assert (not (= var475 null-String))) ; Cond: $r12 != null 
(define-const var3223 String "now") ; Statement: $r6 = "now" 
(assert true)
(define-const var1894 Bool (= var3223 var377)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r21) 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke $r22.<java.text.DateFormat: java.util.Date parse(java.lang.String)>(r21) 
(assert (not (= (ite var1894 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3974 var1093 var1093-init) ; Statement: $r23 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var3974)) ; Statement: specialinvoke $r23.<java.util.Date: void <init>()>() 

(declare-const var3974!1 var1093)
(assert true)
;(assert (setTime/-1821537528 var2900 var3974!1)) ; Statement: virtualinvoke r0.<java.util.Calendar: void setTime(java.util.Date)>($r23) 

(declare-const var2900!1 var2153)
(declare-const var3974!2 var1093)
 ; Statement: goto [?= $i2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation>] 
(assert true) ; Non Conditional
(define-const var1937 Int (operation/-360596079 var2058)) ; Statement: $i2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation> 
 ; Statement: if $i2 == 2 goto $r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>() 
(assert (= var1937 2)) ; Cond: $i2 == 2 
(assert true)
(define-const var3273 var1093 (getTime/1495208012 var2900!1)) ; Statement: $r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>() 
(assert true)
(define-const var1305 String (format/215566421 (cast-from-var58-to-var997 var3789!1) var3273)) ; Statement: $r9 = virtualinvoke $r22.<java.text.DateFormat: java.lang.String format(java.util.Date)>($r8) 
(declare-const var2058!1 var1529)
(assert (not (= var2058!1 null-var1529)))
(assert (= (newValue/-360596079 var2058!1) var1305)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String newValue> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2153_getInstance/1373634036=([], java.util.Calendar), pattern/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], java.lang.String), var58-init=([], java.text.SimpleDateFormat), <init>/-1862704206=([java.text.SimpleDateFormat, java.lang.String], void), getCurrentValue/1774466772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry, java.lang.String], java.lang.String), var1093-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), operation/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], int), getTime/1495208012=([java.util.Calendar], java.util.Date), format/215566421=([java.text.DateFormat, java.util.Date], java.lang.String), cast-from-var58-to-var997=([java.text.SimpleDateFormat], java.text.DateFormat), newValue/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], java.lang.String)}
; {var1529=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry, var2058=r1, var2593=r5, var3674=null_type, var2153=java.util.Calendar, var2900=r0, var2916=$r2, var58=java.text.SimpleDateFormat, var3789=$r22, var2644=$r4, var475=$r12, var377=r21, var3223=$r6, var1894=$z0, var1093=java.util.Date, var3974=$r23, var1937=$i2, var3273=$r8, var997=java.text.DateFormat, var1305=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry=var1529, r1=var2058, r5=var2593, null_type=var3674, java.util.Calendar=var2153, r0=var2900, $r2=var2916, java.text.SimpleDateFormat=var58, $r22=var3789, $r4=var2644, $r12=var475, r21=var377, $r6=var3223, $z0=var1894, java.util.Date=var1093, $r23=var3974, $i2=var1937, $r8=var3273, java.text.DateFormat=var997, $r9=var1305}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry;	r5 := @parameter0: java.lang.String;	r0 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern>;	if $r2 != null goto $r22 = new java.text.SimpleDateFormat;	$r22 = new java.text.SimpleDateFormat;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String pattern>;	specialinvoke $r22.<java.text.SimpleDateFormat: void <init>(java.lang.String)>($r4);	$r12 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String getCurrentValue(java.lang.String)>(r5);	r21 = $r12;	if $r12 != null goto $r6 = "now";	$r6 = "now";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r21);	if $z0 == 0 goto $r7 = virtualinvoke $r22.<java.text.DateFormat: java.util.Date parse(java.lang.String)>(r21);	$r23 = new java.util.Date;	specialinvoke $r23.<java.util.Date: void <init>()>();	virtualinvoke r0.<java.util.Calendar: void setTime(java.util.Date)>($r23);	goto [?= $i2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation>];	$i2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation>;	if $i2 == 2 goto $r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>();	$r8 = virtualinvoke r0.<java.util.Calendar: java.util.Date getTime()>();	$r9 = virtualinvoke $r22.<java.text.DateFormat: java.lang.String format(java.util.Date)>($r8);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String newValue> = $r9;	return
;block_num 6