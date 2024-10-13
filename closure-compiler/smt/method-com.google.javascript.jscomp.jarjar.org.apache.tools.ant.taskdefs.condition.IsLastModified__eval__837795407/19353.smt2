(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1968 0)
(declare-sort var3353 0)
(declare-sort var1176 0)
(declare-sort var3382 0)
(declare-sort var1943 0)
(declare-sort var1278 0)
(declare-sort var1030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-1803896395 (var1968) void)
(declare-fun getMillis/-971778229 (var1968) Int)
(declare-fun resource/612650072 (var1968) var3353)
(declare-fun getLastModified/-1494632928 (var3353) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1176-init () var1176)
(declare-fun <init>/593337323 (var1176 Int) void)
(declare-fun append/-1031950772 (String var3382) String)
(declare-fun cast-from-var1176-to-var3382 (var1176) var3382)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var1943 String Int) void)
(declare-fun cast-from-var1968-to-var1943 (var1968) var1943)
(declare-fun mode/612650072 (var1968) var1278)
(declare-fun getValue/-1445752687 (var1030) String)
(declare-fun cast-from-var1278-to-var1030 (var1278) var1030)
(declare-const null-var1968 var1968)
(declare-const var1363 var1968) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified 
(assert (not (= var1363 null-var1968)))
(assert true)
;(assert (validate/-1803896395 var1363)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void validate()>() 

(declare-const var1363!1 var1968)
(assert true)
(define-const var2709 Int (getMillis/-971778229 var1363!1)) ; Statement: l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: long getMillis()>() 
(define-const var110 var3353 (resource/612650072 var1363!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource> 
(assert true)
(define-const var694 Int (getLastModified/-1494632928 var110)) ; Statement: l1 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>() 
(define-const var1655 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1655)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1655!1 String)
(assert (= var1655!1 ""))
(assert true)
(define-const var2811 String (append/672562846 var1655!1 "expected timestamp: ")) ; Statement: $r3 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected timestamp: ") 
(declare-const var1655!2 String)
(assert (= var1655!2 (str.++ var1655!1 "expected timestamp: ")))
(assert true)
(define-const var2013 String (append/-901862667 var2811 var2709)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2811!1 String)
(assert (str.prefixof var2811 var2811!1))
(assert true)
(define-const var813 String (append/672562846 var2013 " (")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2013!1 String)
(assert (= var2013!1 (str.++ var2013 " (")))
(define-const var1059 var1176 var1176-init) ; Statement: $r38 = new java.util.Date 
(assert true)
;(assert (<init>/593337323 var1059 var2709)) ; Statement: specialinvoke $r38.<java.util.Date: void <init>(long)>(l0) 

(declare-const var1059!1 var1176)
(declare-const var2709!1 Int)
(assert true)
(define-const var729 String (append/-1031950772 var813 (cast-from-var1176-to-var3382 var1059!1))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var813!1 String)
(assert (str.prefixof var813 var813!1))
(assert true)
(define-const var518 String (append/672562846 var729 "), actual timestamp: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), actual timestamp: ") 
(declare-const var729!1 String)
(assert (= var729!1 (str.++ var729 "), actual timestamp: ")))
(assert true)
(define-const var2053 String (append/-901862667 var518 var694)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var518!1 String)
(assert (str.prefixof var518 var518!1))
(assert true)
(define-const var1409 String (append/672562846 var2053 " (")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2053!1 String)
(assert (= var2053!1 (str.++ var2053 " (")))
(define-const var3042 var1176 var1176-init) ; Statement: $r39 = new java.util.Date 
(assert true)
;(assert (<init>/593337323 var3042 var694)) ; Statement: specialinvoke $r39.<java.util.Date: void <init>(long)>(l1) 

(declare-const var3042!1 var1176)
(declare-const var694!1 Int)
(assert true)
(define-const var3803 String (append/-1031950772 var1409 (cast-from-var1176-to-var3382 var3042!1))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r39) 
(declare-const var1409!1 String)
(assert (str.prefixof var1409 var1409!1))
(assert true)
(define-const var3167 String (append/672562846 var3803 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3803!1 String)
(assert (= var3803!1 (str.++ var3803 ")")))
(assert true)
(define-const var2096 String (toString/-2075883882 var3167)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var1968-to-var1943 var1363!1) var2096 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void log(java.lang.String,int)>($r14, 3) 

(declare-const var1363!2 var1968)
(declare-const var2096!1 String)
(declare-const var3356 Int)
(define-const var151 String "equals") ; Statement: $r17 = "equals" 
(define-const var3805 var1278 (mode/612650072 var1363!2)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode mode> 
(assert true)
(define-const var2830 String (getValue/-1445752687 (cast-from-var1278-to-var1030 var3805))) ; Statement: $r16 = virtualinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode: java.lang.String getValue()>() 
(assert true)
(define-const var2130 Bool (= var151 var2830)) ; Statement: $z0 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>($r16) 
 ; Statement: if $z0 == 0 goto $r20 = "before" 
(assert (not (= (ite var2130 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3697 Int (ite (> var2709!1 var694!1) 1 (ite (< var2709!1 var694!1) (- 1) 0))) ; Statement: $b6 = l0 cmp l1 
 ; Statement: if $b6 != 0 goto $z5 = 0 
(assert (not (= var3697 0))) ; Cond: $b6 != 0 
(define-const var3195 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-1803896395=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], void), getMillis/-971778229=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], long), resource/612650072=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), getLastModified/-1494632928=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1176-init=([], java.util.Date), <init>/593337323=([java.util.Date, long], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1176-to-var3382=([java.util.Date], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var1968-to-var1943=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), mode/612650072=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var1278-to-var1030=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute)}
; {var1968=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified, var1363=r0, var2709=l0, var3353=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var110=$r1, var694=l1, var1655=$r37, var2811=$r3, var2013=$r4, var813=$r6, var1176=java.util.Date, var1059=$r38, var3382=java.lang.Object, var729=$r7, var518=$r8, var2053=$r9, var1409=$r11, var3042=$r39, var3803=$r12, var3167=$r13, var2096=$r14, var1943=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3356=3, var151=$r17, var1278=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode, var3805=$r15, var1030=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2830=$r16, var2130=$z0, var3697=$b6, var3195=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified=var1968, r0=var1363, l0=var2709, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3353, $r1=var110, l1=var694, $r37=var1655, $r3=var2811, $r4=var2013, $r6=var813, java.util.Date=var1176, $r38=var1059, java.lang.Object=var3382, $r7=var729, $r8=var518, $r9=var2053, $r11=var1409, $r39=var3042, $r12=var3803, $r13=var3167, $r14=var2096, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1943, 3=var3356, $r17=var151, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode=var1278, $r15=var3805, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1030, $r16=var2830, $z0=var2130, $b6=var3697, $z5=var3195}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void validate()>();	l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: long getMillis()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource resource>;	l1 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>();	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected timestamp: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r38 = new java.util.Date;	specialinvoke $r38.<java.util.Date: void <init>(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("), actual timestamp: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r39 = new java.util.Date;	specialinvoke $r39.<java.util.Date: void <init>(long)>(l1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r39);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: void log(java.lang.String,int)>($r14, 3);	$r17 = "equals";	$r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode mode>;	$r16 = virtualinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.IsLastModified$CompareMode: java.lang.String getValue()>();	$z0 = virtualinvoke $r17.<java.lang.String: boolean equals(java.lang.Object)>($r16);	if $z0 == 0 goto $r20 = "before";	$b6 = l0 cmp l1;	if $b6 != 0 goto $z5 = 0;	$z5 = 0;	return $z5
;block_num 4