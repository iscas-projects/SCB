(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1165 0)
(declare-sort var1570 0)
(declare-sort var496 0)
(declare-sort var460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun source/380082318 (var1165) var496)
(declare-fun srcResource/380082318 (var1165) var460)
(declare-fun getLastNamePart/-1380198226 (var1165 var460) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var496-init () var496)
(declare-fun dest/380082318 (var1165) var496)
(declare-fun <init>/-1833447926 (var496 var496 String) void)
(declare-const null-var1165 var1165)
(declare-const null-String String)
(declare-const null-var496 var496)
(declare-const var3486 var1165) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack 
(assert (not (= var3486 null-var1165)))
(declare-const var413 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var413 null-String)))
(define-const var2675 var496 (source/380082318 var3486)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source> 
(assert (not (not (= var2675 null-var496)))) ; Negate: Cond: $r1 != null  
(define-const var3776 var460 (srcResource/380082318 var3486)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource srcResource> 
(assert true)
(define-const var1025 String (getLastNamePart/-1380198226 var3486 var3776)) ; Statement: $r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.lang.String getLastNamePart(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>($r9) 
 ; Statement: goto [?= r3 = $r10] 
(assert true) ; Non Conditional
(define-const var2209 String var1025) ; Statement: r3 = $r10 
(assert true)
(define-const var3191 Int (length/-134980193 var1025)) ; Statement: $i5 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: if r4 == null goto $r11 = new java.io.File 
(assert (= var413 null-String)) ; Cond: r4 == null 
(define-const var896 var496 var496-init) ; Statement: $r11 = new java.io.File 
(define-const var11 var496 (dest/380082318 var3486)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest> 
(assert true)
;(assert (<init>/-1833447926 var896 var11 var2209)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, r3) 

(declare-const var896!1 var496)
(declare-const var11!1 var496)
(declare-const var2209!1 String)
(declare-const var3486!1 var1165)
(assert (not (= var3486!1 null-var1165)))
(assert (= (dest/380082318 var3486!1) var896!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest> = $r11 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {source/380082318=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack], java.io.File), srcResource/380082318=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), getLastNamePart/-1380198226=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), length/-134980193=([java.lang.String], int), var496-init=([], java.io.File), dest/380082318=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var1165=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack, var3486=r0, var413=r4, var1570=null_type, var496=java.io.File, var2675=$r1, var460=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3776=$r9, var1025=$r10, var2209=r3, var3191=$i5, var896=$r11, var11=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack=var1165, r0=var3486, r4=var413, null_type=var1570, java.io.File=var496, $r1=var2675, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var460, $r9=var3776, $r10=var1025, r3=var2209, $i5=var3191, $r11=var896, $r12=var11}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack;	r4 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File source>;	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource srcResource>;	$r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.lang.String getLastNamePart(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)>($r9);	goto [?= r3 = $r10];	r3 = $r10;	$i5 = virtualinvoke $r10.<java.lang.String: int length()>();	if r4 == null goto $r11 = new java.io.File;	$r11 = new java.io.File;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest>;	specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, r3);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Unpack: java.io.File dest> = $r11;	return
;block_num 5