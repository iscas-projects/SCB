(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3300 0)
(declare-sort var1810 0)
(declare-sort var1973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun source/380082318 (var3300) var1973)
(declare-fun getName/1128186653 (var1973) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1973-init () var1973)
(declare-fun dest/380082318 (var3300) var1973)
(declare-fun <init>/-1833447926 (var1973 var1973 String) void)
(declare-const null-var3300 var3300)
(declare-const null-String String)
(declare-const null-var1973 var1973)
(declare-const var2955 var3300) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack 
(assert (not (= var2955 null-var3300)))
(declare-const var3855 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3855 null-String)))
(define-const var2571 var1973 (source/380082318 var2955)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source> 
(assert (not (= var2571 null-var1973))) ; Cond: $r1 != null 
(define-const var3673 var1973 (source/380082318 var2955)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source> 
(assert true)
(define-const var1817 String (getName/1128186653 var3673)) ; Statement: $r10 = virtualinvoke $r2.<java.io.File: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var3110 String var1817) ; Statement: r3 = $r10 
(assert true)
(define-const var3364 Int (length/-134980193 var1817)) ; Statement: $i5 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: if r4 == null goto $r11 = new java.io.File 
(assert (= var3855 null-String)) ; Cond: r4 == null 
(define-const var3604 var1973 var1973-init) ; Statement: $r11 = new java.io.File 
(define-const var2757 var1973 (dest/380082318 var2955)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest> 
(assert true)
;(assert (<init>/-1833447926 var3604 var2757 var3110)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, r3) 

(declare-const var3604!1 var1973)
(declare-const var2757!1 var1973)
(declare-const var3110!1 String)
(declare-const var2955!1 var3300)
(assert (not (= var2955!1 null-var3300)))
(assert (= (dest/380082318 var2955!1) var3604!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest> = $r11 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {source/380082318=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack], java.io.File), getName/1128186653=([java.io.File], java.lang.String), length/-134980193=([java.lang.String], int), var1973-init=([], java.io.File), dest/380082318=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var3300=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack, var2955=r0, var3855=r4, var1810=null_type, var1973=java.io.File, var2571=$r1, var3673=$r2, var1817=$r10, var3110=r3, var3364=$i5, var3604=$r11, var2757=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack=var3300, r0=var2955, r4=var3855, null_type=var1810, java.io.File=var1973, $r1=var2571, $r2=var3673, $r10=var1817, r3=var3110, $i5=var3364, $r11=var3604, $r12=var2757}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack;	r4 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source>;	$r10 = virtualinvoke $r2.<java.io.File: java.lang.String getName()>();	r3 = $r10;	$i5 = virtualinvoke $r10.<java.lang.String: int length()>();	if r4 == null goto $r11 = new java.io.File;	$r11 = new java.io.File;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest>;	specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, r3);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest> = $r11;	return
;block_num 5