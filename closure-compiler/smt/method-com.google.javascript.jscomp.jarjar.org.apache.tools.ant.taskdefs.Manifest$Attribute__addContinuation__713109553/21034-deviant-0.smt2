(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2328 0)
(declare-sort var2703 0)
(declare-sort var3364 0)
(declare-sort var573 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun values/146580643 (var2328) var3364)
(declare-fun currentIndex/146580643 (var2328) Int)
(declare-fun elementAt/1085606243 (var3364 Int) var573)
(declare-fun cast-from-var573-to-String (var573) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/-921508948 (var2328 String) void)
(declare-const null-var2328 var2328)
(declare-const null-String String)
(declare-const var2311 var2328) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute 
(assert (not (= var2311 null-var2328)))
(declare-const var3866 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3866 null-String)))
(define-const var2617 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2617)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2617!1 String)
(assert (= var2617!1 ""))
(define-const var1912 var3364 (values/146580643 var2311)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values> 
(define-const var1998 Int (currentIndex/146580643 var2311)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: int currentIndex> 
(assert true)
(define-const var1480 var573 (elementAt/1085606243 var1912 var1998)) ; Statement: $r3 = virtualinvoke $r2.<java.util.Vector: java.lang.Object elementAt(int)>($i0) 
(define-const var1441 String (cast-from-var573-to-String var1480)) ; Statement: $r4 = (java.lang.String) $r3 
(assert true)
(define-const var408 String (append/672562846 var2617!1 var1441)) ; Statement: $r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2617!2 String)
(assert (= var2617!2 (str.++ var2617!1 var1441)))
(assert (not (and true (and (>= 1 0) (>= (str.len var3866) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), values/146580643=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], java.util.Vector), currentIndex/146580643=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute], int), elementAt/1085606243=([java.util.Vector, int], java.lang.Object), cast-from-var573-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/-921508948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, java.lang.String], void)}
; {var2328=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var2311=r0, var3866=r5, var2703=null_type, var2617=$r1, var3364=java.util.Vector, var1912=$r2, var1998=$i0, var573=java.lang.Object, var1480=$r3, var1441=$r4, var408=$r7, var3954=$r6, var2423=$r8, var1664=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var2328, r0=var2311, r5=var3866, null_type=var2703, $r1=var2617, java.util.Vector=var3364, $r2=var1912, $i0=var1998, java.lang.Object=var573, $r3=var1480, $r4=var1441, $r7=var408, $r6=var3954, $r8=var2423, $r9=var1664}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute;	r5 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: java.util.Vector values>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: int currentIndex>;	$r3 = virtualinvoke $r2.<java.util.Vector: java.lang.Object elementAt(int)>($i0);	$r4 = (java.lang.String) $r3;	$r7 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int)>(1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute: void setValue(java.lang.String)>($r9);	return
;block_num 1