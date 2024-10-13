(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1934 0)
(declare-sort var174 0)
(declare-sort var2641 0)
(declare-sort var3644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2641-init () var2641)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var2641 String Int) void)
(declare-fun initCause/2003336360 (var3644 var3644) var3644)
(declare-fun cast-from-var2641-to-var3644 (var2641) var3644)
(declare-fun cast-from-var174-to-var3644 (var174) var3644)
(declare-const null-String String)
(declare-const null-var174 var174)
(declare-const var3919 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3919 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1336 var174) ; Statement: $r2 := @caughtexception 
(assert (not (= var1336 null-var174)))
(define-const var3863 var2641 var2641-init) ; Statement: $r3 = new java.text.ParseException 
(define-const var974 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var974)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var974!1 String)
(assert (= var974!1 ""))
(assert true)
(define-const var2712 String (append/672562846 var974!1 "Invalid host specifier: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid host specifier: ") 
(declare-const var974!2 String)
(assert (= var974!2 (str.++ var974!1 "Invalid host specifier: ")))
(assert true)
(define-const var633 String (append/672562846 var2712 var3919)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 var3919)))
(assert true)
(define-const var1230 String (toString/-2075883882 var633)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var3863 var1230 0)) ; Statement: specialinvoke $r3.<java.text.ParseException: void <init>(java.lang.String,int)>($r7, 0) 

(declare-const var3863!1 var2641)
(declare-const var1230!1 String)
(declare-const var3519 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2641-to-var3644 var3863!1) (cast-from-var174-to-var3644 var1336))) ; Statement: virtualinvoke $r3.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>($r2) 

(declare-const var3863!2 var2641)
(declare-const var1336!1 var174)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2641-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2641-to-var3644=([java.text.ParseException], java.lang.Throwable), cast-from-var174-to-var3644=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var3919=r0, var1934=null_type, var174=java.lang.IllegalArgumentException, var1336=$r2, var2641=java.text.ParseException, var3863=$r3, var974=$r4, var2712=$r5, var633=$r6, var1230=$r7, var3519=0, var3644=java.lang.Throwable}
; {r0=var3919, null_type=var1934, java.lang.IllegalArgumentException=var174, $r2=var1336, java.text.ParseException=var2641, $r3=var3863, $r4=var974, $r5=var2712, $r6=var633, $r7=var1230, 0=var3519, java.lang.Throwable=var3644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 := @caughtexception;	$r3 = new java.text.ParseException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid host specifier: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.text.ParseException: void <init>(java.lang.String,int)>($r7, 0);	virtualinvoke $r3.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>($r2);	throw $r3
;block_num 2