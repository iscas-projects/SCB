(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1883658291 (var1864) String)
(declare-fun regex/1883658291 (var1864) String)
(declare-fun prefix/1883658291 (var1864) String)
(declare-fun builtin/1883658291 (var1864) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1864 var1864)
(declare-const var1959 var1864) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef 
(assert (not (= var1959 null-var1864)))
(define-const var3747 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3747)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3747!1 String)
(assert (= var3747!1 ""))
(assert true)
(define-const var1382 String (append/672562846 var3747!1 "name=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=") 
(declare-const var3747!2 String)
(assert (= var3747!2 (str.++ var3747!1 "name=")))
(define-const var3989 String (name/1883658291 var1959)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String name> 
(assert true)
(define-const var1408 String (append/672562846 var1382 var3989)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1382!1 String)
(assert (= var1382!1 (str.++ var1382 var3989)))
(assert true)
(define-const var2303 String (append/672562846 var1408 ", regex=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", regex=") 
(declare-const var1408!1 String)
(assert (= var1408!1 (str.++ var1408 ", regex=")))
(define-const var1892 String (regex/1883658291 var1959)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String regex> 
(assert true)
(define-const var453 String (append/672562846 var2303 var1892)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2303!1 String)
(assert (= var2303!1 (str.++ var2303 var1892)))
(assert true)
(define-const var2573 String (append/672562846 var453 ", prefix=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", prefix=") 
(declare-const var453!1 String)
(assert (= var453!1 (str.++ var453 ", prefix=")))
(define-const var490 String (prefix/1883658291 var1959)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String prefix> 
(assert true)
(define-const var2520 String (append/672562846 var2573 var490)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2573!1 String)
(assert (= var2573!1 (str.++ var2573 var490)))
(assert true)
(define-const var392 String (append/672562846 var2520 ", builtin=")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", builtin=") 
(declare-const var2520!1 String)
(assert (= var2520!1 (str.++ var2520 ", builtin=")))
(define-const var1838 String (builtin/1883658291 var1959)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String builtin> 
(assert true)
(define-const var2931 String (append/672562846 var392 var1838)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var392!1 String)
(assert (= var392!1 (str.++ var392 var1838)))
(assert true)
(define-const var3267 String (toString/-2075883882 var2931)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1883658291=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef], java.lang.String), regex/1883658291=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef], java.lang.String), prefix/1883658291=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef], java.lang.String), builtin/1883658291=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1864=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef, var1959=r1, var3747=$r0, var1382=$r3, var3989=$r2, var1408=$r4, var2303=$r6, var1892=$r5, var453=$r7, var2573=$r9, var490=$r8, var2520=$r10, var392=$r12, var1838=$r11, var2931=$r13, var3267=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef=var1864, r1=var1959, $r0=var3747, $r3=var1382, $r2=var3989, $r4=var1408, $r6=var2303, $r5=var1892, $r7=var453, $r9=var2573, $r8=var490, $r10=var2520, $r12=var392, $r11=var1838, $r13=var2931, $r14=var3267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("name=");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", regex=");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String regex>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", prefix=");	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String prefix>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", builtin=");	$r11 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef: java.lang.String builtin>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1