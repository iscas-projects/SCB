(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort var121 0)
(declare-sort var3321 0)
(declare-sort var1319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var1319) String)
(declare-fun cast-from-var3321-to-var1319 (var3321) var1319)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var3321 String) void)
(declare-fun cast-from-var3881-to-var3321 (var3881) var3321)
(declare-const null-var3881 var3881)
(declare-const null-String String)
(declare-const null-var3321 var3321)
(declare-const var3965 var3881) ; Statement: r0 := @this: org.apache.ibatis.javassist.NotFoundException 
(assert (not (= var3965 null-var3881)))
(declare-const var1943 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1943 null-String)))
(declare-const var1938 var3321) ; Statement: r4 := @parameter1: java.lang.Exception 
(assert (not (= var1938 null-var3321)))
(define-const var1037 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1037)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1037!1 String)
(assert (= var1037!1 ""))
(assert true)
(define-const var460 String (append/672562846 var1037!1 var1943)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1037!2 String)
(assert (= var1037!2 (str.++ var1037!1 var1943)))
(assert true)
(define-const var854 String (append/672562846 var460 " because of ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" because of ") 
(declare-const var460!1 String)
(assert (= var460!1 (str.++ var460 " because of ")))
(assert true)
(define-const var161 String (toString/-1112415476 (cast-from-var3321-to-var1319 var1938))) ; Statement: $r5 = virtualinvoke r4.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3361 String (append/672562846 var854 var161)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var854!1 String)
(assert (= var854!1 (str.++ var854 var161)))
(assert true)
(define-const var2210 String (toString/-2075883882 var3361)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var3881-to-var3321 var3965) var2210)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var3965!1 var3881)
(declare-const var2210!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var3321-to-var1319=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var3881-to-var3321=([org.apache.ibatis.javassist.NotFoundException], java.lang.Exception)}
; {var3881=org.apache.ibatis.javassist.NotFoundException, var3965=r0, var1943=r2, var121=null_type, var3321=java.lang.Exception, var1938=r4, var1037=$r1, var460=$r3, var854=$r6, var1319=java.lang.Throwable, var161=$r5, var3361=$r7, var2210=$r8}
; {org.apache.ibatis.javassist.NotFoundException=var3881, r0=var3965, r2=var1943, null_type=var121, java.lang.Exception=var3321, r4=var1938, $r1=var1037, $r3=var460, $r6=var854, java.lang.Throwable=var1319, $r5=var161, $r7=var3361, $r8=var2210}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.NotFoundException;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Exception;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" because of ");	$r5 = virtualinvoke r4.<java.lang.Exception: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8);	return
;block_num 1