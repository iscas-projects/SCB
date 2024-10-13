(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var3354 0)
(declare-sort var625 0)
(declare-sort var3747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var3354) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var625 String) void)
(declare-fun cast-from-var2301-to-var625 (var2301) var625)
(declare-fun message/-862413977 (var2301) String)
(declare-fun initCause/-1973343595 (var2301 var3354) var3354)
(declare-const null-var2301 var2301)
(declare-const null-var3354 var3354)
(declare-const null-String String)
(declare-const var317 var2301) ; Statement: r0 := @this: org.apache.ibatis.javassist.CannotCompileException 
(assert (not (= var317 null-var2301)))
(declare-const var244 var3354) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var244 null-var3354)))
(define-const var2026 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2026)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2026!1 String)
(assert (= var2026!1 ""))
(assert true)
(define-const var838 String (append/672562846 var2026!1 "by ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ") 
(declare-const var2026!2 String)
(assert (= var2026!2 (str.++ var2026!1 "by ")))
(assert true)
(define-const var3052 String (toString/-1112415476 var244)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Throwable: java.lang.String toString()>() 
(assert true)
(define-const var1725 String (append/672562846 var838 var3052)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var838!1 String)
(assert (= var838!1 (str.++ var838 var3052)))
(assert true)
(define-const var3762 String (toString/-2075883882 var1725)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var2301-to-var625 var317) var3762)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6) 

(declare-const var317!1 var2301)
(declare-const var3762!1 String)
(declare-const var317!2 var2301)
(assert (not (= var317!2 null-var2301)))
(assert (= (message/-862413977 var317!2) null-String)) ; Statement: r0.<org.apache.ibatis.javassist.CannotCompileException: java.lang.String message> = null 
(assert true)
;(assert (initCause/-1973343595 var317!2 var244)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: java.lang.Throwable initCause(java.lang.Throwable)>(r2) 

(declare-const var317!3 var2301)
(declare-const var244!1 var3354)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var2301-to-var625=([org.apache.ibatis.javassist.CannotCompileException], java.lang.Exception), message/-862413977=([org.apache.ibatis.javassist.CannotCompileException], java.lang.String), initCause/-1973343595=([org.apache.ibatis.javassist.CannotCompileException, java.lang.Throwable], java.lang.Throwable)}
; {var2301=org.apache.ibatis.javassist.CannotCompileException, var317=r0, var3354=java.lang.Throwable, var244=r2, var2026=$r1, var838=$r4, var3052=$r3, var1725=$r5, var3762=$r6, var625=java.lang.Exception, var3747=null_type}
; {org.apache.ibatis.javassist.CannotCompileException=var2301, r0=var317, java.lang.Throwable=var3354, r2=var244, $r1=var2026, $r4=var838, $r3=var3052, $r5=var1725, $r6=var3762, java.lang.Exception=var625, null_type=var3747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CannotCompileException;	r2 := @parameter0: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ");	$r3 = virtualinvoke r2.<java.lang.Throwable: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6);	r0.<org.apache.ibatis.javassist.CannotCompileException: java.lang.String message> = null;	virtualinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: java.lang.Throwable initCause(java.lang.Throwable)>(r2);	return
;block_num 1