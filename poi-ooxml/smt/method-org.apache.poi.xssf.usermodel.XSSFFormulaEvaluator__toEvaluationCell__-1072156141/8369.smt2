(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3890 0)
(declare-sort var341 0)
(declare-sort var390 0)
(declare-sort var2297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var390-init () var390)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2297) ClassObject)
(declare-fun cast-from-var341-to-var2297 (var341) var2297)
(declare-fun append/-1031950772 (String var2297) String)
(declare-fun cast-from-ClassObject-to-var2297 (ClassObject) var2297)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var390 String) void)
(declare-const null-var3890 var3890)
(declare-const null-var341 var341)
(declare-const var2554 var3890) ; Statement: r10 := @this: org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator 
(assert (not (= var2554 null-var3890)))
(declare-const var215 var341) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var215 null-var341)))
(define-const var2221 Bool true) ; Statement: $z0 = r0 instanceof org.apache.poi.xssf.usermodel.XSSFCell 
 ; Statement: if $z0 != 0 goto $r1 = new org.apache.poi.xssf.usermodel.XSSFEvaluationCell 
(assert (not (not (= (ite var2221 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3216 var390 var390-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var421 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var421)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var421!1 String)
(assert (= var421!1 ""))
(assert true)
(define-const var3436 String (append/672562846 var421!1 "Unexpected type of cell: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected type of cell: ") 
(declare-const var421!2 String)
(assert (= var421!2 (str.++ var421!1 "Unexpected type of cell: ")))
(assert true)
(define-const var575 ClassObject (getClass/1258963082 (cast-from-var341-to-var2297 var215))) ; Statement: $r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2549 String (append/-1031950772 var3436 (cast-from-ClassObject-to-var2297 var575))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3436!1 String)
(assert (str.prefixof var3436 var3436!1))
(assert true)
(define-const var678 String (append/672562846 var2549 ". Only XSSFCells can be evaluated.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Only XSSFCells can be evaluated.") 
(declare-const var2549!1 String)
(assert (= var2549!1 (str.++ var2549 ". Only XSSFCells can be evaluated.")))
(assert true)
(define-const var1443 String (toString/-2075883882 var678)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3216 var1443)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3216!1 var390)
(declare-const var1443!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var390-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var341-to-var2297=([org.apache.poi.ss.usermodel.Cell], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2297=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3890=org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator, var2554=r10, var341=org.apache.poi.ss.usermodel.Cell, var215=r0, var2221=$z0, var390=java.lang.IllegalArgumentException, var3216=$r3, var421=$r4, var3436=$r6, var2297=java.lang.Object, var575=$r5, var2549=$r7, var678=$r8, var1443=$r9}
; {org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator=var3890, r10=var2554, org.apache.poi.ss.usermodel.Cell=var341, r0=var215, $z0=var2221, java.lang.IllegalArgumentException=var390, $r3=var3216, $r4=var421, $r6=var3436, java.lang.Object=var2297, $r5=var575, $r7=var2549, $r8=var678, $r9=var1443}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$z0 = r0 instanceof org.apache.poi.xssf.usermodel.XSSFCell;	if $z0 != 0 goto $r1 = new org.apache.poi.xssf.usermodel.XSSFEvaluationCell;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected type of cell: ");	$r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Only XSSFCells can be evaluated.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2