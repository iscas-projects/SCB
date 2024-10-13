(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var33 0)
(declare-sort var1424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1911872951 (var1424 String) void)
(declare-fun cast-from-var33-to-var1424 (var33) var1424)
(declare-fun status/-2107870478 (var33) Int)
(declare-const null-var33 var33)
(declare-const null-Int Int)
(declare-const var2598 var33) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException 
(assert (not (= var2598 null-var33)))
(declare-const var1064 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1064 null-Int)))
(define-const var3181 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3181)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3181!1 String)
(assert (= var3181!1 ""))
(assert true)
(define-const var3985 String (append/672562846 var3181!1 "ExitException: status ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ExitException: status ") 
(declare-const var3181!2 String)
(assert (= var3181!2 (str.++ var3181!1 "ExitException: status ")))
(assert true)
(define-const var2697 String (append/-1001720160 var3985 var1064)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3985!1 String)
(assert (str.prefixof var3985 var3985!1))
(assert true)
(define-const var1228 String (toString/-2075883882 var2697)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1911872951 (cast-from-var33-to-var1424 var2598) var1228)) ; Statement: specialinvoke r0.<java.lang.SecurityException: void <init>(java.lang.String)>($r4) 

(declare-const var2598!1 var33)
(declare-const var1228!1 String)
(declare-const var2598!2 var33)
(assert (not (= var2598!2 null-var33)))
(assert (= (status/-2107870478 var2598!2) var1064)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException: int status> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1911872951=([java.lang.SecurityException, java.lang.String], void), cast-from-var33-to-var1424=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException], java.lang.SecurityException), status/-2107870478=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException], int)}
; {var33=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException, var2598=r0, var1064=i0, var3181=$r1, var3985=$r2, var2697=$r3, var1228=$r4, var1424=java.lang.SecurityException}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException=var33, r0=var2598, i0=var1064, $r1=var3181, $r2=var3985, $r3=var2697, $r4=var1228, java.lang.SecurityException=var1424}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException;	i0 := @parameter0: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ExitException: status ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.SecurityException: void <init>(java.lang.String)>($r4);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ExitException: int status> = i0;	return
;block_num 1