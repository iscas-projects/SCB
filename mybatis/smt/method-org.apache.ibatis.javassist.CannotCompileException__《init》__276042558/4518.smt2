(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1468 0)
(declare-sort var1014 0)
(declare-sort var2825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/-722800073 (var1014) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-480142003 (var1468 String var2825) void)
(declare-fun cast-from-var1014-to-var2825 (var1014) var2825)
(declare-const null-var1468 var1468)
(declare-const null-var1014 var1014)
(declare-const var1630 var1468) ; Statement: r0 := @this: org.apache.ibatis.javassist.CannotCompileException 
(assert (not (= var1630 null-var1468)))
(declare-const var1215 var1014) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.compiler.CompileError 
(assert (not (= var1215 null-var1014)))
(define-const var524 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var524)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var524!1 String)
(assert (= var524!1 ""))
(assert true)
(define-const var3829 String (append/672562846 var524!1 "[source error] ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[source error] ") 
(declare-const var524!2 String)
(assert (= var524!2 (str.++ var524!1 "[source error] ")))
(assert true)
(define-const var2404 String (getMessage/-722800073 var1215)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.CompileError: java.lang.String getMessage()>() 
(assert true)
(define-const var2957 String (append/672562846 var3829 var2404)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 var2404)))
(assert true)
(define-const var2423 String (toString/-2075883882 var2957)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-480142003 var1630 var2423 (cast-from-var1014-to-var2825 var1215))) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r2) 

(declare-const var1630!1 var1468)
(declare-const var2423!1 String)
(declare-const var1215!1 var1014)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/-722800073=([org.apache.ibatis.javassist.compiler.CompileError], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-480142003=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String, java.lang.Throwable], void), cast-from-var1014-to-var2825=([org.apache.ibatis.javassist.compiler.CompileError], java.lang.Throwable)}
; {var1468=org.apache.ibatis.javassist.CannotCompileException, var1630=r0, var1014=org.apache.ibatis.javassist.compiler.CompileError, var1215=r2, var524=$r1, var3829=$r4, var2404=$r3, var2957=$r5, var2423=$r6, var2825=java.lang.Throwable}
; {org.apache.ibatis.javassist.CannotCompileException=var1468, r0=var1630, org.apache.ibatis.javassist.compiler.CompileError=var1014, r2=var1215, $r1=var524, $r4=var3829, $r3=var2404, $r5=var2957, $r6=var2423, java.lang.Throwable=var2825}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CannotCompileException;	r2 := @parameter0: org.apache.ibatis.javassist.compiler.CompileError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[source error] ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.CompileError: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r2);	return
;block_num 1