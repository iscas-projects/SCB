(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1951 0)
(declare-sort var809 0)
(declare-sort var3088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun comment/1087169286 (var1951) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3088_lineSeparator/-342590142 () String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun saveEntry/1191947372 (var1951) void)
(declare-fun status/1087169286 (var1951) Int)
(declare-const null-var1951 var1951)
(declare-const null-String String)
(declare-const var1259 var1951) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var1259 null-var1951)))
(declare-const var1930 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1930 null-String)))
(define-const var3343 String "=============================================================================") ; Statement: $r1 = "=============================================================================" 
(assert true)
(define-const var3995 Bool (= var3343 var1930)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "----------------------------" 
(assert (not (= (ite var3995 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3702 String (comment/1087169286 var1259)) ; Statement: $r15 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment> 
(assert true)
(define-const var1162 Int (length/-134980193 var3702)) ; Statement: $i3 = virtualinvoke $r15.<java.lang.String: int length()>() 
(define-const var1862 String var3088_lineSeparator/-342590142) ; Statement: $r16 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var1122 Int (length/-134980193 var1862)) ; Statement: $i2 = virtualinvoke $r16.<java.lang.String: int length()>() 
(define-const var2117 Int (- var1162 var1122)) ; Statement: i4 = $i3 - $i2 
(define-const var3050 String (comment/1087169286 var1259)) ; Statement: $r17 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment> 
(assert (not (and true (and (>= 0 0) (>= (str.len var3050) var2117) (>= var2117 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {comment/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], java.lang.String), length/-134980193=([java.lang.String], int), var3088_lineSeparator/-342590142=([], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), saveEntry/1191947372=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], void), status/1087169286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser], int)}
; {var1951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var1259=r4, var1930=r0, var809=null_type, var3343=$r1, var3995=$z0, var3702=$r15, var1162=$i3, var3088=java.lang.System, var1862=$r16, var1122=$i2, var2117=i4, var3050=$r17, var270=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var1951, r4=var1259, r0=var1930, null_type=var809, $r1=var3343, $z0=var3995, $r15=var3702, $i3=var1162, java.lang.System=var3088, $r16=var1862, $i2=var1122, i4=var2117, $r17=var3050, $r18=var270}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	r0 := @parameter0: java.lang.String;	$r1 = "=============================================================================";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "----------------------------";	$r15 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment>;	$i3 = virtualinvoke $r15.<java.lang.String: int length()>();	$r16 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$i2 = virtualinvoke $r16.<java.lang.String: int length()>();	i4 = $i3 - $i2;	$r17 = r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment>;	$r18 = virtualinvoke $r17.<java.lang.String: java.lang.String substring(int,int)>(0, i4);	r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: java.lang.String comment> = $r18;	specialinvoke r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: void saveEntry()>();	r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser: int status> = 1;	goto [?= return];	return
;block_num 3