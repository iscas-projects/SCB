(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3498 0)
(declare-sort var2719 0)
(declare-sort var1880 0)
(declare-sort var624 0)
(declare-sort var1856 0)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var3498) var1880)
(declare-fun getToDir/2002891665 (var1880) var624)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1856) String)
(declare-fun cast-from-var624-to-var1856 (var624) var1856)
(declare-fun log/456963423 (var2077 String Int) void)
(declare-fun cast-from-var3498-to-var2077 (var3498) var2077)
(declare-const null-var3498 var3498)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var116 var3498) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var116 null-var3498)))
(declare-const var3914 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3914 null-Int)))
(declare-const var3707 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3707 null-String)))
(declare-const var3950 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var3950 null-String)))
(declare-const var1987 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var1987 null-String)))
(define-const var2684 var1880 (myCopy/-951607817 var116)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var3509 var624 (getToDir/2002891665 var2684)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (= var3707 null-String))) ; Cond: r3 != null 
(define-const var1830 String var3707) ; Statement: $r24 = r3 
(assert true) ; Non Conditional
(define-const var913 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var913)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var913!1 String)
(assert (= var913!1 ""))
(assert true)
(define-const var2507 String (append/672562846 var913!1 var1830)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var913!2 String)
(assert (= var913!2 (str.++ var913!1 var1830)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (>= var3914 2)) ; Cond: i0 >= 2 
(define-const var1573 String var1987) ; Statement: $r25 = r5 
(assert true) ; Non Conditional
(assert true)
(define-const var3241 String (append/672562846 var2507 var1573)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2507!1 String)
(assert (= var2507!1 (str.++ var2507 var1573)))
(assert true)
(define-const var3765 String (toString/-2075883882 var3241)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (<= var3914 0))) ; Negate: Cond: i0 <= 0  
(define-const var2028 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2028)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2028!1 String)
(assert (= var2028!1 ""))
(assert true)
(define-const var3939 String (append/672562846 var2028!1 "Removed ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ") 
(declare-const var2028!2 String)
(assert (= var2028!2 (str.++ var2028!1 "Removed ")))
(assert true)
(define-const var2729 String (append/-1001720160 var3939 var3914)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(assert true)
(define-const var1010 String (append/672562846 var2729 " ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2729!1 String)
(assert (= var2729!1 (str.++ var2729 " ")))
(assert true)
(define-const var2117 String (append/672562846 var1010 var3765)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1010!1 String)
(assert (= var1010!1 (str.++ var1010 var3765)))
(assert true)
(define-const var1469 String (append/672562846 var2117 " from ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var2117!1 String)
(assert (= var2117!1 (str.++ var2117 " from ")))
(assert true)
(define-const var209 String (append/-1031950772 var1469 (cast-from-var624-to-var1856 var3509))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1469!1 String)
(assert (str.prefixof var1469 var1469!1))
(assert true)
(define-const var502 String (toString/-2075883882 var209)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3498-to-var2077 var116) var502 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2) 

(declare-const var116!1 var3498)
(declare-const var502!1 String)
(declare-const var3025 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var624-to-var1856=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3498-to-var2077=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3498=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var116=r0, var3914=i0, var3707=r3, var2719=null_type, var3950=r22, var1987=r5, var1880=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var2684=$r1, var624=java.io.File, var3509=r2, var1830=$r24, var913=$r4, var2507=$r6, var1573=$r25, var3241=$r7, var3765=$r23, var2028=$r14, var3939=$r15, var2729=$r16, var1010=$r17, var2117=$r18, var1469=$r19, var1856=java.lang.Object, var209=$r20, var502=$r21, var2077=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3025=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var3498, r0=var116, i0=var3914, r3=var3707, null_type=var2719, r22=var3950, r5=var1987, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var1880, $r1=var2684, java.io.File=var624, r2=var3509, $r24=var1830, $r4=var913, $r6=var2507, $r25=var1573, $r7=var3241, $r23=var3765, $r14=var2028, $r15=var3939, $r16=var2729, $r17=var1010, $r18=var2117, $r19=var1469, java.lang.Object=var1856, $r20=var209, $r21=var502, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2077, 2=var3025}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r5;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2);	goto [?= return];	return
;block_num 7