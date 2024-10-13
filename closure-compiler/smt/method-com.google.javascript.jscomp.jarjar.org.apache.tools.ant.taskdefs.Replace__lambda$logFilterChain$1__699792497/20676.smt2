(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1939 0)
(declare-sort var2324 0)
(declare-sort var545 0)
(declare-sort var1768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getToken/291154857 (var545) String)
(declare-fun getReplaceValue/-290662757 (var545) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1768 String Int) void)
(declare-fun cast-from-var1939-to-var1768 (var1939) var1768)
(declare-const null-var1939 var1939)
(declare-const null-String String)
(declare-const null-var545 var545)
(declare-const var2333 var1939) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace 
(assert (not (= var2333 null-var1939)))
(declare-const var305 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var305 null-String)))
(declare-const var2095 var545) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter 
(assert (not (= var2095 null-var545)))
(define-const var605 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var605)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var605!1 String)
(assert (= var605!1 ""))
(assert true)
(define-const var3767 String (append/672562846 var605!1 "Replacing in ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Replacing in ") 
(declare-const var605!2 String)
(assert (= var605!2 (str.++ var605!1 "Replacing in ")))
(assert true)
(define-const var3956 String (append/672562846 var3767 var305)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3767!1 String)
(assert (= var3767!1 (str.++ var3767 var305)))
(assert true)
(define-const var2142 String (append/672562846 var3956 ": ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3956!1 String)
(assert (= var3956!1 (str.++ var3956 ": ")))
(assert true)
(define-const var859 String (getToken/291154857 var2095)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>() 
(assert true)
(define-const var2519 String (append/672562846 var2142 var859)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2142!1 String)
(assert (= var2142!1 (str.++ var2142 var859)))
(assert true)
(define-const var2919 String (append/672562846 var2519 " --> ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --> ") 
(declare-const var2519!1 String)
(assert (= var2519!1 (str.++ var2519 " --> ")))
(assert true)
(define-const var1879 String (getReplaceValue/-290662757 var2095)) ; Statement: $r9 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getReplaceValue()>() 
(assert true)
(define-const var1732 String (append/672562846 var2919 var1879)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2919!1 String)
(assert (= var2919!1 (str.++ var2919 var1879)))
(assert true)
(define-const var1260 String (toString/-2075883882 var1732)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1939-to-var1768 var2333) var1260 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: void log(java.lang.String,int)>($r12, 3) 

(declare-const var2333!1 var1939)
(declare-const var1260!1 String)
(declare-const var2909 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getToken/291154857=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.String), getReplaceValue/-290662757=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1939-to-var1768=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1939=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var2333=r0, var305=r2, var2324=null_type, var545=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter, var2095=r5, var605=$r1, var3767=$r3, var3956=$r4, var2142=$r7, var859=$r6, var2519=$r8, var2919=$r10, var1879=$r9, var1732=$r11, var1260=$r12, var1768=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2909=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var1939, r0=var2333, r2=var305, null_type=var2324, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter=var545, r5=var2095, $r1=var605, $r3=var3767, $r4=var3956, $r7=var2142, $r6=var859, $r8=var2519, $r10=var2919, $r9=var1879, $r11=var1732, $r12=var1260, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1768, 3=var2909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Replacing in ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getToken()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" --> ");	$r9 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$Replacefilter: java.lang.String getReplaceValue()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: void log(java.lang.String,int)>($r12, 3);	return
;block_num 1