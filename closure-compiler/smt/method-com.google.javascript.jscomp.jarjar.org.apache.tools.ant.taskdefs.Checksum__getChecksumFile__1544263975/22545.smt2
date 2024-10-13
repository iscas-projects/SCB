(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun todir/1833161119 (var1415) var3154)
(declare-fun getParentFile/-182598033 (var3154) var3154)
(declare-fun var3154-init () var3154)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1128186653 (var3154) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileext/1833161119 (var1415) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3154 var3154 String) void)
(declare-const null-var1415 var1415)
(declare-const null-var3154 var3154)
(declare-const var2202 var1415) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum 
(assert (not (= var2202 null-var1415)))
(declare-const var2271 var3154) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2271 null-var3154)))
(define-const var2265 var3154 (todir/1833161119 var2202)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.io.File todir> 
 ; Statement: if $r1 == null goto r13 = virtualinvoke r2.<java.io.File: java.io.File getParentFile()>() 
(assert (= var2265 null-var3154)) ; Cond: $r1 == null 
(assert true)
(define-const var41 var3154 (getParentFile/-182598033 var2271)) ; Statement: r13 = virtualinvoke r2.<java.io.File: java.io.File getParentFile()>() 
(assert true) ; Non Conditional
(define-const var3958 var3154 var3154-init) ; Statement: $r3 = new java.io.File 
(define-const var786 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var786)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var786!1 String)
(assert (= var786!1 ""))
(assert true)
(define-const var123 String (getName/1128186653 var2271)) ; Statement: $r5 = virtualinvoke r2.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2040 String (append/672562846 var786!1 var123)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var786!2 String)
(assert (= var786!2 (str.++ var786!1 var123)))
(define-const var107 String (fileext/1833161119 var2202)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.lang.String fileext> 
(assert true)
(define-const var1989 String (append/672562846 var2040 var107)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2040!1 String)
(assert (= var2040!1 (str.++ var2040 var107)))
(assert true)
(define-const var402 String (toString/-2075883882 var1989)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3958 var41 var402)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>(r13, $r9) 

(declare-const var3958!1 var3154)
(declare-const var41!1 var3154)
(declare-const var402!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {todir/1833161119=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), var3154-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileext/1833161119=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var1415=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum, var2202=r0, var3154=java.io.File, var2271=r2, var2265=$r1, var41=r13, var3958=$r3, var786=$r4, var123=$r5, var2040=$r7, var107=$r6, var1989=$r8, var402=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum=var1415, r0=var2202, java.io.File=var3154, r2=var2271, $r1=var2265, r13=var41, $r3=var3958, $r4=var786, $r5=var123, $r7=var2040, $r6=var107, $r8=var1989, $r9=var402}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum;	r2 := @parameter0: java.io.File;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.io.File todir>;	if $r1 == null goto r13 = virtualinvoke r2.<java.io.File: java.io.File getParentFile()>();	r13 = virtualinvoke r2.<java.io.File: java.io.File getParentFile()>();	$r3 = new java.io.File;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r2.<java.io.File: java.lang.String getName()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.lang.String fileext>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>(r13, $r9);	return $r3
;block_num 3