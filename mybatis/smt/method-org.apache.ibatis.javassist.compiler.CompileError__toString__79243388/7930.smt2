(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reason/-1826247972 (var3986) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3986 var3986)
(declare-const var1291 var3986) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.CompileError 
(assert (not (= var1291 null-var3986)))
(define-const var222 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var222)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var222!1 String)
(assert (= var222!1 ""))
(assert true)
(define-const var3289 String (append/672562846 var222!1 "compile error: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("compile error: ") 
(declare-const var222!2 String)
(assert (= var222!2 (str.++ var222!1 "compile error: ")))
(define-const var101 String (reason/-1826247972 var1291)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.CompileError: java.lang.String reason> 
(assert true)
(define-const var2610 String (append/672562846 var3289 var101)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 var101)))
(assert true)
(define-const var3542 String (toString/-2075883882 var2610)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reason/-1826247972=([org.apache.ibatis.javassist.compiler.CompileError], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3986=org.apache.ibatis.javassist.compiler.CompileError, var1291=r1, var222=$r0, var3289=$r3, var101=$r2, var2610=$r4, var3542=$r5}
; {org.apache.ibatis.javassist.compiler.CompileError=var3986, r1=var1291, $r0=var222, $r3=var3289, $r2=var101, $r4=var2610, $r5=var3542}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.CompileError;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("compile error: ");	$r2 = r1.<org.apache.ibatis.javassist.compiler.CompileError: java.lang.String reason>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1