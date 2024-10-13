(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3054 0)
(declare-sort var2810 0)
(declare-sort var3846 0)
(declare-sort var556 0)
(declare-sort var3689 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun affectedClassMap/1856771708 (var3054) var2810)
(declare-fun var2810_size/-1594421051 (var2810) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3846 String Int) void)
(declare-fun cast-from-var3054-to-var3846 (var3054) var3846)
(declare-fun var3689_bootstrap$/-10887071 (var3054) var556)
(declare-fun var2810_forEach/1471512036 (var2810 var556) void)
(declare-fun classpathDependencies/1856771708 (var3054) var2810)
(declare-const null-var3054 var3054)
(declare-const null-var2810 var2810)
(declare-const var326 var3054) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var326 null-var3054)))
(define-const var2386 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2386)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2386!1 String)
(assert (= var2386!1 ""))
(assert true)
(define-const var3445 String (append/672562846 var2386!1 "Reverse Dependency Dump for ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reverse Dependency Dump for ") 
(declare-const var2386!2 String)
(assert (= var2386!2 (str.++ var2386!1 "Reverse Dependency Dump for ")))
(define-const var2833 var2810 (affectedClassMap/1856771708 var326)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.Map affectedClassMap> 
(define-const var210 Int (var2810_size/-1594421051 var2833)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.Map: int size()>() 
(assert true)
(define-const var2398 String (append/-1001720160 var3445 var210)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3445!1 String)
(assert (str.prefixof var3445 var3445!1))
(assert true)
(define-const var1050 String (append/672562846 var2398 " classes:")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" classes:") 
(declare-const var2398!1 String)
(assert (= var2398!1 (str.++ var2398 " classes:")))
(assert true)
(define-const var964 String (toString/-2075883882 var1050)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3054-to-var3846 var326) var964 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4) 

(declare-const var326!1 var3054)
(declare-const var964!1 String)
(declare-const var3015 Int)
(define-const var33 var2810 (affectedClassMap/1856771708 var326!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.Map affectedClassMap> 
(define-const var3425 var556 (var3689_bootstrap$/-10887071 var326!1)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_4__382: java.util.function.BiConsumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend)>(r0) 
;(assert (var2810_forEach/1471512036 var33 var3425)) ; Statement: interfaceinvoke $r7.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r8) 

(declare-const var33!1 var2810)
(declare-const var3425!1 var556)
(define-const var3228 var2810 (classpathDependencies/1856771708 var326!1)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.Map classpathDependencies> 
 ; Statement: if $r9 == null goto return 
(assert (= var3228 null-var2810)) ; Cond: $r9 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), affectedClassMap/1856771708=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], java.util.Map), var2810_size/-1594421051=([java.util.Map], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3054-to-var3846=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var3689_bootstrap$/-10887071=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], java.util.function.BiConsumer), var2810_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void), classpathDependencies/1856771708=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], java.util.Map)}
; {var3054=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var326=r0, var2386=$r1, var3445=$r3, var2810=java.util.Map, var2833=$r2, var210=$i0, var2398=$r4, var1050=$r5, var964=$r6, var3846=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3015=4, var33=$r7, var556=java.util.function.BiConsumer, var3689=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_4__382, var3425=$r8, var3228=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var3054, r0=var326, $r1=var2386, $r3=var3445, java.util.Map=var2810, $r2=var2833, $i0=var210, $r4=var2398, $r5=var1050, $r6=var964, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3846, 4=var3015, $r7=var33, java.util.function.BiConsumer=var556, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_4__382=var3689, $r8=var3425, $r9=var3228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reverse Dependency Dump for ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.Map affectedClassMap>;	$i0 = interfaceinvoke $r2.<java.util.Map: int size()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" classes:");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.Map affectedClassMap>;	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_4__382: java.util.function.BiConsumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend)>(r0);	interfaceinvoke $r7.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r8);	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: java.util.Map classpathDependencies>;	if $r9 == null goto return;	return
;block_num 2