(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3112 0)
(declare-sort var3599 0)
(declare-sort var3085 0)
(declare-sort var1794 0)
(declare-sort var1047 0)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entries/1087169286 (var3112) var3599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun date/1087169286 (var3112) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun author/1087169286 (var3112) String)
(declare-fun comment/1087169286 (var3112) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1794_bootstrap$/679388302 (var3112) var3085)
(declare-fun var3599_computeIfAbsent/2133881068 (var3599 var1047 var3085) var1047)
(declare-fun cast-from-String-to-var1047 (String) var1047)
(declare-fun cast-from-var1047-to-var1002 (var1047) var1002)
(declare-fun file/1087169286 (var3112) String)
(declare-fun revision/1087169286 (var3112) String)
(declare-fun previousRevision/1087169286 (var3112) String)
(declare-fun addFile/292173128 (var1002 String String String) void)
(declare-const null-var3112 var3112)
(declare-const var3235 var3112) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var3235 null-var3112)))
(define-const var1048 var3599 (entries/1087169286 var3235)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.util.Map entries> 
(define-const var104 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var104)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var104!1 String)
(assert (= var104!1 ""))
(define-const var1027 String (date/1087169286 var3235)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String date> 
(assert true)
(define-const var3368 String (append/672562846 var104!1 var1027)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var104!2 String)
(assert (= var104!2 (str.++ var104!1 var1027)))
(define-const var3156 String (author/1087169286 var3235)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String author> 
(assert true)
(define-const var1995 String (append/672562846 var3368 var3156)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 var3156)))
(define-const var2338 String (comment/1087169286 var3235)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment> 
(assert true)
(define-const var2060 String (append/672562846 var1995 var2338)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1995!1 String)
(assert (= var1995!1 (str.++ var1995 var2338)))
(assert true)
(define-const var873 String (toString/-2075883882 var2060)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1645 var3085 (var1794_bootstrap$/679388302 var3235)) ; Statement: $r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser$lambda_saveEntry_0__458: java.util.function.Function bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser)>(r0) 
(define-const var2159 var1047 (var3599_computeIfAbsent/2133881068 var1048 (cast-from-String-to-var1047 var873) var1645)) ; Statement: $r11 = interfaceinvoke $r2.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>($r10, $r9) 
(define-const var230 var1002 (cast-from-var1047-to-var1002 var2159)) ; Statement: $r15 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry) $r11 
(define-const var963 String (file/1087169286 var3235)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String file> 
(define-const var3532 String (revision/1087169286 var3235)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String revision> 
(define-const var1292 String (previousRevision/1087169286 var3235)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String previousRevision> 
(assert true)
;(assert (addFile/292173128 var230 var963 var3532 var1292)) ; Statement: virtualinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: void addFile(java.lang.String,java.lang.String,java.lang.String)>($r14, $r13, $r12) 

(declare-const var230!1 var1002)
(declare-const var963!1 String)
(declare-const var3532!1 String)
(declare-const var1292!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {entries/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), date/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), author/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), comment/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1794_bootstrap$/679388302=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.util.function.Function), var3599_computeIfAbsent/2133881068=([java.util.Map, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-String-to-var1047=([java.lang.String], java.lang.Object), cast-from-var1047-to-var1002=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry), file/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), revision/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), previousRevision/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), addFile/292173128=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3112=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var3235=r0, var3599=java.util.Map, var1048=$r2, var104=$r1, var1027=$r3, var3368=$r5, var3156=$r4, var1995=$r7, var2338=$r6, var2060=$r8, var873=$r10, var3085=java.util.function.Function, var1794=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser$lambda_saveEntry_0__458, var1645=$r9, var1047=java.lang.Object, var2159=$r11, var1002=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry, var230=$r15, var963=$r14, var3532=$r13, var1292=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var3112, r0=var3235, java.util.Map=var3599, $r2=var1048, $r1=var104, $r3=var1027, $r5=var3368, $r4=var3156, $r7=var1995, $r6=var2338, $r8=var2060, $r10=var873, java.util.function.Function=var3085, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser$lambda_saveEntry_0__458=var1794, $r9=var1645, java.lang.Object=var1047, $r11=var2159, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry=var1002, $r15=var230, $r14=var963, $r13=var3532, $r12=var1292}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.util.Map entries>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String date>;	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String author>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser$lambda_saveEntry_0__458: java.util.function.Function bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser)>(r0);	$r11 = interfaceinvoke $r2.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>($r10, $r9);	$r15 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry) $r11;	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String file>;	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String revision>;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String previousRevision>;	virtualinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CVSEntry: void addFile(java.lang.String,java.lang.String,java.lang.String)>($r14, $r13, $r12);	return
;block_num 1