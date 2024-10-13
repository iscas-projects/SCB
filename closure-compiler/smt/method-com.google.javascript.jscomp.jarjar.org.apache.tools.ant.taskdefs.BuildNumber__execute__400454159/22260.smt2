(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3803 0)
(declare-sort var27 0)
(declare-sort var2826 0)
(declare-sort var815 0)
(declare-sort var3482 0)
(declare-sort var2776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myFile/1619771515 (var3803) var27)
(declare-fun validate/-1360679648 (var3803) void)
(declare-fun loadProperties/2147029884 (var3803) var2826)
(declare-fun getBuildNumber/648275801 (var3803 var2826) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun put/1981026245 (var815 var3482 var3482) var3482)
(declare-fun cast-from-var2826-to-var815 (var2826) var815)
(declare-fun cast-from-String-to-var3482 (String) var3482)
(declare-const null-var3803 var3803)
(declare-const null-var2776 var2776)
(declare-const var3281 var3803) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber 
(assert (not (= var3281 null-var3803)))
(define-const var2652 var27 (myFile/1619771515 var3281)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
;(assert (validate/-1360679648 var3281)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: void validate()>() 

(declare-const var3281!1 var3803)
(assert true)
(define-const var133 var2826 (loadProperties/2147029884 var3281!1)) ; Statement: r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.util.Properties loadProperties()>() 
(assert true)
(define-const var692 Int (getBuildNumber/648275801 var3281!1 var133)) ; Statement: i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: int getBuildNumber(java.util.Properties)>(r2) 
(define-const var392 Int (+ var692 1)) ; Statement: $i1 = i0 + 1 
(define-const var1870 String (String_valueOf/1240665136 var392)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
;(assert (put/1981026245 (cast-from-var2826-to-var815 var133) (cast-from-String-to-var3482 "build.number") (cast-from-String-to-var3482 var1870))) ; Statement: virtualinvoke r2.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("build.number", $r3) 

(declare-const var133!1 var2826)
(declare-const var1963 String)
(declare-const var1870!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3355 var2776) ; Statement: $r9 := @caughtexception 
(assert (not (= var3355 null-var2776)))
(assert true) ; Non Conditional
(declare-const var3281!2 var3803)
(assert (not (= var3281!2 null-var3803)))
(assert (= (myFile/1619771515 var3281!2) var2652)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> = r1 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {myFile/1619771515=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber], java.io.File), validate/-1360679648=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber], void), loadProperties/2147029884=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber], java.util.Properties), getBuildNumber/648275801=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber, java.util.Properties], int), String_valueOf/1240665136=([int], java.lang.String), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var2826-to-var815=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var3482=([java.lang.String], java.lang.Object)}
; {var3803=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber, var3281=r0, var27=java.io.File, var2652=r1, var2826=java.util.Properties, var133=r2, var692=i0, var392=$i1, var1870=$r3, var815=java.util.Hashtable, var3482=java.lang.Object, var1963="build.number", var2776=java.lang.Throwable, var3355=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber=var3803, r0=var3281, java.io.File=var27, r1=var2652, java.util.Properties=var2826, r2=var133, i0=var692, $i1=var392, $r3=var1870, java.util.Hashtable=var815, java.lang.Object=var3482, "build.number"=var1963, java.lang.Throwable=var2776, $r9=var3355}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber;	r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: void validate()>();	r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.util.Properties loadProperties()>();	i0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: int getBuildNumber(java.util.Properties)>(r2);	$i1 = i0 + 1;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	virtualinvoke r2.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>("build.number", $r3);	$r9 := @caughtexception;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> = r1;	throw $r9
;block_num 3