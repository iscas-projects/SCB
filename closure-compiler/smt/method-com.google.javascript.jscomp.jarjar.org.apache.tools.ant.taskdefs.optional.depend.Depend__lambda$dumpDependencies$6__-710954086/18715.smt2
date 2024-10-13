(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var899 0)
(declare-sort var3832 0)
(declare-sort var210 0)
(declare-sort var2028 0)
(declare-sort var2583 0)
(declare-sort var3388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var210 String Int) void)
(declare-fun cast-from-var3402-to-var210 (var3402) var210)
(declare-fun var2583_bootstrap$/158556829 (var3402) var2028)
(declare-fun var3388_forEach/-1836413473 (var3388 var2028) void)
(declare-fun cast-from-var3832-to-var3388 (var3832) var3388)
(declare-const null-var3402 var3402)
(declare-const null-String String)
(declare-const null-var3832 var3832)
(declare-const var2365 var3402) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var2365 null-var3402)))
(declare-const var3693 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3693 null-String)))
(declare-const var1792 var3832) ; Statement: r7 := @parameter1: java.util.Set 
(assert (not (= var1792 null-var3832)))
(define-const var3340 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3340)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3340!1 String)
(assert (= var3340!1 ""))
(assert true)
(define-const var1073 String (append/672562846 var3340!1 " Class ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Class ") 
(declare-const var3340!2 String)
(assert (= var3340!2 (str.++ var3340!1 " Class ")))
(assert true)
(define-const var779 String (append/672562846 var1073 var3693)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 var3693)))
(assert true)
(define-const var1159 String (append/672562846 var779 " depends on:")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" depends on:") 
(declare-const var779!1 String)
(assert (= var779!1 (str.++ var779 " depends on:")))
(assert true)
(define-const var1131 String (toString/-2075883882 var1159)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3402-to-var210 var2365) var1131 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4) 

(declare-const var2365!1 var3402)
(declare-const var1131!1 String)
(declare-const var2534 Int)
(define-const var1009 var2028 (var2583_bootstrap$/158556829 var2365!1)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_5__391: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend)>(r0) 
;(assert (var3388_forEach/-1836413473 (cast-from-var3832-to-var3388 var1792) var1009)) ; Statement: interfaceinvoke r7.<java.util.Set: void forEach(java.util.function.Consumer)>($r8) 

(declare-const var1792!1 var3832)
(declare-const var1009!1 var2028)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3402-to-var210=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var2583_bootstrap$/158556829=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], java.util.function.Consumer), var3388_forEach/-1836413473=([java.lang.Iterable, java.util.function.Consumer], void), cast-from-var3832-to-var3388=([java.util.Set], java.lang.Iterable)}
; {var3402=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var2365=r0, var3693=r2, var899=null_type, var3832=java.util.Set, var1792=r7, var3340=$r1, var1073=$r3, var779=$r4, var1159=$r5, var1131=$r6, var210=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2534=4, var2028=java.util.function.Consumer, var2583=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_5__391, var1009=$r8, var3388=java.lang.Iterable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var3402, r0=var2365, r2=var3693, null_type=var899, java.util.Set=var3832, r7=var1792, $r1=var3340, $r3=var1073, $r4=var779, $r5=var1159, $r6=var1131, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var210, 4=var2534, java.util.function.Consumer=var2028, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_5__391=var2583, $r8=var1009, java.lang.Iterable=var3388}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r2 := @parameter0: java.lang.String;	r7 := @parameter1: java.util.Set;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Class ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" depends on:");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$lambda_dumpDependencies_5__391: java.util.function.Consumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend)>(r0);	interfaceinvoke r7.<java.util.Set: void forEach(java.util.function.Consumer)>($r8);	return
;block_num 1