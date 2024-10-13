(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2079 0)
(declare-sort var2397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun todir/1833161119 (var2079) var2397)
(declare-fun getRelativeFilePath/-1621354196 (var2079 var2397) String)
(declare-fun var2397-init () var2397)
(declare-fun <init>/-1833447926 (var2397 var2397 String) void)
(declare-fun getParentFile/-182598033 (var2397) var2397)
(declare-fun mkdirs/-2114252793 (var2397) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1128186653 (var2397) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileext/1833161119 (var2079) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2079 var2079)
(declare-const null-var2397 var2397)
(declare-const var3522 var2079) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum 
(assert (not (= var3522 null-var2079)))
(declare-const var2645 var2397) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2645 null-var2397)))
(define-const var2315 var2397 (todir/1833161119 var3522)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.io.File todir> 
 ; Statement: if $r1 == null goto r13 = virtualinvoke r2.<java.io.File: java.io.File getParentFile()>() 
(assert (not (= var2315 null-var2397))) ; Negate: Cond: $r1 == null  
(assert true)
(define-const var400 String (getRelativeFilePath/-1621354196 var3522 var2645)) ; Statement: r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.lang.String getRelativeFilePath(java.io.File)>(r2) 
(define-const var3767 var2397 var2397-init) ; Statement: $r11 = new java.io.File 
(define-const var1944 var2397 (todir/1833161119 var3522)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.io.File todir> 
(assert true)
;(assert (<init>/-1833447926 var3767 var1944 var400)) ; Statement: specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, r10) 

(declare-const var3767!1 var2397)
(declare-const var1944!1 var2397)
(declare-const var400!1 String)
(assert true)
(define-const var3778 var2397 (getParentFile/-182598033 var3767!1)) ; Statement: r13 = virtualinvoke $r11.<java.io.File: java.io.File getParentFile()>() 
(assert true)
;(assert (mkdirs/-2114252793 var3778)) ; Statement: virtualinvoke r13.<java.io.File: boolean mkdirs()>() 

(declare-const var3778!1 var2397)
 ; Statement: goto [?= $r3 = new java.io.File] 
(assert true) ; Non Conditional
(define-const var3317 var2397 var2397-init) ; Statement: $r3 = new java.io.File 
(define-const var2765 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2765)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2765!1 String)
(assert (= var2765!1 ""))
(assert true)
(define-const var2778 String (getName/1128186653 var2645)) ; Statement: $r5 = virtualinvoke r2.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2208 String (append/672562846 var2765!1 var2778)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2765!2 String)
(assert (= var2765!2 (str.++ var2765!1 var2778)))
(define-const var372 String (fileext/1833161119 var3522)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.lang.String fileext> 
(assert true)
(define-const var565 String (append/672562846 var2208 var372)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2208!1 String)
(assert (= var2208!1 (str.++ var2208 var372)))
(assert true)
(define-const var2134 String (toString/-2075883882 var565)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3317 var3778!1 var2134)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>(r13, $r9) 

(declare-const var3317!1 var2397)
(declare-const var3778!2 var2397)
(declare-const var2134!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {todir/1833161119=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum], java.io.File), getRelativeFilePath/-1621354196=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum, java.io.File], java.lang.String), var2397-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), getParentFile/-182598033=([java.io.File], java.io.File), mkdirs/-2114252793=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1128186653=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileext/1833161119=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2079=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum, var3522=r0, var2397=java.io.File, var2645=r2, var2315=$r1, var400=r10, var3767=$r11, var1944=$r12, var3778=r13, var3317=$r3, var2765=$r4, var2778=$r5, var2208=$r7, var372=$r6, var565=$r8, var2134=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum=var2079, r0=var3522, java.io.File=var2397, r2=var2645, $r1=var2315, r10=var400, $r11=var3767, $r12=var1944, r13=var3778, $r3=var3317, $r4=var2765, $r5=var2778, $r7=var2208, $r6=var372, $r8=var565, $r9=var2134}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum;	r2 := @parameter0: java.io.File;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.io.File todir>;	if $r1 == null goto r13 = virtualinvoke r2.<java.io.File: java.io.File getParentFile()>();	r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.lang.String getRelativeFilePath(java.io.File)>(r2);	$r11 = new java.io.File;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.io.File todir>;	specialinvoke $r11.<java.io.File: void <init>(java.io.File,java.lang.String)>($r12, r10);	r13 = virtualinvoke $r11.<java.io.File: java.io.File getParentFile()>();	virtualinvoke r13.<java.io.File: boolean mkdirs()>();	goto [?= $r3 = new java.io.File];	$r3 = new java.io.File;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r2.<java.io.File: java.lang.String getName()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum: java.lang.String fileext>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>(r13, $r9);	return $r3
;block_num 3