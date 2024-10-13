(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1449 0)
(declare-sort var1816 0)
(declare-sort var1003 0)
(declare-sort var2545 0)
(declare-sort var343 0)
(declare-sort var2812 0)
(declare-sort var1255 0)
(declare-sort var1283 0)
(declare-sort var2150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1971558710 (var1449) var1816)
(declare-fun var1816_access$700/209335923 (var1816) Int)
(declare-fun is/1971558710 (var1449) var1003)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun source/1971558710 (var1449) var2545)
(declare-fun append/-1031950772 (String var343) String)
(declare-fun cast-from-var2545-to-var343 (var2545) var343)
(declare-fun dest/1971558710 (var1449) var2812)
(declare-fun cast-from-var2812-to-var343 (var2812) var343)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logLevel/1971558710 (var1449) Int)
(declare-fun log/-1813190167 (var1816 String Int) void)
(declare-fun var1816_access$100/267326228 (var1816) Bool)
(declare-fun var1255-init () var1255)
(declare-fun getLocation/851674571 (var2150) var1283)
(declare-fun cast-from-var1816-to-var2150 (var1816) var2150)
(declare-fun <init>/-469549130 (var1255 String var1283) void)
(declare-const null-var1449 var1449)
(declare-const null-var1003 var1003)
(declare-const var1757 var1449) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread 
(assert (not (= var1757 null-var1449)))
(define-const var1646 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var847 var1816 (this$0/1971558710 var1757)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var3008 Int (var1816_access$700/209335923 var847)) ; Statement: $i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: int access$700(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r1) 
 ; Statement: if i4 >= $i0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is> 
(assert (>= var1646 var3008)) ; Cond: i4 >= $i0 
(define-const var3113 var1003 (is/1971558710 var1757)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(assert (not (not (= var3113 null-var1003)))) ; Negate: Cond: $r2 != null  
(define-const var1907 var1816 (this$0/1971558710 var1757)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var1659 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var2433 String (append/672562846 var1659!1 "Can\u0027t get ")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get ") 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 "Can\u0027t get ")))
(define-const var1644 var2545 (source/1971558710 var1757)) ; Statement: $r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source> 
(assert true)
(define-const var1418 String (append/-1031950772 var2433 (cast-from-var2545-to-var343 var1644))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var2433!1 String)
(assert (str.prefixof var2433 var2433!1))
(assert true)
(define-const var1518 String (append/672562846 var1418 " to ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var1418!1 String)
(assert (= var1418!1 (str.++ var1418 " to ")))
(define-const var2820 var2812 (dest/1971558710 var1757)) ; Statement: $r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.File dest> 
(assert true)
(define-const var3026 String (append/-1031950772 var1518 (cast-from-var2812-to-var343 var2820))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var1518!1 String)
(assert (str.prefixof var1518 var1518!1))
(assert true)
(define-const var2677 String (toString/-2075883882 var3026)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1649 Int (logLevel/1971558710 var1757)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int logLevel> 
(assert true)
;(assert (log/-1813190167 var1907 var2677 var1649)) ; Statement: virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: void log(java.lang.String,int)>($r24, $i2) 

(declare-const var1907!1 var1816)
(declare-const var2677!1 String)
(declare-const var1649!1 Int)
(define-const var1714 var1816 (this$0/1971558710 var1757)) ; Statement: $r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(define-const var3549 Bool (var1816_access$100/267326228 var1714)) ; Statement: $z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r25) 
 ; Statement: if $z3 == 0 goto $r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= (ite var3549 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2706 var1255 var1255-init) ; Statement: $r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3589 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3589)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3589!1 String)
(assert (= var3589!1 ""))
(assert true)
(define-const var3504 String (append/672562846 var3589!1 "Can\u0027t get ")) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get ") 
(declare-const var3589!2 String)
(assert (= var3589!2 (str.++ var3589!1 "Can\u0027t get ")))
(define-const var3502 var2545 (source/1971558710 var1757)) ; Statement: $r28 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source> 
(assert true)
(define-const var1533 String (append/-1031950772 var3504 (cast-from-var2545-to-var343 var3502))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var3504!1 String)
(assert (str.prefixof var3504 var3504!1))
(assert true)
(define-const var2587 String (append/672562846 var1533 " to ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var1533!1 String)
(assert (= var1533!1 (str.++ var1533 " to ")))
(define-const var3007 var2812 (dest/1971558710 var1757)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.File dest> 
(assert true)
(define-const var3954 String (append/-1031950772 var2587 (cast-from-var2812-to-var343 var3007))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31) 
(declare-const var2587!1 String)
(assert (str.prefixof var2587 var2587!1))
(assert true)
(define-const var180 String (toString/-2075883882 var3954)) ; Statement: $r36 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1670 var1816 (this$0/1971558710 var1757)) ; Statement: $r34 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0> 
(assert true)
(define-const var3107 var1283 (getLocation/851674571 (cast-from-var1816-to-var2150 var1670))) ; Statement: $r35 = virtualinvoke $r34.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2706 var180 var3107)) ; Statement: specialinvoke $r26.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r36, $r35) 

(declare-const var2706!1 var1255)
(declare-const var180!1 String)
(declare-const var3107!1 var1283)
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get), var1816_access$700/209335923=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], int), is/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.io.InputStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), source/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2545-to-var343=([java.net.URL], java.lang.Object), dest/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], java.io.File), cast-from-var2812-to-var343=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logLevel/1971558710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread], int), log/-1813190167=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, java.lang.String, int], void), var1816_access$100/267326228=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], boolean), var1255-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1816-to-var2150=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1449=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread, var1757=r0, var1646=i4, var1816=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get, var847=$r1, var3008=$i0, var1003=java.io.InputStream, var3113=$r2, var1907=$r17, var1659=$r16, var2433=$r19, var2545=java.net.URL, var1644=$r18, var343=java.lang.Object, var1418=$r20, var1518=$r22, var2812=java.io.File, var2820=$r21, var3026=$r23, var2677=$r24, var1649=$i2, var1714=$r25, var3549=$z3, var1255=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2706=$r26, var3589=$r27, var3504=$r29, var3502=$r28, var1533=$r30, var2587=$r32, var3007=$r31, var3954=$r33, var180=$r36, var1670=$r34, var1283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2150=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3107=$r35}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread=var1449, r0=var1757, i4=var1646, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get=var1816, $r1=var847, $i0=var3008, java.io.InputStream=var1003, $r2=var3113, $r17=var1907, $r16=var1659, $r19=var2433, java.net.URL=var2545, $r18=var1644, java.lang.Object=var343, $r20=var1418, $r22=var1518, java.io.File=var2812, $r21=var2820, $r23=var3026, $r24=var2677, $i2=var1649, $r25=var1714, $z3=var3549, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1255, $r26=var2706, $r27=var3589, $r29=var3504, $r28=var3502, $r30=var1533, $r32=var2587, $r31=var3007, $r33=var3954, $r36=var180, $r34=var1670, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1283, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2150, $r35=var3107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread;	i4 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$i0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: int access$700(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r1);	if i4 >= $i0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.InputStream is>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get ");	$r18 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r21 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.File dest>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: int logLevel>;	virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: void log(java.lang.String,int)>($r24, $i2);	$r25 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$z3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: boolean access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get)>($r25);	if $z3 == 0 goto $r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r26 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get ");	$r28 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.net.URL source>;	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: java.io.File dest>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31);	$r36 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r34 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get$GetThread: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get this$0>;	$r35 = virtualinvoke $r34.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Get: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r26.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r36, $r35);	throw $r26
;block_num 5