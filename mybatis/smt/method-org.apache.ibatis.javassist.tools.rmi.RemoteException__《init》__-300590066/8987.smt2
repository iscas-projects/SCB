(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2144 0)
(declare-sort var1277 0)
(declare-sort var1453 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var1453) String)
(declare-fun cast-from-var1277-to-var1453 (var1277) var1453)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3014 String) void)
(declare-fun cast-from-var2144-to-var3014 (var2144) var3014)
(declare-const null-var2144 var2144)
(declare-const null-var1277 var1277)
(declare-const var1119 var2144) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.rmi.RemoteException 
(assert (not (= var1119 null-var2144)))
(declare-const var857 var1277) ; Statement: r2 := @parameter0: java.lang.Exception 
(assert (not (= var857 null-var1277)))
(define-const var2484 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2484)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2484!1 String)
(assert (= var2484!1 ""))
(assert true)
(define-const var3309 String (append/672562846 var2484!1 "by ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ") 
(declare-const var2484!2 String)
(assert (= var2484!2 (str.++ var2484!1 "by ")))
(assert true)
(define-const var3094 String (toString/-1112415476 (cast-from-var1277-to-var1453 var857))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3001 String (append/672562846 var3309 var3094)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3309!1 String)
(assert (= var3309!1 (str.++ var3309 var3094)))
(assert true)
(define-const var2327 String (toString/-2075883882 var3001)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var2144-to-var3014 var1119) var2327)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var1119!1 var2144)
(declare-const var2327!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1277-to-var1453=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var2144-to-var3014=([org.apache.ibatis.javassist.tools.rmi.RemoteException], java.lang.RuntimeException)}
; {var2144=org.apache.ibatis.javassist.tools.rmi.RemoteException, var1119=r0, var1277=java.lang.Exception, var857=r2, var2484=$r1, var3309=$r4, var1453=java.lang.Throwable, var3094=$r3, var3001=$r5, var2327=$r6, var3014=java.lang.RuntimeException}
; {org.apache.ibatis.javassist.tools.rmi.RemoteException=var2144, r0=var1119, java.lang.Exception=var1277, r2=var857, $r1=var2484, $r4=var3309, java.lang.Throwable=var1453, $r3=var3094, $r5=var3001, $r6=var2327, java.lang.RuntimeException=var3014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.rmi.RemoteException;	r2 := @parameter0: java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("by ");	$r3 = virtualinvoke r2.<java.lang.Exception: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	return
;block_num 1