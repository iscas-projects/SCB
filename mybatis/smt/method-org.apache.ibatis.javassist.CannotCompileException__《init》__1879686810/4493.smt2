(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var677 0)
(declare-sort var618 0)
(declare-sort var2915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2915) String)
(declare-fun cast-from-var618-to-var2915 (var618) var2915)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-480142003 (var677 String var2915) void)
(declare-const null-var677 var677)
(declare-const null-var618 var618)
(declare-const var300 var677) ; Statement: r0 := @this: org.apache.ibatis.javassist.CannotCompileException 
(assert (not (= var300 null-var677)))
(declare-const var512 var618) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.NotFoundException 
(assert (not (= var512 null-var618)))
(define-const var1914 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1914)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1914!1 String)
(assert (= var1914!1 ""))
(assert true)
(define-const var2821 String (append/672562846 var1914!1 "cannot find ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find ") 
(declare-const var1914!2 String)
(assert (= var1914!2 (str.++ var1914!1 "cannot find ")))
(assert true)
(define-const var2201 String (getMessage/849299655 (cast-from-var618-to-var2915 var512))) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var1693 String (append/672562846 var2821 var2201)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2821!1 String)
(assert (= var2821!1 (str.++ var2821 var2201)))
(assert true)
(define-const var2533 String (toString/-2075883882 var1693)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-480142003 var300 var2533 (cast-from-var618-to-var2915 var512))) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r2) 

(declare-const var300!1 var677)
(declare-const var2533!1 String)
(declare-const var512!1 var618)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var618-to-var2915=([org.apache.ibatis.javassist.NotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-480142003=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String, java.lang.Throwable], void)}
; {var677=org.apache.ibatis.javassist.CannotCompileException, var300=r0, var618=org.apache.ibatis.javassist.NotFoundException, var512=r2, var1914=$r1, var2821=$r4, var2915=java.lang.Throwable, var2201=$r3, var1693=$r5, var2533=$r6}
; {org.apache.ibatis.javassist.CannotCompileException=var677, r0=var300, org.apache.ibatis.javassist.NotFoundException=var618, r2=var512, $r1=var1914, $r4=var2821, java.lang.Throwable=var2915, $r3=var2201, $r5=var1693, $r6=var2533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CannotCompileException;	r2 := @parameter0: org.apache.ibatis.javassist.NotFoundException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r2);	return
;block_num 1