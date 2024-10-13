(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2200 0)
(declare-sort var2578 0)
(declare-sort var726 0)
(declare-sort var1452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun host/-4640814 (var2200) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1451857567 (var726 String var1452 Int) void)
(declare-fun cast-from-var2200-to-var726 (var2200) var726)
(declare-fun cast-from-var2578-to-var1452 (var2578) var1452)
(declare-fun setDomainAndName/-1928662834 (var2200 String) void)
(declare-fun setProperty/110387416 (var2200 String String) void)
(declare-const null-var2200 var2200)
(declare-const null-var2578 var2578)
(declare-const var1819 var2200) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var1819 null-var2200)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var507 var2578) ; Statement: $r14 := @caughtexception 
(assert (not (= var507 null-var2578)))
(define-const var633 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var633)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var633!1 String)
(assert (= var633!1 ""))
(assert true)
(define-const var3088 String (append/672562846 var633!1 "Error retrieving remote host information for host:")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error retrieving remote host information for host:") 
(declare-const var633!2 String)
(assert (= var633!2 (str.++ var633!1 "Error retrieving remote host information for host:")))
(define-const var2260 String (host/-4640814 var1819)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String host> 
(assert true)
(define-const var934 String (append/672562846 var3088 var2260)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3088!1 String)
(assert (= var3088!1 (str.++ var3088 var2260)))
(assert true)
(define-const var965 String (append/672562846 var934 ".")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var934!1 String)
(assert (= var934!1 (str.++ var934 ".")))
(assert true)
(define-const var1632 String (toString/-2075883882 var965)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1451857567 (cast-from-var2200-to-var726 var1819) var1632 (cast-from-var2578-to-var1452 var507) 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void log(java.lang.String,java.lang.Throwable,int)>($r20, $r14, 1) 

(declare-const var1819!1 var2200)
(declare-const var1632!1 String)
(declare-const var507!1 var2578)
(declare-const var3334 Int)
(define-const var1537 String (host/-4640814 var1819!1)) ; Statement: $r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String host> 
(assert true)
;(assert (setDomainAndName/-1928662834 var1819!1 var1537)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setDomainAndName(java.lang.String)>($r21) 

(declare-const var1819!2 var2200)
(declare-const var1537!1 String)
(assert true)
;(assert (setProperty/110387416 var1819!2 "ADDR4" "0.0.0.0")) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("ADDR4", "0.0.0.0") 

(declare-const var1819!3 var2200)
(declare-const var1622 String)
(declare-const var1531 String)
(assert true)
;(assert (setProperty/110387416 var1819!3 "ADDR6" "::")) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("ADDR6", "::") 

(declare-const var1819!4 var2200)
(declare-const var2662 String)
(declare-const var3754 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), host/-4640814=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1451857567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, java.lang.Throwable, int], void), cast-from-var2200-to-var726=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), cast-from-var2578-to-var1452=([java.lang.Exception], java.lang.Throwable), setDomainAndName/-1928662834=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, java.lang.String], void), setProperty/110387416=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, java.lang.String, java.lang.String], void)}
; {var2200=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var1819=r0, var2578=java.lang.Exception, var507=$r14, var633=$r15, var3088=$r17, var2260=$r16, var934=$r18, var965=$r19, var1632=$r20, var726=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1452=java.lang.Throwable, var3334=1, var1537=$r21, var1622="ADDR4", var1531="0.0.0.0", var2662="ADDR6", var3754="::"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var2200, r0=var1819, java.lang.Exception=var2578, $r14=var507, $r15=var633, $r17=var3088, $r16=var2260, $r18=var934, $r19=var965, $r20=var1632, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var726, java.lang.Throwable=var1452, 1=var3334, $r21=var1537, "ADDR4"=var1622, "0.0.0.0"=var1531, "ADDR6"=var2662, "::"=var3754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	$r14 := @caughtexception;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error retrieving remote host information for host:");	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String host>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void log(java.lang.String,java.lang.Throwable,int)>($r20, $r14, 1);	$r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String host>;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setDomainAndName(java.lang.String)>($r21);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("ADDR4", "0.0.0.0");	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: void setProperty(java.lang.String,java.lang.String)>("ADDR6", "::");	return
;block_num 3