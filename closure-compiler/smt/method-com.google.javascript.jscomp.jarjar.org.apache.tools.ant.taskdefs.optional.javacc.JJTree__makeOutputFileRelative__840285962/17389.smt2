(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3601 0)
(declare-sort var3888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDefaultOutputDirectory/-275374595 (var3601) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3601 var3601)
(declare-const null-String String)
(declare-const var1698 var3601) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree 
(assert (not (= var1698 null-var3601)))
(declare-const var1757 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1757 null-String)))
(define-const var3790 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3790)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3790!1 String)
(assert (= var3790!1 ""))
(assert true)
(define-const var3048 String (getDefaultOutputDirectory/-275374595 var1698)) ; Statement: r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>() 
(assert true)
(define-const var1444 Int (indexOf/-1037706067 var3048 47)) ; Statement: i1 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(47) 
(define-const var2122 Int (+ var1444 1)) ; Statement: i2 = i1 + 1 
(assert true) ; Non Conditional
(define-const var2839 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i2 <= $i5 goto $r4 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(assert (<= var2122 var2839)) ; Cond: i2 <= $i5 
(assert true)
(define-const var3968 String (append/672562846 var3790!1 var1757)) ; Statement: $r4 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3790!2 String)
(assert (= var3790!2 (str.++ var3790!1 var1757)))
(assert true)
(define-const var3612 String (toString/-2075883882 var3968)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDefaultOutputDirectory/-275374595=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3601=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree, var1698=r1, var1757=r3, var3888=null_type, var3790=$r6, var3048=r2, var1444=i1, var2122=i2, var2839=$i5, var3968=$r4, var3612=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree=var3601, r1=var1698, r3=var1757, null_type=var3888, $r6=var3790, r2=var3048, i1=var1444, i2=var2122, $i5=var2839, $r4=var3968, $r5=var3612}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree;	r3 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javacc.JJTree: java.lang.String getDefaultOutputDirectory()>();	i1 = virtualinvoke r2.<java.lang.String: int indexOf(int)>(47);	i2 = i1 + 1;	$i5 = (int) -1;	if i2 <= $i5 goto $r4 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3