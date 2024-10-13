(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2133 0)
(declare-sort var777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var777) void)
(declare-fun cast-from-var2133-to-var777 (var2133) var777)
(declare-fun PREFIX/1664771055 (var2133) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun PREFIX_LEN/1664771055 (var2133) Int)
(declare-const null-var2133 var2133)
(declare-const var3717 var2133) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1 
(assert (not (= var3717 null-var2133)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2133-to-var777 var3717))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3717!1 var2133)
(declare-const var3717!2 var2133)
(assert (not (= var3717!2 null-var2133)))
(assert (= (PREFIX/1664771055 var3717!2) "toString:")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1: java.lang.String PREFIX> = "toString:" 
(define-const var2669 String "toString:") ; Statement: $r1 = "toString:" 
(assert true)
(define-const var3876 Int (length/-134980193 var2669)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(declare-const var3717!3 var2133)
(assert (not (= var3717!3 null-var2133)))
(assert (= (PREFIX_LEN/1664771055 var3717!3) var3876)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1: int PREFIX_LEN> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2133-to-var777=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1], java.lang.Object), PREFIX/1664771055=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1], java.lang.String), length/-134980193=([java.lang.String], int), PREFIX_LEN/1664771055=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1], int)}
; {var2133=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1, var3717=r0, var777=java.lang.Object, var2669=$r1, var3876=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1=var2133, r0=var3717, java.lang.Object=var777, $r1=var2669, $i0=var3876}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1: java.lang.String PREFIX> = "toString:";	$r1 = "toString:";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1: int PREFIX_LEN> = $i0;	return
;block_num 1