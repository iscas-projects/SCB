(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var440) void)
(declare-fun cast-from-var3792-to-var440 (var3792) var440)
(declare-fun PREFIX/1664771056 (var3792) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun PREFIX_LEN/1664771056 (var3792) Int)
(declare-const null-var3792 var3792)
(declare-const var2861 var3792) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2 
(assert (not (= var2861 null-var3792)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3792-to-var440 var2861))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2861!1 var3792)
(declare-const var2861!2 var3792)
(assert (not (= var2861!2 null-var3792)))
(assert (= (PREFIX/1664771056 var2861!2) "ant.refid:")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2: java.lang.String PREFIX> = "ant.refid:" 
(define-const var335 String "ant.refid:") ; Statement: $r1 = "ant.refid:" 
(assert true)
(define-const var1573 Int (length/-134980193 var335)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(declare-const var2861!3 var3792)
(assert (not (= var2861!3 null-var3792)))
(assert (= (PREFIX_LEN/1664771056 var2861!3) var1573)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2: int PREFIX_LEN> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3792-to-var440=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2], java.lang.Object), PREFIX/1664771056=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2], java.lang.String), length/-134980193=([java.lang.String], int), PREFIX_LEN/1664771056=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2], int)}
; {var3792=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2, var2861=r0, var440=java.lang.Object, var335=$r1, var1573=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2=var3792, r0=var2861, java.lang.Object=var440, $r1=var335, $i0=var1573}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2: java.lang.String PREFIX> = "ant.refid:";	$r1 = "ant.refid:";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2: int PREFIX_LEN> = $i0;	return
;block_num 1