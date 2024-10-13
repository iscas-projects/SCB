(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var948 0)
(declare-sort var1199 0)
(declare-sort var986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var986 String) void)
(declare-fun cast-from-var948-to-var986 (var948) var986)
(declare-const null-var948 var948)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1129 var948) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (not (= var1129 null-var948)))
(declare-const var2484 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2484 null-String)))
(declare-const var2543 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2543 null-String)))
(declare-const var3484 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3484 null-Int)))
(define-const var1223 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1223)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1223!1 String)
(assert (= var1223!1 ""))
(assert true)
(define-const var640 String (append/672562846 var1223!1 "Expression syntax error: Expected a(n) ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expression syntax error: Expected a(n) ") 
(declare-const var1223!2 String)
(assert (= var1223!2 (str.++ var1223!1 "Expression syntax error: Expected a(n) ")))
(assert true)
(define-const var1406 String (append/672562846 var640 var2484)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var640!1 String)
(assert (= var640!1 (str.++ var640 var2484)))
(assert true)
(define-const var43 String (append/672562846 var1406 ", but ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but ") 
(declare-const var1406!1 String)
(assert (= var1406!1 (str.++ var1406 ", but ")))
(assert true)
(define-const var3944 Int (length/-134980193 var2543)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $r20 = "the end of the parsed string was reached." 
(assert (>= var3484 var3944)) ; Cond: i0 >= $i1 
(define-const var2912 String "the end of the parsed string was reached.") ; Statement: $r20 = "the end of the parsed string was reached." 
(assert true) ; Non Conditional
(assert true)
(define-const var3549 String (append/672562846 var43 var2912)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var43!1 String)
(assert (= var43!1 (str.++ var43 var2912)))
(assert true)
(define-const var1260 String (toString/-2075883882 var3549)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var948-to-var986 var1129) var1260)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8) 

(declare-const var1129!1 var948)
(declare-const var1260!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var948-to-var986=([freemarker.core._ObjectBuilderSettingEvaluationException], java.lang.Exception)}
; {var948=freemarker.core._ObjectBuilderSettingEvaluationException, var1129=r0, var2484=r2, var1199=null_type, var2543=r5, var3484=i0, var1223=$r1, var640=$r3, var1406=$r4, var43=$r6, var3944=$i1, var2912=$r20, var3549=$r7, var1260=$r8, var986=java.lang.Exception}
; {freemarker.core._ObjectBuilderSettingEvaluationException=var948, r0=var1129, r2=var2484, null_type=var1199, r5=var2543, i0=var3484, $r1=var1223, $r3=var640, $r4=var1406, $r6=var43, $i1=var3944, $r20=var2912, $r7=var3549, $r8=var1260, java.lang.Exception=var986}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluationException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expression syntax error: Expected a(n) ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but ");	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	if i0 >= $i1 goto $r20 = "the end of the parsed string was reached.";	$r20 = "the end of the parsed string was reached.";	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8);	return
;block_num 3