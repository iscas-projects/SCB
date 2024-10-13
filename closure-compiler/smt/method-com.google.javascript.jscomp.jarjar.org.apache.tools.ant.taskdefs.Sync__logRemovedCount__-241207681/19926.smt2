(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort var47 0)
(declare-sort var294 0)
(declare-sort var3681 0)
(declare-sort var1163 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var284) var294)
(declare-fun getToDir/2002891665 (var294) var3681)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1163) String)
(declare-fun cast-from-var3681-to-var1163 (var3681) var1163)
(declare-fun log/456963423 (var985 String Int) void)
(declare-fun cast-from-var284-to-var985 (var284) var985)
(declare-const null-var284 var284)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var207 var284) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var207 null-var284)))
(declare-const var2327 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2327 null-Int)))
(declare-const var2659 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2659 null-String)))
(declare-const var3643 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var3643 null-String)))
(declare-const var2701 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2701 null-String)))
(define-const var2245 var294 (myCopy/-951607817 var207)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var2140 var3681 (getToDir/2002891665 var2245)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (not (= var2659 null-String)))) ; Negate: Cond: r3 != null  
(define-const var198 String "") ; Statement: $r24 = "" 
 ; Statement: goto [?= $r4 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2019 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2019)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2019!1 String)
(assert (= var2019!1 ""))
(assert true)
(define-const var3962 String (append/672562846 var2019!1 var198)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2019!2 String)
(assert (= var2019!2 (str.++ var2019!1 var198)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (>= var2327 2)) ; Cond: i0 >= 2 
(define-const var541 String var2701) ; Statement: $r25 = r5 
(assert true) ; Non Conditional
(assert true)
(define-const var452 String (append/672562846 var3962 var541)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3962!1 String)
(assert (= var3962!1 (str.++ var3962 var541)))
(assert true)
(define-const var3752 String (toString/-2075883882 var452)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (<= var2327 0))) ; Negate: Cond: i0 <= 0  
(define-const var2073 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2073)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2073!1 String)
(assert (= var2073!1 ""))
(assert true)
(define-const var562 String (append/672562846 var2073!1 "Removed ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ") 
(declare-const var2073!2 String)
(assert (= var2073!2 (str.++ var2073!1 "Removed ")))
(assert true)
(define-const var3749 String (append/-1001720160 var562 var2327)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var562!1 String)
(assert (str.prefixof var562 var562!1))
(assert true)
(define-const var2888 String (append/672562846 var3749 " ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3749!1 String)
(assert (= var3749!1 (str.++ var3749 " ")))
(assert true)
(define-const var50 String (append/672562846 var2888 var3752)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 var3752)))
(assert true)
(define-const var1322 String (append/672562846 var50 " from ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var50!1 String)
(assert (= var50!1 (str.++ var50 " from ")))
(assert true)
(define-const var1352 String (append/-1031950772 var1322 (cast-from-var3681-to-var1163 var2140))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1322!1 String)
(assert (str.prefixof var1322 var1322!1))
(assert true)
(define-const var2244 String (toString/-2075883882 var1352)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var284-to-var985 var207) var2244 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2) 

(declare-const var207!1 var284)
(declare-const var2244!1 String)
(declare-const var2003 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3681-to-var1163=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var284-to-var985=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var284=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var207=r0, var2327=i0, var2659=r3, var47=null_type, var3643=r22, var2701=r5, var294=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var2245=$r1, var3681=java.io.File, var2140=r2, var198=$r24, var2019=$r4, var3962=$r6, var541=$r25, var452=$r7, var3752=$r23, var2073=$r14, var562=$r15, var3749=$r16, var2888=$r17, var50=$r18, var1322=$r19, var1163=java.lang.Object, var1352=$r20, var2244=$r21, var985=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2003=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var284, r0=var207, i0=var2327, r3=var2659, null_type=var47, r22=var3643, r5=var2701, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var294, $r1=var2245, java.io.File=var3681, r2=var2140, $r24=var198, $r4=var2019, $r6=var3962, $r25=var541, $r7=var452, $r23=var3752, $r14=var2073, $r15=var562, $r16=var3749, $r17=var2888, $r18=var50, $r19=var1322, java.lang.Object=var1163, $r20=var1352, $r21=var2244, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var985, 2=var2003}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = "";	goto [?= $r4 = new java.lang.StringBuilder];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r5;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2);	goto [?= return];	return
;block_num 7