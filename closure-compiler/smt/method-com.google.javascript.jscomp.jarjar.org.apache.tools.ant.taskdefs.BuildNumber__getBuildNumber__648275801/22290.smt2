(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2945 0)
(declare-sort var3583 0)
(declare-sort var3871 0)
(declare-sort var409 0)
(declare-sort var2803 0)
(declare-sort var3274 0)
(declare-sort var1638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/-469436802 (var3583 String String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var409-init () var409)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun myFile/1619771515 (var2945) var2803)
(declare-fun append/-1031950772 (String var3274) String)
(declare-fun cast-from-var2803-to-var3274 (var2803) var3274)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var409 String var1638) void)
(declare-fun cast-from-var3871-to-var1638 (var3871) var1638)
(declare-const null-var2945 var2945)
(declare-const null-var3583 var3583)
(declare-const null-var3871 var3871)
(declare-const var1023 var2945) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber 
(assert (not (= var1023 null-var2945)))
(declare-const var1232 var3583) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var1232 null-var3583)))
(assert true)
(define-const var3086 String (getProperty/-469436802 var1232 "build.number" "0")) ; Statement: $r1 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>("build.number", "0") 
(assert true)
(define-const var3920 String (trim/-847153721 var3086)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1628 var3871) ; Statement: $r3 := @caughtexception 
(assert (not (= var1628 null-var3871)))
(define-const var3650 var409 var409-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2953 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2953)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2953!1 String)
(assert (= var2953!1 ""))
(define-const var282 var2803 (myFile/1619771515 var1023)) ; Statement: $r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile> 
(assert true)
(define-const var3140 String (append/-1031950772 var2953!1 (cast-from-var2803-to-var3274 var282))) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2953!2 String)
(assert (str.prefixof var2953!1 var2953!2))
(assert true)
(define-const var1981 String (append/672562846 var3140 " contains a non integer build number: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" contains a non integer build number: ") 
(declare-const var3140!1 String)
(assert (= var3140!1 (str.++ var3140 " contains a non integer build number: ")))
(assert true)
(define-const var140 String (append/672562846 var1981 var3920)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1981!1 String)
(assert (= var1981!1 (str.++ var1981 var3920)))
(assert true)
(define-const var966 String (toString/-2075883882 var140)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var3650 var966 (cast-from-var3871-to-var1638 var1628))) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3) 

(declare-const var3650!1 var409)
(declare-const var966!1 String)
(declare-const var1628!1 var3871)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/-469436802=([java.util.Properties, java.lang.String, java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var409-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), myFile/1619771515=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2803-to-var3274=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3871-to-var1638=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var2945=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber, var1023=r6, var3583=java.util.Properties, var1232=r0, var3086=$r1, var3920=r2, var3871=java.lang.NumberFormatException, var1628=$r3, var409=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3650=$r4, var2953=$r5, var2803=java.io.File, var282=$r7, var3274=java.lang.Object, var3140=$r8, var1981=$r9, var140=$r10, var966=$r11, var1638=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber=var2945, r6=var1023, java.util.Properties=var3583, r0=var1232, $r1=var3086, r2=var3920, java.lang.NumberFormatException=var3871, $r3=var1628, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var409, $r4=var3650, $r5=var2953, java.io.File=var2803, $r7=var282, java.lang.Object=var3274, $r8=var3140, $r9=var1981, $r10=var140, $r11=var966, java.lang.Throwable=var1638}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber;	r0 := @parameter0: java.util.Properties;	$r1 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>("build.number", "0");	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	$r3 := @caughtexception;	$r4 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BuildNumber: java.io.File myFile>;	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" contains a non integer build number: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r3);	throw $r4
;block_num 2