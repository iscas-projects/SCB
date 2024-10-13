(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3820 0)
(declare-sort var2216 0)
(declare-sort var2860 0)
(declare-sort var2718 0)
(declare-sort var1032 0)
(declare-sort var3005 0)
(declare-sort var3771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-1803896395 (var3820) void)
(declare-fun getMillis/-971778229 (var3820) Int)
(declare-fun resource/612650072 (var3820) var2216)
(declare-fun getLastModified/-1494632928 (var2216) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2860-init () var2860)
(declare-fun <init>/593337323 (var2860 Int) void)
(declare-fun append/-1031950772 (String var2718) String)
(declare-fun cast-from-var2860-to-var2718 (var2860) var2718)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var1032 String Int) void)
(declare-fun cast-from-var3820-to-var1032 (var3820) var1032)
(declare-fun mode/612650072 (var3820) var3005)
(declare-fun getValue/-1445752687 (var3771) String)
(declare-fun cast-from-var3005-to-var3771 (var3005) var3771)
(declare-const null-var3820 var3820)
(declare-const var1638 var3820) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified 
(assert (not (= var1638 null-var3820)))
(assert true)
;(assert (validate/-1803896395 var1638)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void validate()>() 

(declare-const var1638!1 var3820)
(assert true)
(define-const var377 Int (getMillis/-971778229 var1638!1)) ; Statement: l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: long getMillis()>() 
(define-const var1420 var2216 (resource/612650072 var1638!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource> 
(assert true)
(define-const var1960 Int (getLastModified/-1494632928 var1420)) ; Statement: l1 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>() 
(define-const var752 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var752)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var752!1 String)
(assert (= var752!1 ""))
(assert true)
(define-const var2568 String (append/672562846 var752!1 "expected timestamp: ")) ; Statement: $r3 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected timestamp: ") 
(declare-const var752!2 String)
(assert (= var752!2 (str.++ var752!1 "expected timestamp: ")))
(assert true)
(define-const var1626 String (append/-901862667 var2568 var377)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2568!1 String)
(assert (str.prefixof var2568 var2568!1))
(assert true)
(define-const var3790 String (append/672562846 var1626 " (")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1626!1 String)
(assert (= var1626!1 (str.++ var1626 " (")))
(define-const var108 var2860 var2860-init) ; Statement: $r38 = new java.util.Date 
(assert true)
;(assert (<init>/593337323 var108 var377)) ; Statement: specialinvoke $r38.<java.util.Date: void <init>(long)>(l0) 

(declare-const var108!1 var2860)
(declare-const var377!1 Int)
(assert true)
(define-const var2885 String (append/-1031950772 var3790 (cast-from-var2860-to-var2718 var108!1))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var3790!1 String)
(assert (str.prefixof var3790 var3790!1))
(assert true)
(define-const var2932 String (append/672562846 var2885 "), actual timestamp: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), actual timestamp: ") 
(declare-const var2885!1 String)
(assert (= var2885!1 (str.++ var2885 "), actual timestamp: ")))
(assert true)
(define-const var2423 String (append/-901862667 var2932 var1960)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var2932!1 String)
(assert (str.prefixof var2932 var2932!1))
(assert true)
(define-const var1156 String (append/672562846 var2423 " (")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2423!1 String)
(assert (= var2423!1 (str.++ var2423 " (")))
(define-const var3270 var2860 var2860-init) ; Statement: $r39 = new java.util.Date 
(assert true)
;(assert (<init>/593337323 var3270 var1960)) ; Statement: specialinvoke $r39.<java.util.Date: void <init>(long)>(l1) 

(declare-const var3270!1 var2860)
(declare-const var1960!1 Int)
(assert true)
(define-const var376 String (append/-1031950772 var1156 (cast-from-var2860-to-var2718 var3270!1))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r39) 
(declare-const var1156!1 String)
(assert (str.prefixof var1156 var1156!1))
(assert true)
(define-const var1354 String (append/672562846 var376 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var376!1 String)
(assert (= var376!1 (str.++ var376 ")")))
(assert true)
(define-const var66 String (toString/-2075883882 var1354)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var3820-to-var1032 var1638!1) var66 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void log(java.lang.String,int)>($r14, 3) 

(declare-const var1638!2 var3820)
(declare-const var66!1 String)
(declare-const var3065 Int)
(define-const var1880 String "equals") ; Statement: $r17 = "equals" 
(define-const var1103 var3005 (mode/612650072 var1638!2)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode mode> 
(assert true)
(define-const var3812 String (getValue/-1445752687 (cast-from-var3005-to-var3771 var1103))) ; Statement: $r16 = virtualinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode: java.lang.String getValue()>() 
(assert true)
(define-const var708 Bool (= var1880 var3812)) ; Statement: $z0 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>($r16) 
 ; Statement: if $z0 == 0 goto $r20 = "before" 
(assert (not (= (ite var708 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var364 Int (ite (> var377!1 var1960!1) 1 (ite (< var377!1 var1960!1) (- 1) 0))) ; Statement: $b6 = l0 cmp l1 
 ; Statement: if $b6 != 0 goto $z5 = 0 
(assert (not (not (= var364 0)))) ; Negate: Cond: $b6 != 0  
(define-const var2385 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= return $z5] 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-1803896395=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], void), getMillis/-971778229=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], long), resource/612650072=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), getLastModified/-1494632928=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2860-init=([], java.util.Date), <init>/593337323=([java.util.Date, long], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2860-to-var2718=([java.util.Date], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var3820-to-var1032=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), mode/612650072=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3005-to-var3771=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute)}
; {var3820=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified, var1638=r0, var377=l0, var2216=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1420=$r1, var1960=l1, var752=$r37, var2568=$r3, var1626=$r4, var3790=$r6, var2860=java.util.Date, var108=$r38, var2718=java.lang.Object, var2885=$r7, var2932=$r8, var2423=$r9, var1156=$r11, var3270=$r39, var376=$r12, var1354=$r13, var66=$r14, var1032=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3065=3, var1880=$r17, var3005=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode, var1103=$r15, var3771=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var3812=$r16, var708=$z0, var364=$b6, var2385=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified=var3820, r0=var1638, l0=var377, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2216, $r1=var1420, l1=var1960, $r37=var752, $r3=var2568, $r4=var1626, $r6=var3790, java.util.Date=var2860, $r38=var108, java.lang.Object=var2718, $r7=var2885, $r8=var2932, $r9=var2423, $r11=var1156, $r39=var3270, $r12=var376, $r13=var1354, $r14=var66, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1032, 3=var3065, $r17=var1880, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode=var3005, $r15=var1103, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3771, $r16=var3812, $z0=var708, $b6=var364, $z5=var2385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void validate()>();	l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: long getMillis()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource>;	l1 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>();	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected timestamp: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r38 = new java.util.Date;	specialinvoke $r38.<java.util.Date: void <init>(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), actual timestamp: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r39 = new java.util.Date;	specialinvoke $r39.<java.util.Date: void <init>(long)>(l1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r39);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void log(java.lang.String,int)>($r14, 3);	$r17 = "equals";	$r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode mode>;	$r16 = virtualinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>($r16);	if $z0 == 0 goto $r20 = "before";	$b6 = l0 cmp l1;	if $b6 != 0 goto $z5 = 0;	$z5 = 1;	goto [?= return $z5];	return $z5
;block_num 4