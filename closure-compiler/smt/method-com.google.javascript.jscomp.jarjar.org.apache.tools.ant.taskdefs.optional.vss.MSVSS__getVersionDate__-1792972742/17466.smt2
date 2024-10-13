(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1317 0)
(declare-sort var306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fromDate/1944491110 (var1317) String)
(declare-fun toDate/1944491110 (var1317) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1317 var1317)
(declare-const null-String String)
(declare-const var1555 var1317) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var1555 null-var1317)))
(define-const var3097 String (fromDate/1944491110 var1555)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate> 
 ; Statement: if $r1 != null goto $r55 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate> 
(assert (not (= var3097 null-String))) ; Cond: $r1 != null 
(define-const var3175 String (fromDate/1944491110 var1555)) ; Statement: $r55 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate> 
 ; Statement: if $r55 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate> 
(assert (not (= var3175 null-String))) ; Negate: Cond: $r55 == null  
(define-const var1145 String (toDate/1944491110 var1555)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate> 
 ; Statement: if $r31 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate> 
(assert (not (= var1145 null-String))) ; Negate: Cond: $r31 == null  
(define-const var1620 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1620)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1620!1 String)
(assert (= var1620!1 ""))
(assert true)
(define-const var2959 String (append/672562846 var1620!1 "-Vd")) ; Statement: $r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-Vd") 
(declare-const var1620!2 String)
(assert (= var1620!2 (str.++ var1620!1 "-Vd")))
(define-const var2804 String (toDate/1944491110 var1555)) ; Statement: $r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate> 
(assert true)
(define-const var2817 String (append/672562846 var2959 var2804)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33) 
(declare-const var2959!1 String)
(assert (= var2959!1 (str.++ var2959 var2804)))
(assert true)
(define-const var2764 String (append/672562846 var2817 "~d")) ; Statement: $r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~d") 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 "~d")))
(define-const var1561 String (fromDate/1944491110 var1555)) ; Statement: $r36 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate> 
(assert true)
(define-const var1195 String (append/672562846 var2764 var1561)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2764!1 String)
(assert (= var2764!1 (str.++ var2764 var1561)))
(assert true)
(define-const var3726 String (toString/-2075883882 var1195)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {fromDate/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String), toDate/1944491110=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1317=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var1555=r0, var3097=$r1, var306=null_type, var3175=$r55, var1145=$r31, var1620=$r32, var2959=$r34, var2804=$r33, var2817=$r35, var2764=$r37, var1561=$r36, var1195=$r38, var3726=$r39}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var1317, r0=var1555, $r1=var3097, null_type=var306, $r55=var3175, $r31=var1145, $r32=var1620, $r34=var2959, $r33=var2804, $r35=var2817, $r37=var2764, $r36=var1561, $r38=var1195, $r39=var3726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate>;	if $r1 != null goto $r55 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate>;	$r55 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate>;	if $r55 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate>;	$r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate>;	if $r31 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate>;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-Vd");	$r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String toDate>;	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33);	$r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("~d");	$r36 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String fromDate>;	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	return $r39
;block_num 4