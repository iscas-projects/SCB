(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var313 0)
(declare-sort var790 0)
(declare-sort var1642 0)
(declare-sort var1145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var1145) String)
(declare-fun cast-from-var1642-to-var1145 (var1642) var1145)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var1642 String) void)
(declare-fun cast-from-var313-to-var1642 (var313) var1642)
(declare-const null-var313 var313)
(declare-const null-String String)
(declare-const null-var1642 var1642)
(declare-const var2125 var313) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException 
(assert (not (= var2125 null-var313)))
(declare-const var1174 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1174 null-String)))
(declare-const var1507 var1642) ; Statement: r4 := @parameter1: java.lang.Exception 
(assert (not (= var1507 null-var1642)))
(define-const var1287 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1287)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1287!1 String)
(assert (= var1287!1 ""))
(assert true)
(define-const var3434 String (append/672562846 var1287!1 var1174)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1287!2 String)
(assert (= var1287!2 (str.++ var1287!1 var1174)))
(assert true)
(define-const var2773 String (append/672562846 var3434 " because of ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" because of ") 
(declare-const var3434!1 String)
(assert (= var3434!1 (str.++ var3434 " because of ")))
(assert true)
(define-const var2116 String (toString/-1112415476 (cast-from-var1642-to-var1145 var1507))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var2621 String (append/672562846 var2773 var2116)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2773!1 String)
(assert (= var2773!1 (str.++ var2773 var2116)))
(assert true)
(define-const var2395 String (toString/-2075883882 var2621)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var313-to-var1642 var2125) var2395)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var2125!1 var313)
(declare-const var2395!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1642-to-var1145=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var313-to-var1642=([org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException], java.lang.Exception)}
; {var313=org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException, var2125=r0, var1174=r2, var790=null_type, var1642=java.lang.Exception, var1507=r4, var1287=$r1, var3434=$r3, var2773=$r6, var1145=java.lang.Throwable, var2116=$r5, var2621=$r7, var2395=$r8}
; {org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException=var313, r0=var2125, r2=var1174, null_type=var790, java.lang.Exception=var1642, r4=var1507, $r1=var1287, $r3=var3434, $r6=var2773, java.lang.Throwable=var1145, $r5=var2116, $r7=var2621, $r8=var2395}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.rmi.ObjectNotFoundException;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" because of ");	$r5 = virtualinvoke r4.<java.lang.Exception: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8);	return
;block_num 1