(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3309 0)
(declare-sort var2126 0)
(declare-sort var209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var209) String)
(declare-fun cast-from-var2126-to-var209 (var2126) var209)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var2126 String) void)
(declare-fun cast-from-var3309-to-var2126 (var3309) var2126)
(declare-const null-var3309 var3309)
(declare-const null-var2126 var2126)
(declare-const var1654 var3309) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotCreateException 
(assert (not (= var1654 null-var3309)))
(declare-const var2154 var2126) ; Statement: r2 := @parameter0: java.lang.Exception 
(assert (not (= var2154 null-var2126)))
(define-const var1966 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1966)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1966!1 String)
(assert (= var1966!1 ""))
(assert true)
(define-const var394 String (append/672562846 var1966!1 "by ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ") 
(declare-const var1966!2 String)
(assert (= var1966!2 (str.++ var1966!1 "by ")))
(assert true)
(define-const var3648 String (toString/-1112415476 (cast-from-var2126-to-var209 var2154))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3735 String (append/672562846 var394 var3648)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var394!1 String)
(assert (= var394!1 (str.++ var394 var3648)))
(assert true)
(define-const var3545 String (toString/-2075883882 var3735)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var3309-to-var2126 var1654) var3545)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6) 

(declare-const var1654!1 var3309)
(declare-const var3545!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var2126-to-var209=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var3309-to-var2126=([org.apache.ibatis.javassist.tools.reflect.CannotCreateException], java.lang.Exception)}
; {var3309=org.apache.ibatis.javassist.tools.reflect.CannotCreateException, var1654=r0, var2126=java.lang.Exception, var2154=r2, var1966=$r1, var394=$r4, var209=java.lang.Throwable, var3648=$r3, var3735=$r5, var3545=$r6}
; {org.apache.ibatis.javassist.tools.reflect.CannotCreateException=var3309, r0=var1654, java.lang.Exception=var2126, r2=var2154, $r1=var1966, $r4=var394, java.lang.Throwable=var209, $r3=var3648, $r5=var3735, $r6=var3545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.CannotCreateException;	r2 := @parameter0: java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ");	$r3 = virtualinvoke r2.<java.lang.Exception: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6);	return
;block_num 1