(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2671 0)
(declare-sort var3181 0)
(declare-sort var2987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexOfValue/883034975 (var2671 String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2987-init () var2987)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2987 String) void)
(declare-const null-var2671 var2671)
(declare-const null-String String)
(declare-const var567 var2671) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute 
(assert (not (= var567 null-var2671)))
(declare-const var1513 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1513 null-String)))
(assert true)
(define-const var3426 Int (indexOfValue/883034975 var567 var1513)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int indexOfValue(java.lang.String)>(r1) 
(define-const var3198 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int index> = i0 
(assert (not (not (= var3426 var3198)))) ; Negate: Cond: i0 != $i2  
(define-const var266 var2987 var2987-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var643 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var643)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var643!1 String)
(assert (= var643!1 ""))
(assert true)
(define-const var3718 String (append/672562846 var643!1 var1513)) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var643!2 String)
(assert (= var643!2 (str.++ var643!1 var1513)))
(assert true)
(define-const var3343 String (append/672562846 var3718 " is not a legal value for this attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a legal value for this attribute") 
(declare-const var3718!1 String)
(assert (= var3718!1 (str.++ var3718 " is not a legal value for this attribute")))
(assert true)
(define-const var2803 String (toString/-2075883882 var3343)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var266 var2803)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var266!1 var2987)
(declare-const var2803!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOfValue/883034975=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, java.lang.String], int), cast-from-Int-to-Int=([int], int), var2987-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2671=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var567=r0, var1513=r1, var3181=null_type, var3426=i0, var3198=$i2, var2987=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var266=$r8, var643=$r7, var3718=$r4, var3343=$r5, var2803=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2671, r0=var567, r1=var1513, null_type=var3181, i0=var3426, $i2=var3198, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2987, $r8=var266, $r7=var643, $r4=var3718, $r5=var3343, $r6=var2803}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute;	r1 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int indexOfValue(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute: int index> = i0;	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a legal value for this attribute");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2