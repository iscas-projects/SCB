(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var11 0)
(declare-sort var505 0)
(declare-sort var716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var505) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/-1385219261 (var505) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var716 String Int) void)
(declare-fun cast-from-var11-to-var716 (var11) var716)
(declare-const null-var11 var11)
(declare-const null-var505 var505)
(declare-const var2078 var11) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var2078 null-var11)))
(declare-const var3371 var505) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var3371 null-var505)))
(declare-const var3849 var505) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var3849 null-var505)))
(define-const var155 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var2533 Bool (exists/1072868559 var3849)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $l1 = virtualinvoke r1.<java.io.File: long lastModified()>() 
(assert (not (not (= (ite var2533 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var155!1 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var1628 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1628)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1628!1 String)
(assert (= var1628!1 ""))
(assert true)
(define-const var2000 String (append/672562846 var1628!1 "Compiling ")) ; Statement: $r22 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compiling ") 
(declare-const var1628!2 String)
(assert (= var1628!2 (str.++ var1628!1 "Compiling ")))
(assert true)
(define-const var3984 String (getPath/-1385219261 var3371)) ; Statement: $r21 = virtualinvoke r1.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var2659 String (append/672562846 var2000 var3984)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2000!1 String)
(assert (= var2000!1 (str.++ var2000 var3984)))
(assert true)
(define-const var1592 String (append/672562846 var2659 " because java file ")) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" because java file ") 
(declare-const var2659!1 String)
(assert (= var2659!1 (str.++ var2659 " because java file ")))
(assert true)
(define-const var2513 String (getPath/-1385219261 var3849)) ; Statement: $r24 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var189 String (append/672562846 var1592 var2513)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1592!1 String)
(assert (= var1592!1 (str.++ var1592 var2513)))
(assert true)
(define-const var3451 String (append/672562846 var189 " does not exist")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist") 
(declare-const var189!1 String)
(assert (= var189!1 (str.++ var189 " does not exist")))
(assert true)
(define-const var2256 String (toString/-2075883882 var3451)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var11-to-var716 var2078) var2256 3)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r28, 3) 

(declare-const var2078!1 var11)
(declare-const var2256!1 String)
(declare-const var625 Int)
 ; Statement: goto [?= return z1] 
(assert true) ; Non Conditional
 ; Statement: return z1 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/-1385219261=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var11-to-var716=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var11=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var2078=r2, var505=java.io.File, var3371=r1, var3849=r0, var155=z1, var2533=$z0, var1628=$r29, var2000=$r22, var3984=$r21, var2659=$r23, var1592=$r25, var2513=$r24, var189=$r26, var3451=$r27, var2256=$r28, var716=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var625=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var11, r2=var2078, java.io.File=var505, r1=var3371, r0=var3849, z1=var155, $z0=var2533, $r29=var1628, $r22=var2000, $r21=var3984, $r23=var2659, $r25=var1592, $r24=var2513, $r26=var189, $r27=var3451, $r28=var2256, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var716, 3=var625}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	r1 := @parameter0: java.io.File;	r0 := @parameter1: java.io.File;	z1 = 0;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto $l1 = virtualinvoke r1.<java.io.File: long lastModified()>();	z1 = 1;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compiling ");	$r21 = virtualinvoke r1.<java.io.File: java.lang.String getPath()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" because java file ");	$r24 = virtualinvoke r0.<java.io.File: java.lang.String getPath()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC: void log(java.lang.String,int)>($r28, 3);	goto [?= return z1];	return z1
;block_num 3